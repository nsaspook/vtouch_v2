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
#ifndef _SERIALIZE_H
#define _SERIALIZE_H

#include <vector>
#include <string>
#include "secstwomsg.h"

#ifndef _LIBXML_ALREADY_INCLUDED
class xmlTextWriter;
class xmlSaveCtxt;
#endif

namespace freesecs
{
    namespace secstwo
    {
        /**
         * \brief Data item deserialiser from SEMI E5 format
         * Deserialises a (one) given data item from SEMI E5 to FREESECS representation
         * from given binary data array (memory pool).
         * Deserialization is done recursively for list data items.
         * \sa data_item_t 
         */
        class binary_deserializer_t
        {
        public:
            /**
             * \brief Binary data type define
             */
            typedef uint8_t data_t;
            /**
             * \brief Binary deserializer ctor
             * Ctor throws an empty exception if deserialization goes wrong.
             * Data passed to the ctor must remain valid until the type cast operator is called
             * and thus actual deserialization is done.
             * \sa operator()
             * \param begin Start address of binary data
             * \param end The byte after the last data byte
             */
            binary_deserializer_t(data_t *begin, data_t *end);

            /**
             * \brief Deserialization operator.
             * Deserializes exactly one item from the data array.
             * If there's more items to deserialize and \sa next_item is not NULL,
             * it is filled with the ptr to the start of the next item,
             * so one could continue deserialization by creating a new deserializer instance
             * by providing (next, end) arguments to it's ctor:
             *
             *  while(next && next < end) {
             *      binary_deserializer bs(next, end);
             *      pdata_tem_t pitem = bs(&next);
             *  }
             *
             *
             * \return Pointer to deserialised value
             * \retfal Empty pointer (ptr.get() == NULL) if failed to deserialize data.
             * \retval Non-empty pointer (pter.get() != NULL) if deserialization went OK.
             * \param next_item Ptr to the start byte of the next data item in binary data array.
             */
            pdata_item_t operator()(data_t **next_item);

        private:
            /**
             * \brief copy of data start ptr provided to ctor
             */
            data_t *_begin;
            /**
             * \brief copy of data end ptr provided to ctor
             */
            data_t *_end;
            /**
             * \brief start of binary data item
             */
            data_t *_sod;
            /**
             * \brief end of binary data item
             */
            data_t *_eod;
            /**
             * \brief length of binary data item
             */
            size_t  _data_len;
            /**
             * \brief Type of the data item
             */
            data_type_t _type;
        };

        /**
         * \brief Data item serialiser to SEMI E5 binary format
         * Serialises a given data item to SEMI E5 from FREESECS representation.
         * Serialization is done recursively for list data items.
         * \sa data_item_t 
         */
        class binary_serializer_t
        {
        public:
            /**
             * \brief Binary data container type define
             */
            typedef std::vector<uint8_t> data_container_t;

            /**
             * \brief Binary deserializer ctor
             * Data item serialization is made in ctor. It may throw an empty exception if the following goes wrong:
             * - Fail to do UTF-8 --> WCHAR conversion with iconv
             * \param pitem Ptr to FREESECS representation data item
             */
            binary_serializer_t(pdata_item_t pitem);
            /**
             * \brief returns const ref to start of serialized binary data
             * \return std::vector const iterator
             */
            data_container_t::const_iterator begin()    const;
            /**
             * \brief returns const ref to end of serialized binary data
             * \return std::vector const iterator
             */
            data_container_t::const_iterator end()      const;

            /**
             * \brief returns const ref to serialized binary data container
             */
            operator const data_container_t&();

        private:
            /**
             * \brief Serialized data container
             */
            data_container_t _raw_data;
            /**
             * \brief Ptr to data item
             */
            pdata_item_t _pitem;

        private:
            /**
             * \brief Defailt ctor - formbidden to call
             */
            binary_serializer_t();
        };

