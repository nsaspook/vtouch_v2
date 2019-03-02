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
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

#include <stdlib.h>
#include <wchar.h>
#include <string.h>
#include <libxml/parser.h>
#include <libxml/tree.h>

#include <sstream>
#include <iostream>
#include <string>

#include "binary_msgs.h"
#include "secstwo_serialize.h"

#include "test_defines.h"



static std::stringstream s3f17_contents_str, s14f9_contents_str;
static std::stringstream s3f17_xml_contents, s14f9_xml_contents;
static std::stringstream s3f17_str, s14f9_str;
static std::stringstream s3f17_xml_str, s14f9_xml_str;

const char unicode_item_xml_str[]   = "<unicode name=\"wchar item\">юникодовая строка</unicode>";
const char unicode_item_str[]       = "<WCHAR \'wchar item\' [33] юникодовая строка>";

using namespace freesecs;
using namespace freesecs::secstwo;

pdata_item_t pit1, pit2;
pdata_item_t xml_pit1, xml_pit2;

#include <fstream>

void test_binary_deserializer(void)
{
    try
    {
        binary_deserializer_t bs1(s3f17_data, s3f17_data + sizeof(s3f17_data));
        pit1 = bs1(NULL);
    }
    catch(...)
    {
        TEST_ASSERT(0, "binary deserializer creation");
    }

    try
    {
        binary_deserializer_t bs2(s14f9_data, s14f9_data + sizeof(s14f9_data));
        pit2 = bs2(NULL);
    }
    catch(...)
    {
        TEST_ASSERT(0, "binary deserializer creation");
    }

    TEST_ASSERT(0 != pit1.get(), "deserialized msg itam1 is not null");
    TEST_ASSERT(0 != pit2.get(), "deserialized msg item2 is not null");


    pit1->print(s3f17_contents_str);
    pit2->print(s14f9_contents_str);

    TEST_ASSERT(0 != strlen(s3f17_contents_str.str().c_str()), "s3f17 printout not empty");
    TEST_ASSERT(0 != strlen(s14f9_contents_str.str().c_str()), "s14f9 printout not empty");

    uint16_t i1 = (*pit1)[NUM(0)];
    std::string str1 = (*pit1)[2];
    std::string str2 = (*pit1)[4][4][NUM(0)];
    std::string str3 = (*pit2)[1];
    std::string str4 = (*pit2)[2][1][NUM(0)];
    uint8_t i2 = (*pit2)[2][3][1][NUM(0)][NUM(0)][1][NUM(0)];

    
    TEST_ASSERT_STRINGS_EQUAL("CARRIER_00000001", str1.c_str(), "s3f17 data check 1");
    TEST_ASSERT(1 == i1, "s3f17 data check 2");
    TEST_ASSERT_STRINGS_EQUAL("ContentMap", str2.c_str(), "s3f17 data check 3");

    TEST_ASSERT_STRINGS_EQUAL("ControlJob", str3.c_str(), "s14f9 data check 1");
    TEST_ASSERT_STRINGS_EQUAL("DataCollectionPlan", str4.c_str(), "s14f9 data check 2");
    TEST_ASSERT(1 == i2, "s14f9 data check 3");

}
///////////////////////
void test_binary_serializer(void)
{
    TEST_ASSERT(pit2.get(), "s14f9 msg item valid");

    pit2->print(std::cout);

    binary_serializer_t bs3(pit2);

    binary_serializer_t::data_container_t raw_data = bs3;

    printf("%s<%d>: raw data size %d, expected %d\n",__FUNCTION__,__LINE__,raw_data.size(), sizeof(s14f9_data));

    TEST_ASSERT(raw_data.size() == sizeof(s14f9_data), "binary data size check");

    TEST_ASSERT(0 == memcmp(&raw_data[0], s14f9_data, sizeof(s14f9_data)), "binary data check");
}

