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
#ifndef _SECSTWOMSG_H
#define _SECSTWOMSG_H

#include <unistd.h>
#include <stdint.h>
#include <string.h>
#include <string>
#include <vector>
#include <functional>
#include <ostream>
#include <algorithm>
#include "secstwo_shared_ptr.h"

/**
 * \brief Macro to resolve ambiguity netween numeric zero and string null ptr
 */

#define NUM(x) ((uint32_t)x)

/**
 * \brief Macro to be used to access to the default element value of fariable array
 *
 */
#define VAR_ARRAY_ELEMENT ((uint32_t)-1)

namespace freesecs
{
    namespace secstwo
    {
        class data_item_t;
        class msg_t;

        /**
         * \brief SECSII type enum with values according to SEMI E5
         *
         */
        typedef enum
        {
            e_list_t    =0x00,
            e_binary_t  =0x08,
            e_boolean_t =0x09,
            e_ascii_t   =0x10,
            e_jis8_t    =0x11,
            e_wchar_t   =0x12,
            e_int64_t   =0x18,
            e_int8_t    =0x19,
            e_int16_t   =0x1a,
            e_int32_t   =0x1c,
            e_double_t  =0x20,
            e_float_t   =0x24,
            e_uint64_t  =0x28,
            e_uint8_t   =0x29,
            e_uint16_t  =0x2a,
            e_uint32_t  =0x2c,
            e_none_t    =0x2d
        }data_type_t;

        /**
         * \brief shared ptr specialization for data item
         */
        typedef shared_ptr_t<data_item_t> pdata_item_t;

        /**
         * \brief Kind of match operation for messages or data items
         * STRUCT - match only structure
         * DATA - match structure and data
         * NON_EMPTY_DATA - match structure only, if one of the match subjects has no data. 
         * If data not empty onboth sides, data matching is performed as well
         * ALL - match structure as well as data
         */
        typedef enum {STRUCT,DATA,NON_EMPTY_DATA,ALL}match_t;

        /**
         * \brief SEMI E5 Data item base class
         */
        class data_item_t
        {
            public: 
                /**
                 * \Data item ctor
                 * \param name Name of the item (defined in SEMI E5 #9.6 ).
                 */
                data_item_t(const char *name);
                /**
                 * \Data item dtor
                 */
                virtual ~data_item_t();
            public:
                /**
                 * \brief Boolean type cast operator.
                 * Casts a data item to the given primary type.
                 * Any numeric data item can be casted to any numeric type.
                 * String data items and list data items return 0 (zero) if to attempt to cast to a numeric type
                 * Numeric and list types return an empty string if to attempt to cast to a string
                 */
                virtual operator bool     () const;
                /**
                 * \brief Signed char type cast operator.
                 * Casts a data item to the given primary type.
                 * Any numeric data item can be casted to any numeric type.
                 * String data items and list data items return 0 (zero) if to attempt to cast to a numeric type
                 * Numeric and list types return an empty string if to attempt to cast to a string
                 */
                virtual operator int8_t     () const;
                /**
                 * \brief Unsigned char type cast operator.
                 * Casts a data item to the given primary type.
                 * Any numeric data item can be casted to any numeric type.
                 * String data items and list data items return 0 (zero) if to attempt to cast to a numeric type
                 * Numeric and list types return an empty string if to attempt to cast to a string
                 */
                virtual operator uint8_t     () const;
                /**
                 * \brief Signed short type cast operator.
                 * Casts a data item to the given primary type.
                 * Any numeric data item can be casted to any numeric type.
                 * String data items and list data items return 0 (zero) if to attempt to cast to a numeric type
                 * Numeric and list types return an empty string if to attempt to cast to a string
                 */
                virtual operator int16_t     () const;
                /**
                 * \brief Unsigned short type cast operator.
                 * Casts a data item to the given primary type.
                 * Any numeric data item can be casted to any numeric type.
                 * String data items and list data items return 0 (zero) if to attempt to cast to a numeric type
                 * Numeric and list types return an empty string if to attempt to cast to a string
                 */
                virtual operator uint16_t     () const;
                /**
                 * \brief Signed int type cast operator.
                 * Casts a data item to the given primary type.
                 * Any numeric data item can be casted to any numeric type.
                 * String data items and list data items return 0 (zero) if to attempt to cast to a numeric type
                 * Numeric and list types return an empty string if to attempt to cast to a string
                 */
                virtual operator int32_t     () const;
                /**
                 * \brief Unsigned int type cast operator.
                 * Casts a data item to the given primary type.
                 * Any numeric data item can be casted to any numeric type.
                 * String data items and list data items return 0 (zero) if to attempt to cast to a numeric type
                 * Numeric and list types return an empty string if to attempt to cast to a string
                 */
                virtual operator uint32_t     () const;
                /**
                 * \brief Signed long type cast operator.
                 * Casts a data item to the given primary type.
                 * Any numeric data item can be casted to any numeric type.
                 * String data items and list data items return 0 (zero) if to attempt to cast to a numeric type
                 * Numeric and list types return an empty string if to attempt to cast to a string
                 */
                virtual operator int64_t     () const;
                /**
                 * \brief Unsigned long type cast operator.
                 * Casts a data item to the given primary type.
                 * Any numeric data item can be casted to any numeric type.
                 * String data items and list data items return 0 (zero) if to attempt to cast to a numeric type
                 * Numeric and list types return an empty string if to attempt to cast to a string
                 */
                virtual operator uint64_t     () const;
                /**
                 * \brief Float type cast operator.
                 * Casts a data item to the given primary type.
                 * Any numeric data item can be casted to any numeric type.
                 * String data items and list data items return 0 (zero) if to attempt to cast to a numeric type
                 * Numeric and list types return an empty string if to attempt to cast to a string
                 */
                virtual operator float      () const;
                /**
                 * \brief Double type cast operator.
                 * Casts a data item to the given primary type.
                 * Any numeric data item can be casted to any numeric type.
                 * String data items and list data items return 0 (zero) if to attempt to cast to a numeric type
                 * Numeric and list types return an empty string if to attempt to cast to a string
                 */
                virtual operator double      () const;
                /**
                 * \brief String type cast operator.
                 * Casts a data item to the given primary type.
                 * Any numeric data item can be casted to any numeric type.
                 * String data items and list data items return 0 (zero) if to attempt to cast to a numeric type
                 * Numeric and list types return an empty string if to attempt to cast to a string
                 */
                virtual operator std::string        () const;

