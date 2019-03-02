/*   
 *   (c) Copyright 2008 Philipp Skadorov (philipp_s@users.sourceforge.net)
 *
 *   This file is part of FREESECS.
 *
 *   FREESECS is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU Lesser General Public License as published by
 *   the Free Software Foundation, either version 2 of the License, or
 *   (at your option) any later version.
 *
 *   FREESECS is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU Lesser General Public License for more details.
 *
 *   You should have received a copy of the GNU Lesser General Public License
 *   along with FREESECS, see COPYING.
 *   If not, see <http://www.gnu.org/licenses/>.
 */
 #include "config.h"
#include <arpa/inet.h>
#include <libxml/tree.h>
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlsave.h>
#include <libxml/xmlschemas.h>
#include <sstream>
#include <wchar.h>
#include <iconv.h>
#define _LIBXML_ALREADY_INCLUDED
#include "secstwo_internal.hxx"
#include "secstwo_serialize.h"

using namespace freesecs::secstwo;

#define SCHEMA_URI "http:\/\/freesecs.sourceforge.net/xsd/e5"
#define ENCODING "UTF-8"
#define ASSERT_THROW(expr, fmt...)  {if(expr){fprintf(stderr, fmt); throw;}}
#define ASSERT_RETURN(expr, fmt...) {if(expr){fprintf(stderr, fmt); return -1;}}
#define ASSERT_FREE(xml_val)        {if(NULL != xml_val) xmlFree(xml_val);}
#define XMLCHAR_CAST                (xmlChar*)

#define MOVE_TO_NEXT_NODE(pnode) while(pnode && XML_ELEMENT_NODE != pnode->type) {pnode = pnode->next;}

uint64_t ntohll(uint64_t n)
{
#if __BYTE_ORDER == __BIG_ENDIAN
    return n; 
#else
    return ( htonl( (n >> 32) & 0xFFFFFFFF) |
           ((uint64_t) (htonl(n & 0xFFFFFFFF))  << 32));
#endif
};
uint64_t htonll(uint64_t n)
{
#if __BYTE_ORDER == __BIG_ENDIAN
    return n; 
#else
    return ( htonl( (n >> 32) & 0xFFFFFFFF) |
            ((uint64_t) (htonl(n & 0xFFFFFFFF))  << 32));
#endif
};

inline xmlNode* move_to_next(xmlNode *pnode)
{
    while(pnode && XML_ELEMENT_NODE != pnode->type) pnode = pnode->next;

    return pnode && XML_ELEMENT_NODE == pnode->type ? pnode : NULL;
}

template<typename type> type ntoh   (const type& t)     {return t;         }
template<> uint16_t ntoh<uint16_t>  (const uint16_t &t) { return ntohs(t); }
template<> uint32_t ntoh<uint32_t>  (const uint32_t &t) { return ntohl(t); }
template<> int16_t  ntoh<int16_t>   (const int16_t &t)  { return ntohs(t); }
template<> int32_t  ntoh<int32_t>   (const int32_t &t)  { return ntohl(t); }
template<> uint64_t ntoh<uint64_t>  (const uint64_t &t) { return ntohll(t);}
template<> int64_t  ntoh<int64_t>   (const int64_t &t)  { return ntohll(t);}

template<typename type> type hton   (const type& t)     {return t;         }
template<> uint16_t hton<uint16_t>  (const uint16_t &t) { return htons(t); }
template<> uint32_t hton<uint32_t>  (const uint32_t &t) { return htonl(t); }
template<> int16_t  hton<int16_t>   (const int16_t &t)  { return htons(t); }
template<> int32_t  hton<int32_t>   (const int32_t &t)  { return htonl(t); }
template<> uint64_t hton<uint64_t>  (const uint64_t &t) { return htonll(t);}
template<> int64_t  hton<int64_t>   (const int64_t &t)  { return htonll(t);}

binary_deserializer_t::binary_deserializer_t(data_t *begin, data_t *end)
:_begin(begin), _end(end), _data_len(0), _type(e_none_t)
{
    uint8_t *byte_start;
    size_t num_len_bytes, len_bytes;
    size_t ix;
    
    if(begin == end)
    {
        throw;
    }
    else if(NULL == begin)
    {
        throw;
    }
    else if(NULL == end)
    {
        throw;
    }

    _type = (data_type_t) ((*begin >> 2) & 0x3f);

    if(_type > e_none_t)
    {
        throw;
    }

    num_len_bytes = *begin & 0x3;

    if(num_len_bytes > 3)
    {
        throw;
    }

    memcpy(&len_bytes, begin+1, num_len_bytes);
    byte_start = (uint8_t*)(&len_bytes);
    for(ix = 0; ix < num_len_bytes; ++ix)
    {
        _data_len += byte_start[ix] << (num_len_bytes - ix - 1);
    }

    _sod = begin + num_len_bytes + 1;
    _eod = _sod + _data_len;

    if(_eod > end)
    {
        throw;
    }
}

template<typename simple_t> 
pdata_item_t bdeserialize_simple_type(uint8_t *begin, uint8_t *end)
{ 
    typename simple_t::data_t *b, *e, *it;
    typename simple_t::container_t data;

    b = (typename simple_t::data_t*)begin;
    e = (typename simple_t::data_t*)end;

    data.reserve(e - b);

    for(it = b; it < e; ++it)
    {
        data.push_back(ntoh((typename simple_t::data_t)*it));
    }

    simple_t *t = new simple_t("", data);
    return (data_item_t*)t;
};

