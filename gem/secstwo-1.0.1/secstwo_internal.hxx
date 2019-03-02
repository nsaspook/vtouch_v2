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
#ifndef _SECSTWOMSG_INTERNAL_HPP
#define _SECSTWOMSG_INTERNAL_HPP
#include <errno.h>
#include <iostream>
#include <iconv.h>
#include "secstwomsg.h"

namespace freesecs
{
    namespace secstwo
    {
        /**
         * \brief Type selector helper struct
         */
        template<data_type_t> struct type_selector
        {
            typedef void * data_type;
        };
        /**
         * \brief List type selector helper struct
         */
        template<> struct type_selector<e_list_t>
        {
            typedef pdata_item_t data_type;
            typedef int         print_type;
            typedef std::vector<data_type> container_type;
        };
        /**
         * \brief Binary type selector helper struct
         */
        template<> struct type_selector<e_binary_t>
        {
            typedef uint8_t data_type;
            typedef uint16_t   print_type;
            typedef std::vector<data_type> container_type;
        };
        /**
         * \brief Boolean type selector helper struct
         */
        template<> struct type_selector<e_boolean_t>
        {
            typedef bool    data_type;
            typedef bool    print_type;
            typedef std::vector<uint8_t> container_type;
        };
        /**
         * \brief ASCII type selector helper struct
         */
        template<> struct type_selector<e_ascii_t>
        {
            typedef char data_type;
            typedef data_type   print_type;
            typedef std::string container_type;
        };
        /**
         * \brief JIS-8 type selector helper struct
         */
        template<> struct type_selector<e_jis8_t>
        {
            typedef  char data_type;
            typedef data_type   print_type;
            typedef std::string container_type;
        };
        /**
         * \brief UNICODE type selector helper struct
         */
        template<> struct type_selector<e_wchar_t>
        {
            typedef char data_type;
            typedef data_type   print_type;
            typedef std::string container_type;
        };
        /**
         * \brief INT64 type selector helper struct
         */
        template<> struct type_selector<e_int64_t>
        {
            typedef int64_t     data_type;
            typedef data_type   print_type;
            typedef std::vector<data_type> container_type;
        };
        /**
         * \brief INT8 type selector helper struct
         */
        template<> struct type_selector<e_int8_t>
        {
            typedef int8_t data_type;
            typedef int16_t   print_type;
            typedef std::vector<data_type> container_type;
        };
        /**
         * \brief INT16 type selector helper struct
         */
        template<> struct type_selector<e_int16_t>
        {
            typedef int16_t data_type;
            typedef data_type   print_type;
            typedef std::vector<data_type> container_type;
        };
        /**
         * \brief INT32 type selector helper struct
         */
        template<> struct type_selector<e_int32_t>
        {
            typedef int32_t data_type;
            typedef data_type   print_type;
            typedef std::vector<data_type> container_type;
        };
        /**
         * \brief DOUBLE type selector helper struct
         */
        template<> struct type_selector<e_double_t>
        {
            typedef double data_type;
            typedef data_type   print_type;
            typedef std::vector<data_type> container_type;
        };
        /**
         * \brief FLOAT type selector helper struct
         */
        template<> struct type_selector<e_float_t>
        {
            typedef float data_type;
            typedef data_type   print_type;
            typedef std::vector<data_type> container_type;
        };
        /**
         * \brief UINT64 type selector helper struct
         */
        template<> struct type_selector<e_uint64_t>
        {
            typedef uint64_t    data_type;
            typedef data_type   print_type;
            typedef std::vector<data_type> container_type;
        };
        /**
         * \brief UINT8 type selector helper struct
         */
        template<> struct type_selector<e_uint8_t>
        {
            typedef uint8_t data_type;
            typedef uint16_t   print_type;
            typedef std::vector<data_type> container_type;
        };
        /**
         * \brief UINT16 type selector helper struct
         */
        template<> struct type_selector<e_uint16_t>
        {
            typedef uint16_t data_type;
            typedef data_type   print_type;
            typedef std::vector<data_type> container_type;
        };
        /**
         * \brief UINT32 type selector helper struct
         */
        template<> struct type_selector<e_uint32_t>
        {
            typedef uint32_t data_type;
            typedef data_type   print_type;
            typedef std::vector<data_type> container_type;
        };