                /**
                 * \brief Array access operator by index
                 * There are two main cases for this operator:
                 * 1. Access to the element of a list data item
                 * 2. Access to the elements in a numeric item body
                 * If the index goes beyond the item size, the ref to the item itself is returned.
                 * One is strongly encouraged to use \sa length method prior to calling this operator
                 * \param ix access index
                 * \return Ref to the item found or ref to the item itself if failure.
                 */
                virtual data_item_t& operator[](uint32_t ix); 
                /**
                 * \brief Array access operator by name (the one given to the item upon construction)
                 * This works only for list data item and call pull up the result from any indentation level,
                 * ex. the list contains another list containing named item.
                 * \param name Name of the wanted item.
                 * \return Ref to the item found or ref to the item itself if failure.
                 */
                virtual data_item_t& operator[](const char *name);
    
            public:
                /**
                 * \brief Function to match a given data item to another data item
                 * \param it Item to match.
                 * \param match Token of kind of match. \sa match_t
                 */
                virtual bool match(const data_item_t& it, match_t match=ALL)const;
                /**
                 * \brief Data item comparison operator
                 * \return Result of comparison operation
                 * \retval true Comparison successful
                 * \retval false Comparison unsuccessful - either data or structure (for lists) or type do not match
                 */
                virtual bool operator == (const data_item_t&)const;
                /**
                 * \brief Boolean comparison operator
                 * \return Result of comparison operation
                 * \retval true Comparison successful
                 * \retval false Comparison unsuccessful - either data or structure (for lists) or type do not match
                 */
                virtual bool operator == (const bool&)const;
                /**
                 * \brief Signed char comparison operator
                 * \return Result of comparison operation
                 * \retval true Comparison successful
                 * \retval false Comparison unsuccessful - either data or structure (for lists) or type do not match
                 */
                virtual bool operator == (const int8_t&)const;
                /**
                 * \brief Unsigned char comparison operator
                 * \return Result of comparison operation
                 * \retval true Comparison successful
                 * \retval false Comparison unsuccessful - either data or structure (for lists) or type do not match
                 */
                virtual bool operator == (const uint8_t&)const;
                /**
                 * \brief Signed short comparison operator
                 * \return Result of comparison operation
                 * \retval true Comparison successful
                 * \retval false Comparison unsuccessful - either data or structure (for lists) or type do not match
                 */
                virtual bool operator == (const int16_t&)const;
                /**
                 * \brief Unsigned short comparison operator
                 * \return Result of comparison operation
                 * \retval true Comparison successful
                 * \retval false Comparison unsuccessful - either data or structure (for lists) or type do not match
                 */
                virtual bool operator == (const uint16_t&)const;
                /**
                 * \brief Signed int comparison operator
                 * \return Result of comparison operation
                 * \retval true Comparison successful
                 * \retval false Comparison unsuccessful - either data or structure (for lists) or type do not match
                 */
                virtual bool operator == (const int32_t&)const;
                /**
                 * \brief Unsigned int comparison operator
                 * \return Result of comparison operation
                 * \retval true Comparison successful
                 * \retval false Comparison unsuccessful - either data or structure (for lists) or type do not match
                 */
                virtual bool operator == (const uint32_t&)const;
                /**
                 * \brief Signed long comparison operator
                 * \return Result of comparison operation
                 * \retval true Comparison successful
                 * \retval false Comparison unsuccessful - either data or structure (for lists) or type do not match
                 */
                virtual bool operator == (const int64_t&)const;
                /**
                 * \brief Unsigned long comparison operator
                 * \return Result of comparison operation
                 * \retval true Comparison successful
                 * \retval false Comparison unsuccessful - either data or structure (for lists) or type do not match
                 */
                virtual bool operator == (const uint64_t&)const;
                /**
                 * \brief Float comparison operator
                 * \return Result of comparison operation
                 * \retval true Comparison successful
                 * \retval false Comparison unsuccessful - either data or structure (for lists) or type do not match
                 */
                virtual bool operator == (const float&)const;
                /**
                 * \brief Double comparison operator
                 * \return Result of comparison operation
                 * \retval true Comparison successful
                 * \retval false Comparison unsuccessful - either data or structure (for lists) or type do not match
                 */
                virtual bool operator == (const double&)const;
                /**
                 * \brief String comparison operator
                 * \return Result of comparison operation
                 * \retval true Comparison successful
                 * \retval false Comparison unsuccessful - either data or structure (for lists) or type do not match
                 */
                virtual bool operator == (const std::string&)const;
                bool operator != (const data_item_t&)const;
                bool operator != (const bool&)const;
                bool operator != (const int8_t&)const;
                bool operator != (const uint8_t&)const;
                bool operator != (const int16_t&)const;
                bool operator != (const uint16_t&)const;
                bool operator != (const int32_t&)const;
                bool operator != (const uint32_t&)const;
                bool operator != (const int64_t&)const;
                bool operator != (const uint64_t&)const;
                bool operator != (const float&)const;
                bool operator != (const double&)const;
                bool operator != (const std::string&)const;
            public:
                /**
                 * \brief Creates a copy of the message.
                 * Calls data item copy constructor and puts newly returned data item into a shared ptr.
                 * Contrary to cloning shared ptrs with ref count on a message is incremented,
                 * cloned message is a separate one and it's data can be edited with no impact to the
                 * nacestor data item.
                 */
                virtual pdata_item_t clone() const   =0;
                /**
                 * \brief Clears all data in a data item.
                 */
                virtual void        clear_data()    =0;
            /*Data modifiers*/
            public:
                /**
                 * \brief Boolean type assignment operator
                 * It is possible to assign any numeric type to any numeric type.
                 * Assignment of a numeric type to a string or list type takes no effect.
                 * Old data is overwritten by this operator, i.e. if there were an array of data,
                 * operator cleans it up and pushes back the new value.
                 * \return Reference to self
                 */
                virtual data_item_t& operator = (const bool&);
                /**
                 * \brief Unsigned char type assignment operator
                 * It is possible to assign any numeric type to any numeric type.
                 * Assignment of a numeric type to a string or list type takes no effect.
                 * Old data is overwritten by this operator, i.e. if there were an array of data,
                 * operator cleans it up and pushes back the new value.
                 * \return Reference to self
                 */
                virtual data_item_t& operator = (const uint8_t&);
                /**
                 * \brief Signed char type assignment operator
                 * It is possible to assign any numeric type to any numeric type.
                 * Assignment of a numeric type to a string or list type takes no effect.
                 * Old data is overwritten by this operator, i.e. if there were an array of data,
                 * operator cleans it up and pushes back the new value.
                 * \return Reference to self
                 */
                virtual data_item_t& operator = (const int8_t&);
                /**
                 * \brief Unsigned short type assignment operator
                 * It is possible to assign any numeric type to any numeric type.
                 * Assignment of a numeric type to a string or list type takes no effect.
                 * Old data is overwritten by this operator, i.e. if there were an array of data,
                 * operator cleans it up and pushes back the new value.
                 * \return Reference to self
                 */
                virtual data_item_t& operator = (const uint16_t&);
                /**
                 * \brief Signed short type assignment operator
                 * It is possible to assign any numeric type to any numeric type.
                 * Assignment of a numeric type to a string or list type takes no effect.
                 * Old data is overwritten by this operator, i.e. if there were an array of data,
                 * operator cleans it up and pushes back the new value.
                 * \return Reference to self
                 */
                virtual data_item_t& operator = (const int16_t&);
                /**
                 * \brief Unsigned int type assignment operator
                 * It is possible to assign any numeric type to any numeric type.
                 * Assignment of a numeric type to a string or list type takes no effect.
                 * Old data is overwritten by this operator, i.e. if there were an array of data,
                 * operator cleans it up and pushes back the new value.
                 * \return Reference to self
                 */
                virtual data_item_t& operator = (const uint32_t&);
                /**
                 * \brief Signed int type assignment operator
                 * It is possible to assign any numeric type to any numeric type.
                 * Assignment of a numeric type to a string or list type takes no effect.
                 * Old data is overwritten by this operator, i.e. if there were an array of data,
                 * operator cleans it up and pushes back the new value.
                 * \return Reference to self
                 */
                virtual data_item_t& operator = (const int32_t&);
                /**
                 * \brief Unsigned long type assignment operator
                 * It is possible to assign any numeric type to any numeric type.
                 * Assignment of a numeric type to a string or list type takes no effect.
                 * Old data is overwritten by this operator, i.e. if there were an array of data,
                 * operator cleans it up and pushes back the new value.
                 * \return Reference to self
                 */
                virtual data_item_t& operator = (const uint64_t&);
                /**
                 * \brief Signed long type assignment operator
                 * It is possible to assign any numeric type to any numeric type.
                 * Assignment of a numeric type to a string or list type takes no effect.
                 * Old data is overwritten by this operator, i.e. if there were an array of data,
                 * operator cleans it up and pushes back the new value.
                 * \return Reference to self
                 */
                virtual data_item_t& operator = (const int64_t&);
                /**
                 * \brief Float type assignment operator
                 * It is possible to assign any numeric type to any numeric type.
                 * Assignment of a numeric type to a string or list type takes no effect.
                 * Old data is overwritten by this operator, i.e. if there were an array of data,
                 * operator cleans it up and pushes back the new value.
                 * \return Reference to self
                 */
                virtual data_item_t& operator = (const float&);
                /**
                 * \brief Double type assignment operator
                 * It is possible to assign any numeric type to any numeric type.
                 * Assignment of a numeric type to a string or list type takes no effect.
                 * Old data is overwritten by this operator, i.e. if there were an array of data,
                 * operator cleans it up and pushes back the new value.
                 * \return Reference to self
                 */
                virtual data_item_t& operator = (const double&);
                /**
                 * \brief String type assignment operator
                 * It is possible to assign any numeric type to any numeric type.
                 * Assignment of a numeric type to a string or list type takes no effect.
                 * Old data is overwritten by this operator, i.e. if there were an array of data,
                 * operator cleans it up and pushes back the new value.
                 * \return Reference to self
                 */
                virtual data_item_t& operator = (const char*);
                /**
                 * \brief String type assignment operator
                 * It is possible to assign any numeric type to any numeric type.
                 * Assignment of a numeric type to a string or list type takes no effect.
                 * Old data is overwritten by this operator, i.e. if there were an array of data,
                 * operator cleans it up and pushes back the new value.
                 * \return Reference to self
                 */
                virtual data_item_t& operator = (const std::string&);