template<typename st>
pdata_item_t bdeserialize_string_type(uint8_t *begin, uint8_t *end)
{
    return (data_item_t*) new st("", begin, end - begin);
}

pdata_item_t 
binary_deserializer_t::operator()(data_t **next_item)
{
    uint32_t ix;
    data_t *next;
    list_item_t *plist;
    pdata_item_t r;

    typedef pdata_item_t (*bdeserialize_fn)(data_t*, data_t*);
    static bdeserialize_fn dfuncs[e_none_t] = 
    {
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        bdeserialize_simple_type<binary_item_t>,
        bdeserialize_simple_type<bool_item_t>,
        NULL, NULL, NULL, NULL, NULL, NULL,
        bdeserialize_string_type<ascii_item_t>,
        bdeserialize_string_type<jis8_item_t>,
        bdeserialize_string_type<wchar_item_t>,
        NULL, NULL, NULL, NULL, NULL,
        bdeserialize_simple_type<int64_item_t>, 
        bdeserialize_simple_type<int8_item_t>, 
        bdeserialize_simple_type<int16_item_t>, 
        NULL, 
        bdeserialize_simple_type<int32_item_t>,
        NULL, NULL, NULL, 
        bdeserialize_simple_type<double_item_t>, 
        NULL, NULL, NULL,
        bdeserialize_simple_type<float_item_t>, 
        NULL, NULL, NULL, 
        bdeserialize_simple_type<uint64_item_t>, 
        bdeserialize_simple_type<uint8_item_t>, 
        bdeserialize_simple_type<uint16_item_t>,
        NULL, 
        bdeserialize_simple_type<uint32_item_t>
    };

    if(e_list_t == _type)
    {
        plist = new list_item_t("");
        next = _sod;
        for(ix = 0; ix < _data_len; ++ix)
        {
            binary_deserializer_t d(next, _end);
            plist->_data.push_back(d(&next));
        }
        r = plist;
    }
    else
    {
        r = dfuncs[_type](_sod, _eod);
        next = _eod;
    }
    
    if(next_item)
    {
        *next_item = next;
    }
    return r;
}

//TODO: for wchar and jis: convert to unicode with iconv!!!
template<data_type_t type>
void bserialize_simple_type(pdata_item_t pit,
                            binary_serializer_t::data_container_t &raw_data_container)
{
    msg_item_impl_t<type> *pimpl                = (msg_item_impl_t<type>*)pit.get();
    size_t raw_data_size                        = pimpl->size();
    binary_serializer_t::data_container_t::value_type *data_begin =
    (binary_serializer_t::data_container_t::value_type *)&pimpl->container()[0];
    binary_serializer_t::data_container_t::value_type *data_end   = 
    (binary_serializer_t::data_container_t::value_type *)(data_begin) + raw_data_size;

    raw_data_container.insert(raw_data_container.end(), data_begin, data_end);
}

template<>
void bserialize_simple_type<e_ascii_t>(pdata_item_t pit,
                            binary_serializer_t::data_container_t &raw_data_container)
{
    string_data_item_t<e_ascii_t> *pstr_item    = (string_data_item_t<e_ascii_t>*)pit.get();
    size_t raw_data_size                       = pstr_item->size();

    binary_serializer_t::data_container_t::value_type *data_begin =
    (binary_serializer_t::data_container_t::value_type *)pstr_item->_data.c_str();
    binary_serializer_t::data_container_t::value_type *data_end   = data_begin + raw_data_size;

    raw_data_container.insert(raw_data_container.end(), data_begin, data_end);
}

template<>
void bserialize_simple_type<e_wchar_t>(pdata_item_t pit,
                            binary_serializer_t::data_container_t &raw_data_container)
{
    string_data_item_t<e_wchar_t> *pstr_item    = (string_data_item_t<e_wchar_t>*)pit.get();
    size_t raw_data_size                       = pstr_item->size();
    size_t in_strlen                           = raw_data_size;
    size_t out_strlen                          = in_strlen;
    size_t converted;
    const char *pstr                                 = pstr_item->_data.c_str();

    iconv_t icd = iconv_open("WCHAR_T", "UTF-8");

    if((iconv_t)-1 == icd)
    {
        throw;
    }

    wchar_t *out_str = new wchar_t[out_strlen];
    wchar_t *out_ptr = out_str;
    memset(out_str, 0, out_strlen*sizeof(wchar_t));

    while(out_strlen && in_strlen)
    {
#if defined(HAVE_CONST_IBUF_IN_ICONV)
        converted = iconv(icd, (const char**)&pstr, &in_strlen, (char**)&out_ptr, &out_strlen);
#else
	converted = iconv(icd, (char**)&pstr, &in_strlen, (char**)&out_ptr, &out_strlen);
#endif
        if(-1 == (int)converted)
        {
            delete out_str;
            throw;
        }
    }
    iconv_close(icd);

    size_t actual_size = wcslen(out_str)*sizeof(wchar_t);

    binary_serializer_t::data_container_t::value_type *data_begin =
    (binary_serializer_t::data_container_t::value_type *)out_str;
    binary_serializer_t::data_container_t::value_type *data_end   = (unsigned char*)&out_str[0] + actual_size;

    raw_data_container.insert(raw_data_container.end(), data_begin, data_end);
    delete out_str;
}