        /**
         * \brief Implementation for all simple datatypes
         * Implements data array handling.
         * Operator item["sub-item name"] returns *this for simple types.
         * \sa data_item_t
         */
        template<data_type_t _type>
        class msg_item_impl_t : public data_item_t
        {
        public:
            typedef typename type_selector<_type>::data_type data_t;
            typedef typename type_selector<_type>::print_type print_t;
            typedef typename type_selector<_type>::container_type container_t;
        public:
            msg_item_impl_t(const char* name)
            :data_item_t(name),_access_index(0)
            {}
            msg_item_impl_t(const char *name,
                            const container_t &data)
            :data_item_t(name),_access_index(0),_data(data)
            {}
            msg_item_impl_t(const msg_item_impl_t &oth)
            :data_item_t(oth.name()),_access_index(0),_data(oth._data)
            {}
            virtual data_item_t& operator[](uint32_t ix)
            {
                _access_index = ix;
                return *this;
            }
            virtual operator bool () const
            {
                uint32_t ix = _access_index < _data.size() ? _access_index : 0;
                _access_index = 0;
                
                return _data[ix];
            }
            virtual operator int8_t () const
            {
                uint32_t ix = _access_index < _data.size() ? _access_index : 0;
                _access_index = 0;
                
                return _data[ix];
            }
            virtual operator uint8_t () const
            {
                uint32_t ix = _access_index < _data.size() ? _access_index : 0;
                _access_index = 0;
                
                return _data[ix];
            }
            virtual operator int16_t () const
            {
                uint32_t ix = _access_index < _data.size() ? _access_index : 0;
                _access_index = 0;
                
                return _data[ix];
            }
            virtual operator uint16_t () const
            {
                uint32_t ix = _access_index < _data.size() ? _access_index : 0;
                _access_index = 0;
                
                return _data[ix];
            }
            virtual operator int32_t () const
            {
                uint32_t ix = _access_index < _data.size() ? _access_index : 0;
                _access_index = 0;
                
                return _data[ix];
            }
            virtual operator uint32_t () const
            {
                uint32_t ix = _access_index < _data.size() ? _access_index : 0;
                _access_index = 0;
                
                return _data[ix];
            }
            virtual operator uint64_t () const
            {
                uint32_t ix = _access_index < _data.size() ? _access_index : 0;
                _access_index = 0;
                
                return _data[ix];
            }
            virtual operator int64_t     () const
            {
                uint32_t ix = _access_index < _data.size() ? _access_index : 0;
                _access_index = 0;
                
                return (int64_t)_data[ix];
            }
            virtual operator float      () const
            {
                uint32_t ix = _access_index < _data.size() ? _access_index : 0;
                _access_index = 0;
                
                return _data[ix];
            }
            virtual operator double      () const
            {
                uint32_t ix = _access_index < _data.size() ? _access_index : 0;
                _access_index = 0;
                
                return _data[ix];
            }
            virtual data_item_t& operator = (const bool &data)
            {
                _data.clear();
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator = (const uint8_t &data)
            {
                _data.clear();
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator = (const int8_t &data)
            {
                _data.clear();
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator = (const uint16_t &data)
            {
                _data.clear();
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator = (const int16_t &data)
            {
                _data.clear();
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator = (const uint32_t &data)
            {
                _data.clear();
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator = (const int32_t &data)
            {
                _data.clear();
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator = (const uint64_t &data)
            {
                _data.clear();
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator = (const int64_t &data)
            {
                _data.clear();
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator = (const double &data)
            {
                _data.clear();
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator = (const float &data)
            {
                _data.clear();
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator += (const bool &data)
            {
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator += (const uint8_t &data)
            {
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator += (const int8_t &data)
            {
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator += (const uint16_t &data)
            {
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator += (const int16_t &data)
            {
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator += (const uint32_t &data)
            {
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator += (const int32_t &data)
            {
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator += (const uint64_t &data)
            {
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator += (const int64_t &data)
            {
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator += (const double &data)
            {
                _data.push_back(data);
                return *this;
            }
            virtual data_item_t& operator += (const float &data)
            {
                _data.push_back(data);
                return *this;
            }
            data_t get_curr_item()const
            {
                uint32_t ix = _access_index < _data.size() ? _access_index : 0;
                _access_index = 0;
                return _data.at(ix);
            }
            virtual bool operator == (const bool &v)const
            {
                return v == get_curr_item();
            }   
            virtual bool operator == (const int8_t &v)const
            {
                return v == get_curr_item();
            }   
            virtual bool operator == (const uint8_t &v)const
            {
                return v == get_curr_item();
            }   
            virtual bool operator == (const int16_t &v)const
            {
                return v == get_curr_item();
            }   
            virtual bool operator == (const uint16_t &v)const
            {
                return v == get_curr_item();
            }   
            virtual bool operator == (const int32_t &v)const
            {
                return v == get_curr_item();
            }   
            virtual bool operator == (const uint32_t &v)const
            {
                return v == get_curr_item();
            }   
            virtual bool operator == (const int64_t &v)const
            {
                return v == get_curr_item();
            }   
            virtual bool operator == (const uint64_t &v)const
            {
                return v == get_curr_item();
            }   
            virtual bool operator == (const float &v)const
            {
                return v == get_curr_item();
            }   
            virtual bool operator == (const double &v)const
            {
                return v == get_curr_item();
            }   
            virtual bool match(const data_item_t& other, match_t match=ALL)const
            {
                if(other.type() != _type)
                {
                    return false;
                }
                else if(STRUCT == match)
                {
                    return true;
                }
                else// if(DATA == match)
                {
                    const msg_item_impl_t<_type> *pimpl = static_cast<const msg_item_impl_t<_type>*>(&other);
                    if(_data != pimpl->_data)
                    {
                        return false;
                    }
                }

                return true;
            }
            virtual data_type_t type()const
            {
                return _type;
            }

            virtual size_t size()const
            {
                return _data.size();
            }

            virtual void print(std::ostream& os, const char *prefix = NULL)const
            {
                static char type2str[][7] = 
                {"LIST","","","","","","","","BINARY","BOOL","","","","","",
                 "", "ASCII","JIS-8","WCHAR","","","","","","I64","I8","I16","","I32","",
                 "","","DOUBLE","","","","FLOAT","","","","UI64","UI8","UI16","","UI32"
                };

                if(prefix)
                {
                    os << prefix;
                }

                os << "<" << type2str[type()] <<" \'" << name() <<"\' " << "[" << _data.size() << "] ";

                typename container_t::const_iterator it;
                for(it = _data.begin(); it != _data.end(); ++it)
                {
                    os << (print_t)*it;
                }
                os << ">" << std::endl;
            }

            const container_t& container()const
            {
                return _data;
            }

            virtual size_t raw_size() const
            {
                return size()*sizeof(data_t);
            }

            virtual int copy_data(const data_item_t &o)
            {
                if(_type != o.type()) return -1;

                const msg_item_impl_t<_type> *pimpl = static_cast<const msg_item_impl_t<_type>*>(&o);

                _data = pimpl->_data;

                return 0;
            }
        public:
            virtual pdata_item_t clone() const
            {
                return (data_item_t*)new msg_item_impl_t<_type>(*this);
            }
            virtual void clear_data()
            {
                _data.clear();
            }
        protected:
            mutable uint32_t _access_index;

        protected:
            container_t _data;

        private:
            friend class binary_deserializer_t;
            friend class xml_deserializer_t;

        };
        /**
         * \brief Implementation for list data type
         * Operator item["sub-item name"] returns the item by name or this if not found.
         * Operator item[int index] returns the item by indexif it's withinthe bounds or this index is out of bounds.
         */
        class list_item_t : public data_item_t
        {
        public:
            typedef type_selector<e_list_t>::data_type data_t;
            typedef type_selector<e_list_t>::print_type print_t;
            typedef type_selector<e_list_t>::container_type container_t;
        public: 
            list_item_t(const char *name)
            :data_item_t(name)
            {};

            virtual data_type_t type()const {return e_list_t;}
            virtual data_item_t& operator[](uint32_t ix)
            {
                if(ix >= _data.size())
                {
                    return *this;
                }

                return *(_data[ix]);
            }
            virtual data_item_t& operator[](const char *key)
            {
                container_t::iterator it =
                        std::find_if(_data.begin(), _data.end(), std::bind2nd(match_name(), key));

                if(it != _data.end())
                {
                    return (*it)->operator[](key);
                }
                return *this;
            }
            data_item_t& 
            operator += (const pdata_item_t& pit)
            {
                return *this;
            }
            /**
             * \brief Size calc function override for list.
             * As per SEMI E5, section 9.3, the list size is
             * counted by the number of elements, not by the
             * number of bytes.
             */
            virtual size_t size()const
            {
                return _data.size();
            }

            virtual bool variable()const{return false;}

            virtual void print(std::ostream& os, const char *prefix)const
            {
                std::string prefix_string = "";
                
                if(prefix)
                {
                    prefix_string += prefix;
                }

                os  << prefix_string 
                    << "<L '" 
                    << name() << "' [" 
                    << _data.size() 
                    << "]" << std::endl;

                prefix_string += "\t";

                for(container_t::const_iterator it = _data.begin(); it != _data.end(); ++it)
                {
                    (*it)->print(os, prefix_string.c_str());
                }
                
                prefix_string.erase(prefix_string.end() -1);

                os << prefix_string << ">" << std::endl;
            }

            virtual size_t raw_size() const
            {
                size_t total = 0;
                for(container_t::const_iterator it = _data.begin(); it != _data.end(); ++it)
                {
                    total += (*it)->raw_size();
                }

                return total;
            }

            virtual bool match(const data_item_t& other, match_t kind=ALL)const
            {
                if(other.type() != this->type())
                {
                    return false;
                }

                const list_item_t *pother = static_cast<const list_item_t*>(&other);

                if(false == variable())
                {
                    if(_data.size() != pother->_data.size())
                    {
                        return false;
                    }
                }

                container_t::const_iterator this_it, other_it;
                for(    this_it = _data.begin(), other_it = pother->_data.begin(); 
                        this_it < _data.end() && other_it < pother->_data.end(); 
                        ++this_it, ++other_it                                       )
                {
                    if(false == (*this_it)->match(*other_it->get(), kind))
                    {
                        return false;
                    }
                }

                return true;
            }
            virtual pdata_item_t clone() const
            {
                list_item_t *plist = new list_item_t(name());
                container_t::const_iterator it;
                for(it = _data.begin(); it < _data.end(); ++it)
               {
                    plist->_data.push_back((*it)->clone());
                }
                return plist;
            }
            virtual void        clear_data()
            {
                container_t::iterator it;
                for(it = _data.begin(); it < _data.end(); ++it)
                {
                    (*it)->clear_data();
                }
            }
            virtual int copy_data(const data_item_t &o)
            {
                int r, ret = 0;
                if(e_list_t != o.type()) return -1;

                const list_item_t *pother = static_cast<const list_item_t*>(&o);

                container_t::iterator this_it;
                container_t::const_iterator other_it;
                for(    this_it = _data.begin(), other_it = pother->_data.begin(); 
                        this_it < _data.end() && other_it < pother->_data.end(); 
                        ++this_it, ++other_it                                       )
                {
                    if((r = (*this_it)->copy_data(**other_it)))
                    {
                        ret = r;
                    }
                }
                return ret;
            }
        protected:
            struct match_name 
            :public std::binary_function<data_t, const char*, bool>
            {
                bool operator()(data_t &item, const char *name)const
                {
                    data_item_t &data_ref = item->operator[](name);

                    return 0 == strcmp(data_ref.name(), name);
                }
            };
        protected:
            container_t _data;
            friend class binary_deserializer_t;
            friend class xml_deserializer_t;
            friend class binary_serializer_t;
            friend class xml_serializer_t;
        };
        /**
         * \brief Variable list implementation.
         * This class is to cover the cases where an isomorphic list may have variable number of elements.
         * This class will be deserialized from XML by adding variable="true" attribute to the XML definition of the list.
         */
        class var_list_item_t : public list_item_t
        {
        public:
            var_list_item_t(const char *name)
            :list_item_t(name){}

            virtual bool variable()const{return true;}

            virtual pdata_item_t clone() const
            {
                var_list_item_t *plist = new var_list_item_t(name());
                plist->_template = _template->clone();
                
                container_t::const_iterator it;
                for(it = _data.begin(); it < _data.end(); ++it)
                {
                    plist->_data.push_back((*it)->clone());
                }

                return plist;
            }
            data_item_t& 
            operator += (const pdata_item_t& pit)
            {
                if( pit.get() 
                    && _template.get() 
                    && true == _template->match(*pit.get(), STRUCT)
                )
                {
                    _data.push_back(pit->clone());
                }
                return *this;
            }
            virtual bool match(const data_item_t& other, match_t kind=ALL)const
            {
                const var_list_item_t *pother = static_cast<const var_list_item_t*>(&other);
                switch(kind) 
                {
                    case STRUCT:
                        return _template->match(*pother->_template.get(),STRUCT);
                    break;
                    case ALL:
                        if(false == _template->match(*pother->_template.get(),STRUCT)) return false;
                    break;
                    case DATA:
                    case NON_EMPTY_DATA:
                    default:
                    break;
                }
                return list_item_t::match(other, kind);
            }
            virtual void        clear_data()
            {
                _data.clear();
            }
            virtual int copy_data(const data_item_t &o)
            {
                int r, ret = 0;
                if(e_list_t != o.type()) return -1;

                const list_item_t *pother = static_cast<const list_item_t*>(&o);

                if(!pother->variable())
                {
                    return -1;
                }
                const var_list_item_t *pvar_other = static_cast<const var_list_item_t*>(&o);

                if(!_template->match(*pvar_other->_template))
                {
                    return -1;
                }

                _data = pvar_other->_data;

                return 0;
            }

            virtual data_item_t& operator[](uint32_t ix)
            {
                if(VAR_ARRAY_ELEMENT == ix)
                {
                    return *_template;
                }

                return list_item_t::operator[](ix);
            }
        private:
            /**
             * \brief Variable list template element.
             * This element is not counted by \sa size() function nor serialized to binary/xml.
             * It serves as a reference for adding elements to the variable list and to match
             * (an empty) variable list to another lists.
             */
            pdata_item_t _template;
            friend class binary_deserializer_t;
            friend class xml_deserializer_t;
            friend class binary_serializer_t;
            friend class xml_serializer_t;
        };

        /**
         * \brief String data item family implementation
         * For JIS-8 and UNICODE data items, the contents is converted from WCHAR to UTF-8
         * on deverialization and back from UTF-8 to WCHAR on serialization.
         * Internally, contents is operated in UTF-8 format.
         * To make format conversion, libiconv is used. 
         * At least two encodings must it be installed with - UTF-8 and WCHAR. 
         */
        template<data_type_t _type>
        class string_data_item_t : public data_item_t
        {
        public:
            typedef typename type_selector<_type>::data_type data_t;
            typedef typename type_selector<_type>::print_type print_t;
            typedef typename type_selector<_type>::container_type container_t;
        public:
            container_t _data;
        public:
            string_data_item_t(const char *name)
            :data_item_t(name)
            {}
            string_data_item_t(const char *name, uint8_t *data)
            :data_item_t(name)
            {
                _data = container_t((data_t*)data);
            }
            string_data_item_t(const char *name, uint8_t *data, size_t data_len)
            :data_item_t(name)
            {
                _data = container_t((data_t*)data, 
                                      data_len/sizeof(data_t));
            }
            //unicode string: convert to UTF-8
            string_data_item_t(const char *name, const wchar_t *data)
            :data_item_t(name)
            {
                size_t in_strlen = wcslen(data)*sizeof(wchar_t);
                size_t out_strlen = in_strlen;
                size_t converted;

                iconv_t icd = iconv_open("UTF-8", "WCHAR_T");

                if(-1 == (int)icd)
                {
                    throw;
                }

                char *out_str = new char[out_strlen];
                char *out_ptr = out_str;
                memset(out_str, 0, out_strlen);

                while(out_strlen && in_strlen)
                {
                    converted = iconv(icd, (char**)&data, &in_strlen, &out_ptr, &out_strlen);

                    if(-1 == (int)converted)
                    {
                        delete out_str;
                        throw;
                    }
                }
                iconv_close(icd);
                _data = container_t((data_t*)out_str);
                delete out_str;
            }
            virtual data_type_t type()const
            {
                return _type;
            }
            virtual operator std::string        () const
            {
                return _data;
            }
            virtual data_item_t& operator = (const char *data)
            {
                _data.clear();
                _data = data;
                return *this;
            }
            virtual data_item_t& operator = (const std::string &data)
            {
                _data.clear();
                _data = data;
                return *this;
            }
            virtual data_item_t& operator += (const char *data)
            {
                _data = _data + container_t(data);
                return *this;
            }
            virtual data_item_t& operator += (const std::string &data)
            {
                _data = _data + data;
                return *this;
            }
            virtual bool operator == (const std::string &o)const
            {
                std::cout << "string comparison: " << this->_data.compare(o) << std::endl;
                return 0 == this->_data.compare(o) ? true : false;
            }
            virtual bool match(const data_item_t& other, match_t match=ALL)const
            {
                if(other.type() != _type)
                {
                    return false;
                }
                else if(STRUCT == match)
                {
                    return true;
                }
                else// if(DATA == match)
                {
                    const string_data_item_t<_type> *pimpl = static_cast<const string_data_item_t<_type>*>(&other);
                    if(0 != strcmp(_data.c_str(), pimpl->_data.c_str()))
                    {
                        return false;
                    }
                }

                return true;
            }

            virtual pdata_item_t clone() const
            {
                string_data_item_t<_type> *pcloned = new string_data_item_t<_type>(name());
                pcloned->_data = _data;
                return pcloned;
            }
            virtual void clear_data()
            {
                _data.clear();
            }
            virtual int copy_data(const data_item_t &o)
            {
                if(_type != o.type()) return -1;

                const string_data_item_t<_type> *pimpl = static_cast<const string_data_item_t<_type>*>(&o);

                _data = pimpl->_data;

                return 0;
            }
            virtual size_t size() const
            {
                return _data.size();
            }
            virtual size_t raw_size() const
            {
                return _data.size()*sizeof(data_t);
            }
            virtual void print(std::ostream& os, const char *prefix = NULL)const
            {
                static char type2str[][7] = 
                {"LIST","","","","","","","","BINARY","BOOL","","","","","",
                 "", "ASCII","JIS-8","WCHAR","","","","","","I64","I8","I16","","I32","",
                 "","","DOUBLE","","","","FLOAT","","","","UI64","UI8","UI16","","UI32"
                };

                if(prefix)
                {
                    os << prefix;
                }

                os << "<" << type2str[type()] <<" \'" << name() <<"\' " << "[" << _data.size() << "] ";

                typename container_t::const_iterator it;
                for(it = _data.begin(); it != _data.end(); ++it)
                {
                    os << (print_t)*it;
                }
                os << ">" << std::endl;
            }
        };

        /**
         * \brief INT8 type specification
         */
        typedef msg_item_impl_t<e_int8_t>       int8_item_t     ;
        /**
         * \brief INT16 type specification
         */
        typedef msg_item_impl_t<e_int16_t>      int16_item_t    ;
        /**
         * \brief INT32 type specification
         */
        typedef msg_item_impl_t<e_int32_t>      int32_item_t    ;
        /**
         * \brief INT64 type specification
         */
        typedef msg_item_impl_t<e_int64_t>      int64_item_t    ;
        /**
         * \brief BINARY type specification
         */
        typedef msg_item_impl_t<e_binary_t>     binary_item_t   ;
        /**
         * \brief UINT8 type specification
         */
        typedef msg_item_impl_t<e_uint8_t>      uint8_item_t    ;
        /**
         * \brief UINT16 type specification
         */
        typedef msg_item_impl_t<e_uint16_t>     uint16_item_t   ;
        /**
         * \brief UINT32 type specification
         */
        typedef msg_item_impl_t<e_uint32_t>     uint32_item_t   ;
        /**
         * \brief UINT64 type specification
         */
        typedef msg_item_impl_t<e_uint64_t>     uint64_item_t   ;
        /**
         * \brief FLOAT type specification
         */
        typedef msg_item_impl_t<e_float_t>      float_item_t    ;
        /**
         * \brief DOUBLE type specification
         */
        typedef msg_item_impl_t<e_double_t>     double_item_t   ;
        /**
         * \brief BOOLEAN type specification
         */
        typedef msg_item_impl_t<e_boolean_t>    bool_item_t     ;
        /**
         * \brief ASCII type specification
         */
        typedef string_data_item_t<e_ascii_t>      ascii_item_t    ;
        /**
         * \brief JIS-8 type specification
         */
        typedef string_data_item_t<e_jis8_t>      jis8_item_t     ;
        /**
         * \brief UNICODE type specification
         */
        typedef string_data_item_t<e_wchar_t>      wchar_item_t    ;

        /**
         * \brief Message internal representation.
         * This representation allows setting root data item with the message.
         */
        class msg_impl_t : public msg_t
        {
        public:
            msg_impl_t(const char *n, 
                        unsigned short s,
                        unsigned short f)
            :msg_t(n,s,f)
            {}

            void set_item(pdata_item_t pit)
            {
                _pitem = pit;
            }
        };
    };
};

#endif /*_SECSTWOMSG_INTERNAL_HPP*/