        /**
         * \brief Deserialiser from FREESECS-defined XML format into FREESECS data item or message internal format
         * XML is parsed with the help of libxml2 library.
         * \sa data_item_t
         * \sa msg_t
         */
        class xml_deserializer_t
        {
        public:
            /**
             * \brief Type define for a message container
             */
            typedef std::vector<pmsg_t> msg_container_t;
        public:
            /**
             * \brief XML Deserialiser default ctor.
             * Deserializes a given libxml2 node into a data item or into a message, depending on the contents.
             * If things go wrong, the ctor throws an empty exception.
             * Sample code is as follows:
             *
             * xmlDocPtr pdoc = xmlParseMemory(xml_string, xml_string_len)
             * xml_deserializer_t deserialiser(xmlDocGetRootElement(pdoc))
             * pdata_item_t pitem = deserializer;
             *
             * \param pnode libxml2 node that shold contain either data item or the message.
             */
            xml_deserializer_t(xmlNode* pnode);
            /**
             * \brief Data item cast operator to get deserialized data item.
             * \return Shared ptr with deserialized data item.
             * \retval NULL == pitem.get() means deserialization was not OK or deserialised was a message. \sa operator const pmsg_t&()
             */
            operator const pdata_item_t&();
            /**
             * \brief Message cast operator to get deserialized message.
             * \return Shared ptr with deserialized message.
             * \retval NULL == pmsg.get() means deserialization was not OK or deserialised was a data item. \sa operator const pdata_item_t&()
             */
            operator const pmsg_t&();
        public:
            /**
             * \brief Deserialize xml file with validation against XML schema.
             * \param fd XML file descriptor
             * \param schema_fd FREESECS secstwo.xsd file descriptor
             * \param msg_container Message container where deserialized messages are to be stored.
             * It is assumed the file contains message descriptions. Data items will not be stored anywhere.
             * If the schema file is not provided, validation is not performed and this may be the subject to later deserialization errors.
             * It is recommentded to do validation to check for the XML file consistency.
             * \return Operation status.
             * \retval 0 Deserialization successful. Need to check the size of message container however.
             * \retval -1 Failed to read schema file
             * \retval -2 Schema file parse error
             * \retval -3 Schema file parse error
             * \retval -4 Schema file parse error
             * \retval -5 Schema file parse error
             * \retval -6 XML file parse error
             */
            static int from_file(int fd, int schema_fd, msg_container_t &msg_container);
            /**
             * \brief Parse XML data stored in memory.
             * Logics is the same as in \sa from_file
             */
            static int from_mem(void *buf, size_t buflen, void *schema_buf, size_t schema_buflen, msg_container_t &msg_container);

        private:
            /**
             * \brief helper to parse file/memory
             */
            static int read_from(xmlDoc *pdoc, xmlDoc *pschema_doc, msg_container_t &msg_container);
            /**
             * \brief Deserialized data item
             */
            pdata_item_t _pitem;
            /**
             * \brief Deserialized message
             */
            pmsg_t _pmsg;
        };

        /**
         * \brief Serialiser from FREESECS internal representation to FREESECS-defined XML format
         * XML generation is done using libxml2 library.
         * \sa data_item_t 
         */
        class xml_serializer_t
        {
        public:
            /**
             * \brief Message container type define
             */
            typedef std::vector<pmsg_t> msg_container_t;
            /**
             * \brief XML data type define
             */
            typedef std::string data_container_t;
            /**
             * \brief Ctor for data item serialization
             * \param pitem Data item to serialise.
             * The ctor may throw an empty exception if serialization process goes wrong
             */
            xml_serializer_t(pdata_item_t pitem);
            /**
             * \brief Ctor for message serialization
             * \param pmsg Message to serialise.
             * The ctor may throw an empty exception if serialization process goes wrong
             */
            xml_serializer_t(pmsg_t pmsg);
            /**
             * \brief Dtor
             */
            ~xml_serializer_t();
            /**
             * \brief Serialized data getter
             * \return Ptr to the c-string containing serialised data in XML format
             */
            const char *get();

        public:
            /**
             * \brief Serialize a series of messages into a given file
             * The function throws anexception is serialization goes wrong
             * \param fd File to store serialised data into.
             * \param msg_container Container with messages to serialize
             * \return Operation status
             * \retval 0 All have been serialized well
             */
            static int to_file(int fd, const msg_container_t &msg_container);
            /**
             * \brief Serialize a series of messages into libstdc++ std::string
             * The function throws anexception is serialization goes wrong
             * \param container output libstdc++ std::string.
             * \param msg_container Container with messages to serialize
             * \return Operation status
             * \retval 0 All have been serialized well
             */
            static int to_mem(data_container_t& container, const msg_container_t &msg_container);

        protected:
            /**
             * \brief Protected ctor for iterative serialization into the same xml document
             */
            xml_serializer_t(pdata_item_t, xmlTextWriter*);
            /**
             * \brief Protected ctor for iterative serialization into the same xml document
             */
            xml_serializer_t(pmsg_t, xmlTextWriter*);

        private:
            /**
             * \brief File/memory serialization helper
             */
			static int save_to(xmlSaveCtxt *psave_ctx, const msg_container_t &msg_container);
            /**
             * \brief Serialization helper
             */
            void serialize(pdata_item_t, xmlTextWriter*);
            /**
             * \brief Serialization helper
             */
            void serialize(pmsg_t, xmlTextWriter*);
            /**
             * \brief Raw data container
             */
            data_container_t _raw_data;
        };
    };
};
#endif /*_SERIALIZE_H*/