typedef void (*bserialize_fn)(pdata_item_t, binary_serializer_t::data_container_t&);
static bserialize_fn sfuncs[e_none_t] = 
{
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    bserialize_simple_type<e_binary_t>,
    bserialize_simple_type<e_boolean_t>,
    NULL, NULL, NULL, NULL, NULL, NULL,
    bserialize_simple_type<e_ascii_t>,
    bserialize_simple_type<e_wchar_t>,//jis8:use the same algo as wchar
    bserialize_simple_type<e_wchar_t>,
    NULL, NULL, NULL, NULL, NULL,
    bserialize_simple_type<e_int64_t>, 
    bserialize_simple_type<e_int8_t>, 
    bserialize_simple_type<e_int16_t>, 
    NULL, 
    bserialize_simple_type<e_int32_t>,
    NULL, NULL, NULL, 
    bserialize_simple_type<e_double_t>, 
    NULL, NULL, NULL,
    bserialize_simple_type<e_float_t>, 
    NULL, NULL, NULL, 
    bserialize_simple_type<e_uint64_t>, 
    bserialize_simple_type<e_uint8_t>, 
    bserialize_simple_type<e_uint16_t>,
    NULL, 
    bserialize_simple_type<e_uint32_t>
};

binary_serializer_t::binary_serializer_t(pdata_item_t pit)
:_pitem(pit)
{
    uint64_t len_bytes = pit->size();
    uint8_t num_len_bytes = 1 + (len_bytes & 0x0000ff00 ? 1 : 0) 
                              + (len_bytes & 0x00ff0000 ? 1 : 0)
                              + (len_bytes & 0xff000000 ? 1 : 0);


    _raw_data.reserve(1 + num_len_bytes + pit->raw_size());
    _raw_data.resize(1 + num_len_bytes);

    _raw_data[0] = 0;
    _raw_data[0] |= num_len_bytes & 0x3;
    _raw_data[0] |= (uint8_t)(pit->type() << 2) & 0xfc;

    for(int i = 0; i < num_len_bytes; ++i)
    {
        _raw_data[i+1] = (uint8_t)((len_bytes >> (num_len_bytes - i - 1)) & 0xff);
    }

    if(e_list_t == pit->type())
    {
        list_item_t *plist = (list_item_t*)pit.get();
        list_item_t::container_t::const_iterator it;
        for(it = plist->_data.begin(); it < plist->_data.end(); ++it)
        {
            binary_serializer_t bs(*it);
            _raw_data.insert(_raw_data.end(), bs.begin(), bs.end());
        }
    }
    else
    {
        sfuncs[pit->type()](pit, _raw_data);
    }
}

binary_serializer_t::data_container_t::const_iterator 
binary_serializer_t::begin()    const
{
    return _raw_data.begin();
}

binary_serializer_t::data_container_t::const_iterator 
binary_serializer_t::end()      const
{
    return _raw_data.end();
}

binary_serializer_t::operator
const binary_serializer_t::data_container_t&()
{

    return _raw_data;
}

static const char *type2str[46] = {
    "list",         //0
    NULL,           //1
    NULL,           //2
    NULL,           //3
    NULL,           //4
    NULL,           //5
    NULL,           //6
    NULL,           //7
    "binary",       //8
    "boolean",      //9
    NULL,           //a
    NULL,           //b
    NULL,           //c
    NULL,           //d
    NULL,           //e
    NULL,           //f
    "ascii",        //10
    "jis8",         //11
    "unicode",      //12
    NULL,           //13
    NULL,           //14
    NULL,           //15
    NULL,           //16
    NULL,           //17
    "int64",        //18
    "int8",         //19
    "int16",        //1a
    NULL,           //1b
    "int32",        //1c
    NULL,           //1d
    NULL,           //1e
    NULL,           //1f
    "double",       //20
    NULL,           //21
    NULL,           //22
    NULL,           //23
    "float",        //24
    NULL,           //25
    NULL,           //26
    NULL,           //27
    "uint64",       //28
    "uint8",        //29
    "uint16",       //2a
    NULL,           //2b
    "uint32",       //2c
    "****none****"  //2d
};

template<typename t>
int xml_serialize_simple_type(pdata_item_t pit, xmlTextWriter* pwriter)
{   
    std::ostringstream os;
    t *p_impl = (t*)pit.get();

    for(typename t::container_t::const_iterator it = p_impl->container().begin(); 
            it != p_impl->container().end(); ++it)
    {
        os << (typename t::print_t)*it;

        if(it != p_impl->container().end()-1)
        {
            os << " ";
        }
    }
    os.flush();

    //return xmlTextWriterWriteFormatString(pwriter, "%s", XMLCHAR_CAST os.str().c_str());
    return xmlTextWriterWriteString(pwriter, XMLCHAR_CAST os.str().c_str());
}

template<typename t>
int xml_serialize_string_type(pdata_item_t pit, xmlTextWriter* pwriter)
{
    int rc;
    t *str_item = (t*) pit.get();

    xmlChar *xml_str = XMLCHAR_CAST str_item->_data.c_str();

    //rc = xmlTextWriterWriteFormatString(pwriter, "%s", xml_str);
    rc = xmlTextWriterWriteString(pwriter, xml_str);

    return rc;
}