                virtual data_item_t& operator += (const pdata_item_t&);
                virtual data_item_t& operator += (const bool&);
                virtual data_item_t& operator += (const uint8_t&);
                virtual data_item_t& operator += (const int8_t&);
                virtual data_item_t& operator += (const uint16_t&);
                virtual data_item_t& operator += (const int16_t&);
                virtual data_item_t& operator += (const uint32_t&);
                virtual data_item_t& operator += (const int32_t&);
                virtual data_item_t& operator += (const uint64_t&);
                virtual data_item_t& operator += (const int64_t&);
                virtual data_item_t& operator += (const float&);
                virtual data_item_t& operator += (const double&);
                virtual data_item_t& operator += (const char*);
                virtual data_item_t& operator += (const std::string&);
            /*Mics operations*/
            public:
                /**
                 * \brief Returns number of elements
                 */
                virtual size_t      size()const;
                /**
                 * \brief Returns data item type \sa data_type_t
                 */
                virtual data_type_t type()const;
                /**
                 * \brief Returns data item symbolic name
                 */
                const   char *      name()const;
                /**
                 * \brief Prints the item in human-readable format
                 */
                virtual void        print(std::ostream&, const char *prefix = NULL)const = 0;
                /**
                 * \brief Returns number of bytes the item occupies in binary format
                 */
                virtual size_t raw_size() const = 0;
           public:
                /**
                 * \brief Copies all data from the given item.
                 * Data copy is made if data items have same type.
                 * For list item copy data is made reqursively and does not stop
                 * upon unsuccesful data copy.
                 * \return Data copy result.
                 * \retval 0 Data copy successful
                 * \retval < 0 Data copy performed with errors
                 */
                virtual int copy_data(const data_item_t&);
           private:
                /**
                 * \brief Data item symbolic name
                 */
                std::string _name;