//XML (de-)serialization
/////////////////////////
void test_xml_seriaizer(void)
{
    pmsg_t s3f17_msg, s14f9_msg;
    try
    {
        xml_serializer_t xmls1(pit1);
        xml_serializer_t xmls2(pit2);
        s3f17_xml_contents << xmls1.get();
        s14f9_xml_contents << xmls2.get();
    }
    catch(...)
    {
        TEST_ASSERT(0, "xml serializer creation");
    }

    TEST_ASSERT(0 != strlen(s3f17_xml_contents.str().c_str()), "s3f17 xml data contents not empty");
    TEST_ASSERT(0 != strlen(s14f9_xml_contents.str().c_str()), "s14f9 xml data contents not empty");
}
/////////////////////////
void test_xml_deserializer()
{
    std::stringstream s3f17_out, s14f9_out;

    try
    {
        std::string s3f17 = s3f17_xml_contents.str();
        std::string s14f9 = s14f9_xml_contents.str();

        xmlDocPtr doc1 = xmlParseMemory(s3f17.c_str(), strlen(s3f17.c_str()));
        xmlDocPtr doc2 = xmlParseMemory(s14f9.c_str(), strlen(s14f9.c_str()));

        xml_deserializer_t xmlds1(xmlDocGetRootElement(doc1));
        xml_deserializer_t xmlds2(xmlDocGetRootElement(doc2));
        
        xml_pit1 = xmlds1;
        xml_pit2 = xmlds2;

        xmlFreeDoc(doc1);
        xmlFreeDoc(doc2);
    }
    catch(...)
    {
        TEST_ASSERT(0, "xml deserializer creation");
    }

    xml_pit1->print(s3f17_out);
    xml_pit2->print(s14f9_out);

    TEST_ASSERT_STRINGS_EQUAL(s3f17_out.str().c_str(), s3f17_contents_str.str().c_str(), "xml-deserialized s3f17 msg item");
    TEST_ASSERT_STRINGS_EQUAL(s14f9_out.str().c_str(), s14f9_contents_str.str().c_str(), "xml-deserialized s14f9 msg item");
}
/////////////////////////
void test_wchar_to_xml_serialization(void)
{
#if 0
    std::stringstream orig, restored, restored_from_xml;
    pdata_item_t wit, wit1;
    binary_serializer_t::data_container_t wraw_data;
    const wchar_t *wstring = L"юникодовая строка";
    wit = new wchar_item_t("wchar item", wstring);
    try
    {
        binary_serializer_t wbs(wit);
        wraw_data = wbs;
    }
    catch(...)
    {
        TEST_ASSERT(0, "wchar serialization to binary");
    }

    try
    {
        binary_deserializer_t wbds(&wraw_data[0], &wraw_data[0] + wraw_data.size());
        wit1 = wbds(NULL);
    }
    catch(...)
    {
        TEST_ASSERT(0, "wchar deserialization from binary");
    }
    wit->print(orig);
    wit1->print(restored);

    TEST_ASSERT_STRINGS_EQUAL(orig.str(), restored.str(), "wchar orig vs restored matching");

    try
    {
        xml_serializer_t xmlsw(wit);
        TEST_ASSERT_STRINGS_EQUAL(unicode_item_xml_str, xmlsw.get(), "wchar serialization to xml");
    }
    catch(...)
    {
        TEST_ASSERT(0, "wchar xml serializer creation");
    }

    try
    {
        xmlDocPtr doc3 = xmlParseMemory(xmlsw.get(), strlen(xmlsw.get()));
        xml_deserializer_t xmlds3(xmlDocGetRootElement(doc3));
        pdata_item_t xml_wit = xmlds3;
        xml_wit->print(restored_from_xml);
    }
    catch(...)
    {
        TEST_ASSERT(0, "wchar xml deserializer creation");
    }

    TEST_ASSERT_STRINGS_EQUAL(unicode_item_str, restored_from_xml.str(), "restored whar from xml check");
#endif
}
/////////////////////////
void test_msg_xml_deserializer(void)
{
    std::stringstream msg_str;
    pmsg_t pmsg;
    xmlDocPtr doc4 = xmlParseMemory(s14f9_xml_str.str().c_str(), strlen(s14f9_xml_str.str().c_str()));
    try
    {
        xml_deserializer_t xmlds4(xmlDocGetRootElement(doc4));
        pmsg = xmlds4;
    }
    catch(...)
    {
        TEST_ASSERT(0, "s14f9 xml deserializer creation");
    }
    pmsg->print(msg_str);

    TEST_ASSERT_STRINGS_EQUAL(s14f9_str.str().c_str(), msg_str.str().c_str(), "s14f9 xml deserialization");
    xmlFreeDoc(doc4);
/////////////////////////
    const char *str = NULL;
    try
    {
        xml_serializer_t xs(pmsg);
        str =  xs.get();
    }
    catch(...)
    {
        TEST_ASSERT(0, "xml serializer creation");
    }
    TEST_ASSERT_STRINGS_EQUAL(str, s14f9_xml_str.str().c_str(), "s14f9 xml serialization check");
}
/////////////////////////
//deserialization from file
//serialization to file
void test_deserialization_from_file(void)
{
    int fd = open("xsd/test.xml", O_RDONLY);
    int schema_fd = open("xsd/secstwo.xsd", O_RDONLY);

    TEST_ASSERT(fd > 0 && schema_fd > 0, "xml file and scheme file open");
    
    xml_serializer_t::msg_container_t msgs;

    int err = xml_deserializer_t::from_file(fd, schema_fd, msgs);

    TEST_ASSERT(!err,"deserialization from file");
    
    int ix = 0;
    for(xml_serializer_t::msg_container_t::const_iterator it = msgs.begin(); it != msgs.end(); ++it, ++ix)
    {
        if(3 == (*it)->stream && 17 == (*it)->function)
        {
            (*it)->print(s3f17_str);
            TEST_ASSERT(0 != strlen(s3f17_str.str().c_str()), "S3F17 deserialization from xml");
            
            xml_serializer_t xs(*it);
            s3f17_xml_str <<  xs.get();
        }
        else if(14 == (*it)->stream && 9 == (*it)->function)
        {
            (*it)->print(s14f9_str);
            TEST_ASSERT(0 != strlen(s14f9_str.str().c_str()), "S14F9 deserialization from xml");

            xml_serializer_t xs(*it);
            s14f9_xml_str <<  xs.get();
        }
    }

    close(fd);
    close(schema_fd);

    int to_fd = open("serialized.xml", O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);

    TEST_ASSERT(0 < to_fd, "serialized.xml open");

    err = xml_serializer_t::to_file(to_fd, (xml_serializer_t::msg_container_t&)msgs);

    TEST_ASSERT(!err, "serialized to file");
    fsync(to_fd);

    const char *shell_compare = "a=`diff -q serialized.xml xsd/test.xml`; if [ -n \"$a\" ]; then exit 0; else exit -1; fi";
    TEST_ASSERT(-1 != system(shell_compare), "serialized files comparison");


    close(to_fd);
}
/////////////////////////
//deserialization from membuf
//serialization to membuf
void test_deserialization_from_membuf(void)
{
    
    char xml_membuf[20*1024];
    char schema_membuf[20*1024];
    std::string xml_to_mem;

    int fd = open("xsd/test.xml", O_RDONLY);
    int schema_fd = open("xsd/secstwo.xsd", O_RDONLY);

    ssize_t schema_len, xml_len;

    if(0 >= (xml_len = read(fd, xml_membuf, sizeof(xml_membuf))))
    {
        TEST_ASSERT(0, "reading xsd/test.xml");
    }
    if(0 >= (schema_len = read(schema_fd, schema_membuf, sizeof(schema_membuf))))
    {
        TEST_ASSERT(0,"reading xsd/secstwo.xsd");
    }
    
    xml_serializer_t::msg_container_t msgs;
    int err = xml_deserializer_t::from_mem(xml_membuf, sizeof(xml_membuf),schema_membuf, sizeof(schema_membuf), msgs);
    
    TEST_ASSERT(0 == err, "de-serialization from mem");

    char buf[] = "<messages>                                                \
                    <secsIImsg name=\"CR\">                                 \
                        <stream>1</stream>                                  \
                        <function>13</function>                             \
                        <wbit>1</wbit>                                      \
                        <list>                                              \
                            <ascii name=\"MDLN\">Model 1</ascii>            \
                            <ascii name=\"SOFTREV\">v.1.0.0.0</ascii>       \
                        </list>                                             \
                    </secsIImsg>                                            \
                  </messages>";

    err = xml_deserializer_t::from_mem(buf, sizeof(buf),schema_membuf, sizeof(schema_membuf), msgs);

    int ix = 0;
    for(xml_serializer_t::msg_container_t::const_iterator it = msgs.begin(); it != msgs.end(); ++it, ++ix)
    {
        if(3 == (*it)->stream && 17 == (*it)->function)
        {
            std::stringstream msg_str;
            (*it)->print(msg_str);
            TEST_ASSERT_STRINGS_EQUAL(msg_str.str().c_str(), s3f17_str.str().c_str(), "s3f17 deserialized from mem check");
        }
        else if(14 == (*it)->stream && 9 == (*it)->function)
        {
            std::stringstream msg_str;
            (*it)->print(msg_str);
            TEST_ASSERT_STRINGS_EQUAL(msg_str.str().c_str(), s14f9_str.str().c_str(), "s14f9 deserialized from mem check");
        }
        else
        {
            (*it)->print(std::cout);
        }
    }

    close(fd);
    close(schema_fd);

    err = xml_serializer_t::to_mem(xml_to_mem, (xml_serializer_t::msg_container_t&)msgs);

    TEST_ASSERT(0 == err, "serailised to mem");
    TEST_ASSERT(false == xml_to_mem.empty(), "mem not empty");
}


test_t serialize_tests[] = {
    test_t( "binary deserializer test",           test_binary_deserializer        ),
    test_t( "binary serializer test",             test_binary_serializer          ),
    test_t("deserialization from xml file",       test_deserialization_from_file  ),
    test_t("xml serializer test",                 test_xml_seriaizer              ),
    test_t("xml deserializer test",               test_xml_deserializer           ),
    test_t("wchar serialization to xml",          test_wchar_to_xml_serialization ),
    test_t("msg from xml deserialization",        test_msg_xml_deserializer       ),
    test_t("deserialization from memory buffer",  test_deserialization_from_membuf),
    test_t(NULL,0),
};

test_suite_t serialization_suite("Serialization tests", serialize_tests);