typedef int (*xserialize_fn)(pdata_item_t, xmlTextWriter*);

static xserialize_fn xfuncs[e_none_t] = 
{
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    xml_serialize_simple_type<binary_item_t>,
    xml_serialize_simple_type<bool_item_t>,
    NULL, NULL, NULL, NULL, NULL, NULL,
    xml_serialize_string_type<ascii_item_t>,
    xml_serialize_string_type<jis8_item_t>,
    xml_serialize_string_type<wchar_item_t>,
    NULL, NULL, NULL, NULL, NULL,
    xml_serialize_simple_type<int64_item_t>, 
    xml_serialize_simple_type<int8_item_t>, 
    xml_serialize_simple_type<int16_item_t>, 
    NULL, 
    xml_serialize_simple_type<int32_item_t>,
    NULL, NULL, NULL, 
    xml_serialize_simple_type<double_item_t>, 
    NULL, NULL, NULL,
    xml_serialize_simple_type<float_item_t>, 
    NULL, NULL, NULL, 
    xml_serialize_simple_type<uint64_item_t>, 
    xml_serialize_simple_type<uint8_item_t>, 
    xml_serialize_simple_type<uint16_item_t>,
    NULL, 
    xml_serialize_simple_type<uint32_item_t>
};

void
xml_serializer_t::serialize(pdata_item_t pit, xmlTextWriter* pwriter)
{
    int rc;

    rc = xmlTextWriterStartElement(pwriter, XMLCHAR_CAST type2str[pit->type()]);
    ASSERT_THROW(rc < 0, "Error at xmlTextWriterStartElement\n");

    if(pit->name() && strlen(pit->name()))
    {
        rc = xmlTextWriterWriteAttribute(pwriter, XMLCHAR_CAST "name", XMLCHAR_CAST pit->name());
        ASSERT_THROW(rc < 0, "Error at xmlWriterWriteAttribute\n");
    }

    if(e_list_t == pit->type())
    {
        list_item_t *plist= (list_item_t*)pit.get();
        msg_item_impl_t<e_list_t>::container_t::const_iterator it;

        if(plist->variable())
        {
            rc = xmlTextWriterWriteAttribute(pwriter, XMLCHAR_CAST "variable", XMLCHAR_CAST "true");
            ASSERT_THROW(rc < 0, "Error at xmlWriterWriteAttribute\n");
        }

        for(it = plist->_data.begin(); it < plist->_data.end(); ++it)
        {
            xml_serializer_t xs(*it, pwriter);
        }
    }
    else
    {
        xfuncs[pit->type()](pit, pwriter);
    }

    rc = xmlTextWriterEndElement(pwriter);
    ASSERT_THROW(rc < 0, "Error at xmlTextWriterEndElement\n");
}

void
xml_serializer_t::serialize(pmsg_t pmsg, xmlTextWriter* pwriter)
{
    int rc;
    char buf[256];
    xmlChar *xml_str = XMLCHAR_CAST pmsg->name.c_str();

    rc = xmlTextWriterStartElement(pwriter, XMLCHAR_CAST "secsIImsg");
    ASSERT_THROW(rc < 0, "Error at xmlTextWriterStartElement\n");

    rc = xmlTextWriterWriteAttribute(pwriter, XMLCHAR_CAST "name", xml_str);
    ASSERT_THROW(rc < 0, "Error at xmlWriterWriteAttribute\n");

    snprintf(buf, sizeof(buf), "%u", pmsg->sysbytes);

    xml_str = XMLCHAR_CAST buf;

    rc = xmlTextWriterWriteAttribute(pwriter, XMLCHAR_CAST "sysbytes", xml_str);
    ASSERT_THROW(rc < 0, "Error at xmlWriterWriteAttribute\n");

    //stream-->
    rc = xmlTextWriterStartElement(pwriter, XMLCHAR_CAST "stream");
    ASSERT_THROW(rc < 0, "Error at xmlTextWriterStartElement\n");

    snprintf(buf, sizeof(buf), "%u", pmsg->stream);
    //rc = xmlTextWriterWriteFormatString(pwriter, "%s", XMLCHAR_CAST buf);
    rc = xmlTextWriterWriteString(pwriter, XMLCHAR_CAST buf);
    ASSERT_THROW(rc < 0, "Error at xmlTextWriterWriteFormatString\n");
    rc = xmlTextWriterEndElement(pwriter);
    ASSERT_THROW(rc < 0, "Error at xmlTextWriterEndElement\n");
    //stream<--

    //function-->
    rc = xmlTextWriterStartElement(pwriter, XMLCHAR_CAST "function");
    ASSERT_THROW(rc < 0, "Error at xmlTextWriterStartElement\n");

    snprintf(buf, sizeof(buf), "%u", pmsg->function);
    //rc = xmlTextWriterWriteFormatString(pwriter, "%s", XMLCHAR_CAST buf);
    rc = xmlTextWriterWriteString(pwriter, XMLCHAR_CAST buf);
    ASSERT_THROW(rc < 0, "Error at xmlTextWriterWriteFormatString\n");
    rc = xmlTextWriterEndElement(pwriter);
    ASSERT_THROW(rc < 0, "Error at xmlTextWriterEndElement\n");
    //function<--

    //wbit-->
    rc = xmlTextWriterStartElement(pwriter, XMLCHAR_CAST "wbit");
    ASSERT_THROW(rc < 0, "Error at xmlTextWriterStartElement\n");

    //rc = xmlTextWriterWriteFormatString(pwriter, "%s", XMLCHAR_CAST (pmsg->wbit ? "true" : "false"));
    rc = xmlTextWriterWriteString(pwriter, XMLCHAR_CAST (pmsg->wbit ? "true" : "false"));
    ASSERT_THROW(rc < 0, "Error at xmlTextWriterWriteFormatString\n");
    rc = xmlTextWriterEndElement(pwriter);
    ASSERT_THROW(rc < 0, "Error at xmlTextWriterEndElement\n");
    //wbit<--

    serialize(pmsg->_pitem, pwriter);

    rc = xmlTextWriterEndElement(pwriter);
    ASSERT_THROW(rc < 0, "Error at xmlTextWriterEndElement\n");
    
}