           private:
                /**
                 * \brief Data item default ctor - hidden from public
                 */
                data_item_t();
        };

        /**
         * \brief Data item print operator
         */
        std::ostream & operator << (std::ostream &os, pdata_item_t it);

        /**
         * \brief shared ptr specialization for secsII message
         */
        typedef shared_ptr_t<msg_t> pmsg_t;
        /**
         * \brief SECSII message declaration
         */
        class msg_t
        {
        public:
            /**
             * \brief SECSII message symbolic name
             */
            const std::string       name;
            /**
             * \brief SECSII message stream ID
             */
            const unsigned short    stream;
            /**
             * \brief SECSII message function ID
             */
            const unsigned short    function;
            /**
             * \brief SECSII message wait bit (reply required)
             */
            unsigned char           wbit;
            /**
             * \brief SECSII message sysbytes (transaction ID)
             */
            unsigned int            sysbytes;

        public:
            /**
             * \brief SECSII message contents access by index.
             * \param ix Access index
             * If index  eq 0, SECSII message root element ref is returned
             * If index neq 0, the operator recursively applied to the contents of the message root element
             * \return Ref to data item
             * \retval SECSII message root element if index was 0 or if failed to complete the request
             */
            data_item_t& operator[](uint32_t ix);
            /**
             * \brief SECSII message contents access by symbolic name.
             * \param name Data item symbolic name
             * First the mane of the msg root element is checked, then
             * operator recursively applied to the contents of the root element of the message
             * \return Ref to data item
             * \retval SECSII message root element if the name matches root element name
             * or if failed to complete the request
             */
            data_item_t& operator[](const char *name);
            /**
             * \brief Print SECSII message contents to C++ output stream
             * \param os C++ output stream base class
             * \param prefix C-string (not null-terminated) that prepends each line output
             */
            void  print(std::ostream& os, const char *prefix = NULL)const;