xml_serializer_t::xml_serializer_t(pdata_item_t pit, xmlTextWriter* pwriter)
{
    serialize(pit, pwriter);
}

xml_serializer_t::xml_serializer_t(pmsg_t pmsg, xmlTextWriter* pwriter)
{
    serialize(pmsg, pwriter);
}

xml_serializer_t::xml_serializer_t(pdata_item_t pit)
{
    int rc;
    xmlTextWriter   *pwriter;
    xmlDoc          *pdoc;
    xmlBuffer       *pbuf;
    xmlSaveCtxt     *psave_ctx;

    pwriter = xmlNewTextWriterDoc(&pdoc, 0);
    ASSERT_THROW(NULL == pwriter, "Error at xmlNewTextWriterDoc\n");

    rc = xmlTextWriterStartDocument(pwriter, NULL, ENCODING, NULL);
    ASSERT_THROW(rc, "Error at xmlTextWriterStartDocument\n");

    serialize(pit, pwriter);

    rc = xmlTextWriterEndDocument(pwriter);
    ASSERT_THROW(0 >= rc, "Error at xmlTextWriterEndDocument: %d\n", rc);

    pbuf = xmlBufferCreate();
    ASSERT_THROW(0 == pbuf, "Error at xmlBufferCreate\n");

    psave_ctx = xmlSaveToBuffer(pbuf, ENCODING, XML_SAVE_FORMAT | XML_SAVE_NO_EMPTY | XML_SAVE_NO_DECL);
    ASSERT_THROW(NULL == psave_ctx, "Error at xmlSaveToBuffer\n");

    rc = xmlSaveDoc(psave_ctx, pdoc);
    ASSERT_THROW(0 > rc, "Error at xmlSaveDoc: %d\n", rc);

    rc = xmlSaveClose(psave_ctx);
    ASSERT_THROW(0 >= rc, "Error at xmlSaveClose: %d\n", rc);

    _raw_data = data_container_t((const char*)xmlBufferContent(pbuf), xmlBufferLength(pbuf));

    xmlBufferFree(pbuf);

    xmlFreeTextWriter(pwriter);
    xmlFreeDoc(pdoc);
}
xml_serializer_t::xml_serializer_t(pmsg_t pmsg)
{
    int rc;
    xmlTextWriter   *pwriter;
    xmlDoc          *pdoc;
    xmlBuffer       *pbuf;
    xmlSaveCtxt     *psave_ctx;

    pwriter = xmlNewTextWriterDoc(&pdoc, 0);
    ASSERT_THROW(NULL == pwriter, "Error at xmlNewTextWriterDoc\n");

    rc = xmlTextWriterStartDocument(pwriter, NULL, ENCODING, NULL);
    ASSERT_THROW(rc, "Error at xmlTextWriterStartDocument\n");

    serialize(pmsg, pwriter);

    rc = xmlTextWriterEndDocument(pwriter);
    ASSERT_THROW(0 >= rc, "Error at xmlTextWriterEndDocument: %d\n", rc);

    pbuf = xmlBufferCreate();
    ASSERT_THROW(0 == pbuf, "Error at xmlBufferCreate\n");

    psave_ctx = xmlSaveToBuffer(pbuf, ENCODING, XML_SAVE_FORMAT | XML_SAVE_NO_EMPTY | XML_SAVE_NO_DECL);
    ASSERT_THROW(NULL == psave_ctx, "Error at xmlSaveToBuffer\n");

    rc = xmlSaveDoc(psave_ctx, pdoc);
    ASSERT_THROW(0 > rc, "Error at xmlSaveDoc: %d\n", rc);

    rc = xmlSaveClose(psave_ctx);
    ASSERT_THROW(0 >= rc, "Error at xmlSaveClose: %d\n", rc);


    _raw_data = data_container_t((const char*)xmlBufferContent(pbuf), xmlBufferLength(pbuf));


    xmlBufferFree(pbuf);
    xmlFreeTextWriter(pwriter);
    
    xmlFreeDoc(pdoc);
}
xml_serializer_t::~xml_serializer_t()
{
}
const char *
xml_serializer_t::get()
{
    return _raw_data.c_str();
}

int
xml_serializer_t::save_to(xmlSaveCtxt *psave_ctx, const xml_serializer_t::msg_container_t &msg_container)
{
	int rc;
    xmlTextWriter   *pwriter;
    xmlDoc          *pdoc;

    pwriter = xmlNewTextWriterDoc(&pdoc, 0);
    ASSERT_THROW(NULL == pwriter, "Error at xmlNewTextWriterDoc\n");

    rc = xmlTextWriterStartDocument(pwriter, NULL, ENCODING, "yes");
    ASSERT_THROW(rc, "Error at xmlTextWriterStartDocument\n");

    rc = xmlTextWriterStartElement(pwriter, XMLCHAR_CAST "messages");
    ASSERT_THROW(rc < 0, "Error at xmlTextWriterStartElement\n");

    for(std::vector<pmsg_t>::const_iterator it = msg_container.begin(); it != msg_container.end(); ++it)
    {
        xml_serializer_t(*it, pwriter);
    }

    rc = xmlTextWriterEndElement(pwriter);
    ASSERT_THROW(rc < 0, "Error at xmlTextWriterEndElement\n");

    rc = xmlTextWriterEndDocument(pwriter);
    ASSERT_THROW(0 >= rc, "Error at xmlTextWriterEndDocument: %d\n", rc);

	rc = xmlSaveDoc(psave_ctx, pdoc);
    ASSERT_THROW(0 > rc, "Error at xmlSaveDoc: %d\n", rc);

    rc = xmlSaveClose(psave_ctx);
    ASSERT_THROW(0 >= rc, "Error at xmlSaveClose: %d\n", rc);

    xmlFreeTextWriter(pwriter);
    xmlFreeDoc(pdoc);

    return 0;	
}


int 
xml_serializer_t::to_file(int fd, const msg_container_t &msg_container)
{
    xmlSaveCtxt *psave_ctx = xmlSaveToFd(fd, ENCODING, XML_SAVE_FORMAT | XML_SAVE_NO_EMPTY /*| XML_SAVE_NO_DECL*/);
    ASSERT_RETURN(NULL == psave_ctx, "Error at xmlSaveToFd(%d)\n", fd);

    return save_to(psave_ctx, msg_container);
}

int 
xml_serializer_t::to_mem(data_container_t &container, const msg_container_t &msg_container)
{
	int rc =0;

    xmlBufferPtr pbuf = xmlBufferCreate();
    ASSERT_THROW(0 == pbuf, "Error at xmlBufferCreate\n");

    xmlSaveCtxtPtr psave_ctx = xmlSaveToBuffer(pbuf, ENCODING, XML_SAVE_FORMAT | XML_SAVE_NO_EMPTY | XML_SAVE_NO_DECL);
    ASSERT_THROW(NULL == psave_ctx, "Error at xmlSaveToBuffer\n");

    rc = save_to(psave_ctx, msg_container);

	if(!rc)
	{
        size_t buflen = xmlBufferLength(pbuf);
    	char *pmem = new char[buflen];
 		memcpy(pmem, xmlBufferContent(pbuf), buflen);
        pmem[buflen-1] = '\0';
        container = pmem;
        delete[] pmem;
	}

	xmlBufferFree(pbuf);

	return rc;
}

template <data_type_t t, typename pub_t, pub_t convert_fn(const char*)>
static int string_deserialize(xmlNode *pnode, typename type_selector<t>::container_type& cont)
{
    const char *str;
    std::string word;

    if(XML_TEXT_NODE != pnode->children->type ||
        !(str = (const char*)pnode->children->content))
    {
        return -1;
    }

    std::istringstream is(str, std::istringstream::in);

    while(is >> word)
    {
        cont.push_back((typename type_selector<t>::data_type)convert_fn(word.c_str()));
    }

    return 0;
}

template <data_type_t t>
static int
ulonglong_string_deserialize(xmlNode *pnode, typename type_selector<t>::container_type& cont)
{
    const char *str;
    std::string word;

    if(XML_TEXT_NODE != pnode->children->type ||
        !(str = (const char*)pnode->children->content))
    {
        return -1;
    }

    std::istringstream is(str, std::istringstream::in);

    while(is >> word)
    {
        cont.push_back((typename type_selector<t>::data_type)strtoull(word.c_str(), NULL, 0));
    }

    return 0;
    
}