        /*Comparison operations*/
        public:
            /**
             * \brief SECSII message comparison operator.
             * Compared are structure and data.
             */
            bool operator == (const msg_t&)const;
            bool operator != (const msg_t&)const;
            /**
             * \brief Function to match given SECSII message to another one.
             * \param m SECSII message to match.
             * \param match Token of kind of match. 
             * \sa match_t
             */
            bool match(const msg_t& m, match_t match=ALL)const;
            /**
             * \brief Copies all data from the given message.
             * Data copy is made from originator's root data item to destinee's root data item.
             * \return Data copy result.
             * \retval 0 Data copy successful
             * \retval < 0 Data copy performed with errors
             */
            int  copy_data(const msg_t&);
        public:
            /**
             * \brief Data assignment operator
             * If messages match, copy all data from one to another
             */
            msg_t& operator = (const msg_t&);//if msgs match, copy all data from one to another
            /**
             * \brief Clones the message.
             * Creates a complete copy of the given message.
             * Intend is the use case:
             * There's a DB of messages a connection knows and accepts for reception.
             * When the message comes, it is checked across the dictionary for the matching one.
             * If the matching message is found and cloned and data is copied from incoming message to the cloned one
             * After that, the incoming message is discarded and the cloned is used instead.
             * As the cloned message has symbolic names assigned to it's data elements, it's easier to access them
             * while treating incoming data
             */
            pmsg_t  clone() const;
            /**
             * \brief Clears all the data in the message.
             */
            void    clear_data();
        protected:
            /**
             * \brief Root data element of the message
             */
            pdata_item_t     _pitem;

        protected:
            /**
             * \brief Message ctor - used by de-serializers
             */
            msg_t(const char *n, 
                  unsigned short s,
                  unsigned short f);

            friend class binary_deserializer_t;
            friend class binary_serializer_t;
            friend class xml_deserializer_t;
            friend class xml_serializer_t;
        };


        std::ostream & operator << (std::ostream &os, pmsg_t pmsg);
    };
};

#endif /*_SECSTWOMSG_H*/