xml_deserializer_t::xml_deserializer_t(xmlNode *pnode)
:_pitem(NULL),_pmsg(NULL)
{
    const char *pname="";
    const char *ptype;

    if(NULL == pnode)
    {
        throw 1;
    }

    if(XML_ELEMENT_NODE != pnode->type)
    {
        throw 1;
    }

    if(NULL != xmlHasProp(pnode, XMLCHAR_CAST "name"))
    {
        pname = (const char*)xmlGetProp(pnode, XMLCHAR_CAST "name");
    }

    ptype = (const char*)pnode->name;

    if(0 == strcmp("secsIImsg",ptype))
    {
        uint8_t stream, function;
        bool wbit;
        uint32_t sysbytes;
        pdata_item_t pitem;

        if(NULL != xmlHasProp(pnode, XMLCHAR_CAST "sysbytes"))
        {
            char *str_sysbytes = (char*)xmlGetProp(pnode, XMLCHAR_CAST "sysbytes");
            sysbytes = atoi(str_sysbytes);
            xmlFree(str_sysbytes);
        }
        else
        {
            sysbytes = 0;
        }

        xmlNode *curr_node = move_to_next(pnode->children);
        if(!curr_node) throw 1;

        ptype = (const char*)curr_node->name;

        if(0 == strcmp("stream", ptype))
        {
            stream = (uint8_t)atoi((const char*)curr_node->children->content);
        }
        else throw 1;
        
        curr_node = move_to_next(curr_node->next);
        if(!curr_node) throw 1;

        ptype = (const char*)curr_node->name;

        if(0 == strcmp("function", ptype))
        {
            function = (uint8_t)atoi((const char*)curr_node->children->content);
        }
        else throw 1;

        curr_node = move_to_next(curr_node->next);
        if(!curr_node) throw 1;

        ptype = (const char*)curr_node->name;

        if(0 == strcmp("wbit", ptype))
        {
            wbit = (bool)atoi((const char*)curr_node->children->content);
            curr_node = move_to_next(curr_node->next);
        }
        else 
        {
            wbit =0;
        }

        if(!curr_node) throw 1;

        ptype = (const char*)curr_node->name;

        bool known_type = false;
        for(unsigned i = 0; i < sizeof(type2str)/sizeof(type2str[0]) && !known_type; ++i)
        {
            if(0 == strcmp(type2str[i], ptype))
            {
                known_type = true;
            }
        }
        
        if(!known_type) throw 1;

        pitem = xml_deserializer_t(curr_node);

        _pmsg = new msg_t(pname, stream, function);
        _pmsg->wbit = wbit;
        _pmsg->sysbytes = sysbytes;
        _pmsg->_pitem = pitem;
    }
    else
    {
        if(0 == strcmp("binary", ptype))
        {
            binary_item_t *pbin = new binary_item_t(pname);
            string_deserialize<e_binary_t, int, atoi>(pnode, pbin->_data);
            _pitem = (data_item_t*) pbin;
        }
        else if(0 == strcmp("boolean", ptype))
        {
            bool_item_t *pbool = new bool_item_t(pname);
            string_deserialize<e_boolean_t, int, atoi>(pnode, pbool->_data);
            _pitem = (data_item_t*) pbool;
        }
        else if(0 == strcmp("ascii", ptype))
        {
            ascii_item_t *pascii = new ascii_item_t(pname);
            if(pnode->children)
            {
                if(XML_TEXT_NODE == pnode->children->type)
                {
                    pascii->_data = (const char*)pnode->children->content;
                }
            }
            _pitem = (data_item_t*) pascii;
        }
        else if(0 == strcmp("jis8", ptype))
        {
            jis8_item_t *pjis8 = new jis8_item_t(pname);
            pjis8->_data = (jis8_item_t::data_t*)pnode->children->content;
            _pitem = (data_item_t*)pjis8;
        }
        else if(0 == strcmp("unicode", ptype))
        {
            wchar_item_t *pwchar = new wchar_item_t(pname);
            pwchar->_data = (wchar_item_t::data_t*)pnode->children->content;
            _pitem = (data_item_t*)pwchar;
        }
        else if(0 == strcmp("int64", ptype))
        {
            int64_item_t *pint64 = new int64_item_t(pname);
            string_deserialize<e_int64_t, long long, atoll>(pnode, pint64->_data);
            _pitem = (data_item_t*) pint64;
        }
        else if(0 == strcmp("int8", ptype))
        {
            int8_item_t *pint8 = new int8_item_t(pname);
            string_deserialize<e_int8_t, int, atoi>(pnode, pint8->_data);
            _pitem = (data_item_t*) pint8;
        }
        else if(0 == strcmp("int16", ptype))
        {
            int16_item_t *pint16 = new int16_item_t(pname);
            string_deserialize<e_int16_t, int, atoi>(pnode, pint16->_data);
            _pitem = (data_item_t*) pint16;
        }
        else if(0 == strcmp("int32", ptype))
        {
            int32_item_t *pint32 = new int32_item_t(pname);
            string_deserialize<e_int32_t, int, atoi>(pnode, pint32->_data);
            _pitem = (data_item_t*) pint32;
        }
        else if(0 == strcmp("double", ptype))
        {
            double_item_t *pdbl = new double_item_t(pname);
            string_deserialize<e_double_t, double, atof>(pnode, pdbl->_data);
            _pitem = (data_item_t*) pdbl;
        }
        else if(0 == strcmp("float", ptype))
        {
            float_item_t *pflt = new float_item_t(pname);
            string_deserialize<e_float_t, double, atof>(pnode, pflt->_data);
            _pitem = (data_item_t*) pflt;
        }
        else if(0 == strcmp("uint64", ptype))
        {
            uint64_item_t *puint64 = new uint64_item_t(pname);
            //string_deserialize<e_uint64_t, long long, atoll>(pnode, puint64->_data);
            ulonglong_string_deserialize<e_uint64_t>(pnode, puint64->_data);
            _pitem = (data_item_t*) puint64;
        }
        else if(0 == strcmp("uint8", ptype))
        {
            uint8_item_t *puint8 = new uint8_item_t(pname);
            string_deserialize<e_uint8_t, int, atoi>(pnode, puint8->_data);
            _pitem = (data_item_t*) puint8;
        }
        else if(0 == strcmp("uint16", ptype))
        {
            uint16_item_t *puint16 = new uint16_item_t(pname);
            string_deserialize<e_uint16_t, int, atoi>(pnode, puint16->_data);
            _pitem = (data_item_t*) puint16;
        }
        else if(0 == strcmp("uint32", ptype))
        {
            uint32_item_t *puint32 = new uint32_item_t(pname);
            //string_deserialize<e_uint32_t, int, atoi>(pnode, puint32->_data);
            ulonglong_string_deserialize<e_uint32_t>(pnode, puint32->_data);
            _pitem = (data_item_t*) puint32;
        }
        else if(0 == strcmp("list", ptype))
        {
            bool variable = false;
            if(NULL != xmlHasProp(pnode, XMLCHAR_CAST "variable"))
            {
                char *str_variable = NULL;

                str_variable = (char*)xmlGetProp(pnode, XMLCHAR_CAST "variable");

                if(0 == strcmp("true", str_variable)) 
                    variable = true;

                xmlFree(str_variable);
            }

            list_item_t *plist = variable ? new var_list_item_t(pname) : new list_item_t(pname);

            for(xmlNode *curr_node = pnode->children; curr_node; curr_node = curr_node->next)
            {
                try
                {
                    pdata_item_t pit = xml_deserializer_t(curr_node);

                    if(plist->variable() && 0 == plist->size())
                    {
                        ((var_list_item_t*)plist)->_template = pit->clone();
                    }

                    plist->_data.push_back(pit);
                }
                catch(...)
                {
                    continue;
                }
            }
            _pitem = (data_item_t*)plist;
        }
    }
    if(pname && strlen(pname))xmlFree((void*)pname);
}

xml_deserializer_t::operator const pdata_item_t&()
{
    return _pitem;
}

xml_deserializer_t::operator const pmsg_t&()
{
    return _pmsg;
}

int 
xml_deserializer_t::read_from(xmlDoc *pdoc, xmlDoc *pschema_doc, msg_container_t &msg_container)
{
    int err = 0;
    xmlSchemaParserCtxtPtr ctxt = NULL;
    xmlSchemaPtr schema = NULL;
    xmlSchemaValidCtxtPtr validator = NULL;

    if(pschema_doc)
    {
        ctxt = xmlSchemaNewDocParserCtxt(pschema_doc);
        if(!ctxt) err = -2;

        schema = xmlSchemaParse(ctxt);
        if(!schema) err = -3;

        validator = xmlSchemaNewValidCtxt(schema);
        if(!validator) err = -4;

        if(xmlSchemaValidateDoc(validator, pdoc)) err = -5;


        if(err)
        {
            if(validator)   xmlSchemaFreeValidCtxt(validator);
            if(schema)      xmlSchemaFree(schema);
            if(ctxt)        xmlSchemaFreeParserCtxt(ctxt);

            return err;
        }
    }

    err = 0;

    xmlNode *pnode = xmlDocGetRootElement(pdoc);

    while(!err && pnode)
    {
        if(XML_ELEMENT_NODE == pnode->type)
        {
            const char *ptype = (const char*)pnode->name;
            if(0 ==strcmp("messages", ptype))
            {
                //pnode = pnode->children->next;
                pnode = pnode->children;
                while(pnode)
                {
                    try
                    {
                        xml_deserializer_t ds(pnode);
                        msg_container.push_back(ds);            
                    }
                    catch(...)
                    {
                        err = -6;
                        break;
                    }
                    pnode = pnode->next;
                }
            }
        }
        else 
            pnode = pnode->next;
    }

    if(validator)   xmlSchemaFreeValidCtxt(validator);
    if(schema)      xmlSchemaFree(schema);
    if(ctxt)        xmlSchemaFreeParserCtxt(ctxt);

	return err;
}

int 
xml_deserializer_t::from_file(int fd, int schema_fd, msg_container_t &msg_container)
{
    int err = 0;
    xmlDocPtr doc = NULL, schema_doc = NULL;

    doc = xmlReadFd(fd, NULL, ENCODING, XML_PARSE_NOBLANKS | XML_PARSE_COMPACT);

    if(0 < schema_fd)
    {
        schema_doc = xmlReadFd(schema_fd, NULL, ENCODING, XML_PARSE_NOBLANKS | XML_PARSE_COMPACT);
        if(!schema_doc) err = -1;
    }

	err = read_from(doc, schema_doc, msg_container);
    
    if(schema_doc)  xmlFreeDoc(schema_doc);
    if(doc)         xmlFreeDoc(doc);

    return err;
}

int 
xml_deserializer_t::from_mem(void *buf, size_t buflen, void *schema_buf, size_t schema_buflen, msg_container_t &msg_container)
{
    int err = 0;
    xmlDocPtr doc = NULL, schema_doc = NULL;

    doc = xmlReadMemory((const char*)buf, buflen, NULL, ENCODING, XML_PARSE_NOBLANKS | XML_PARSE_COMPACT);

    if(!doc) return -1;

    if(NULL != schema_buf && 0 < schema_buflen)
    {
        schema_doc = xmlReadMemory((const char*)schema_buf, schema_buflen, NULL, ENCODING, XML_PARSE_NOBLANKS | XML_PARSE_COMPACT);
        
        if(!schema_doc) return -2;
    }

	err = read_from(doc, schema_doc, msg_container);
    
    if(doc)         xmlFreeDoc(doc);
    if(schema_doc)  xmlFreeDoc(schema_doc);

    return err;
}
