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
#include <limits.h>

#include <libxml/parser.h>
#include <libxml/tree.h>

#include <iostream>

#include "binary_msgs.h"
#include "test_defines.h"
#include "secstwo_serialize.h"
#include "secstwomsg.h"

using namespace freesecs::secstwo;

static pmsg_t s3f17, s14f9, s127f127;

void test_deserialize(void)
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
            s3f17 = *it;
            TEST_ASSERT(NULL != s3f17.get(), "check s3f17 is not null");
        }
        else if(14 == (*it)->stream && 9 == (*it)->function)
        {
            s14f9 = *it;
            TEST_ASSERT(NULL != s14f9.get(), "check s14f9 is not null");
        }
        else if(127 == (*it)->stream && 127 == (*it)->function)
        {
            s127f127 = *it;
            TEST_ASSERT(NULL != s127f127.get(), "check s127f127 is not null");
        }
    }

    TEST_ASSERT_STRINGS_EQUAL("bind_001", s3f17->name.c_str(), "check s3f17 name");
    TEST_ASSERT(3 == s3f17->stream, "check s3f17 stream");
    TEST_ASSERT(17 == s3f17->function, "check s3f17 function");
    TEST_ASSERT_STRINGS_EQUAL("ctljob", s14f9->name.c_str(), "check s14f9 name");
    TEST_ASSERT(14 == s14f9->stream, "check s14f9 stream");
    TEST_ASSERT(9 == s14f9->function, "check s14f9 function");

    close(fd);
    close(schema_fd);
}

void test_access(void)
{
    uint16_t dataid_ix = (*s3f17)[NUM(0)][NUM(0)];
    uint16_t dataid_name = (*s3f17)["DATAID"];
    TEST_ASSERT(1 == dataid_ix, "S3F17 DATAID access by index");
    TEST_ASSERT(1 == dataid_name, "S3F17 DATAID access by name");

    std::string CARRIERACTION = (*s3f17)["CARRIERACTION"];

    std::string CATTRID_ix = (*s3f17)[NUM(0)][3][3][NUM(0)];
    std::string CATTRID_name = (*s3f17)["CARRIERLIST"][3]["CATTRID"];
    TEST_ASSERT_STRINGS_EQUAL("SlotMap", CATTRID_ix.c_str(), "S3F17 CATTRID access by index");
    TEST_ASSERT_STRINGS_EQUAL("SlotMap", CATTRID_name.c_str(), "S3F17 CATTRID access by name");

    std::string OBJTYPE_ix = (*s14f9)[NUM(0)][NUM(0)];
    TEST_ASSERT_STRINGS_EQUAL("Equipment", OBJTYPE_ix.c_str(),"S14F9 OBJTYPE access by index");

    uint8_t expected[5] = {1,2,3,4,5};
    for(int i = 0; i < sizeof(expected)/sizeof(uint8_t); ++i)
    {
        TEST_ASSERT(expected[i] == (uint8_t)(*s14f9)["SRC"][1][NUM(0)][i], "Data array elements access");
    }
}

static const double    euler_const = 2.71828182846;
static const float     pi          = 3.14159265359;
void test_numeric(void)
{
    uint8_t binary[10] = {255, 254, 253, 252, 251, 0, 1, 2, 3, 4};
    for(int i = 0; i < sizeof(binary)/sizeof(binary[0]); ++i)
    {
        TEST_ASSERT(binary[i] == (uint8_t)(*s127f127)["binary"][i], "binary array");
    }

    TEST_ASSERT(1               == (bool)       (*s127f127)["boolean"],     "boolean");
    TEST_ASSERT(LLONG_MIN       == (int64_t)    (*s127f127)["int64"],       "int64");
    TEST_ASSERT(SCHAR_MIN       == (int8_t)     (*s127f127)["int8"],        "int8");
    TEST_ASSERT(SHRT_MIN        == (int16_t)    (*s127f127)["int16"],       "int16");
    TEST_ASSERT(INT_MIN         == (int32_t)    (*s127f127)["int32"],       "int32");
    TEST_ASSERT(euler_const     == (double)     (*s127f127)["double"],      "double");
    TEST_ASSERT(float(-1*pi)    == (float)      (*s127f127)["float"],       "float");
    TEST_ASSERT(ULLONG_MAX      == (uint64_t)   (*s127f127)["uint64"],      "uint64");
    TEST_ASSERT(UCHAR_MAX       == (uint8_t)    (*s127f127)["uint8"],       "uint8");
    TEST_ASSERT(USHRT_MAX       == (uint16_t)   (*s127f127)["uint16"],      "uint16");
    TEST_ASSERT(UINT_MAX        == (uint32_t)   (*s127f127)["uint32"],      "uint32");
}
void test_string(void)
{
    std::string ascii = (*s127f127)["ascii"];
    std::string jis8 = (*s127f127)["jis8"];
    std::string unicode = (*s127f127)["unicode"];

    TEST_ASSERT_STRINGS_EQUAL("秒の規格のためのオープンソースプロジェクトです", jis8.c_str(), "jis8");
    TEST_ASSERT_STRINGS_EQUAL("Это строка юникод", unicode.c_str(), "unicode");
    TEST_ASSERT_STRINGS_EQUAL("This is ascii string", ascii.c_str(), "ascii");
}
void test_comparison(void)
{
    pmsg_t s3f17_clone = s3f17->clone();
    pmsg_t s14f9_clone = s14f9->clone();
    pmsg_t s127f127_clone = s127f127->clone();
 
    TEST_ASSERT(*s3f17_clone == *s3f17, "s3f17 and it's clone are equal");
    TEST_ASSERT(*s14f9_clone == *s14f9, "s14f9 and it's clone are equal");
    TEST_ASSERT(*s127f127_clone == *s127f127, "s127f127 and it's clone are equal");
    TEST_ASSERT(*s3f17 != *s14f9, "s3f17 not equal to s14f9");
    TEST_ASSERT(*s14f9 != *s3f17, "s14f9 not equal to s3f17");
    TEST_ASSERT(*s127f127_clone != *s3f17, "s127f127 not equal to s3f17");

    (*s3f17_clone)["SlotMap"][7] = uint8_t(2);
    TEST_ASSERT(2 == (uint8_t)(*s3f17_clone)["SlotMap"][7], "s2f17 clone modified");
    TEST_ASSERT(*s3f17 != *s3f17_clone, "s3f17 and it's modified clone are not equal");

}
void test_assignment(void)
{
    pmsg_t s3f17_clone = s3f17->clone();
    pmsg_t s127f127_clone = s127f127->clone();
    //test simple data assignments (uncl. error cases)
    (*s127f127_clone)["binary"] = uint8_t(1);
    TEST_ASSERT((*s127f127_clone)["binary"].size() == 1, "binary size (case 1)");
    TEST_ASSERT(1 == (uint8_t)(*s127f127_clone)["binary"][NUM(0)], "binary (case 1)");
    (*s127f127_clone)["binary"] = uint8_t(2);
    TEST_ASSERT((*s127f127_clone)["binary"].size() == uint8_t(1), "binary size (case 2)");
    TEST_ASSERT(2 == (uint8_t)(*s127f127_clone)["binary"][NUM(0)], "binary(case 2)");

    (*s127f127_clone)["boolean"] = false;
    TEST_ASSERT(false == (bool)(*s127f127_clone)["boolean"], "boolean (case 1)");
    (*s127f127_clone)["boolean"] = true;
    TEST_ASSERT(true == (bool)(*s127f127_clone)["boolean"], "boolean (case 2)");

    (*s127f127_clone)["ascii"] = std::string("ascii test");
    (*s127f127_clone)["ascii"] = "ascii test";
    std::string str = (*s127f127_clone)["ascii"];
    printf("ascii test: %s\n", str.c_str());
    TEST_ASSERT_STRINGS_EQUAL("ascii test", std::string((*s127f127_clone)["ascii"]).c_str(), "ascii case 1");
    (*s127f127_clone)["ascii"] = L"тест с-строки";
    TEST_ASSERT_STRINGS_EQUAL("ascii test", std::string((*s127f127_clone)["ascii"]).c_str(), "ascii case 2");
    TEST_ASSERT((*s127f127_clone)["ascii"] == std::string("ascii test"), "ascii case 3");

    (*s127f127_clone)["jis8"] = std::string("プロジェクトです");
    TEST_ASSERT_STRINGS_EQUAL("プロジェクトです", std::string((*s127f127_clone)["jis8"]).c_str(), "jis8 case 1");
    TEST_ASSERT((*s127f127_clone)["jis8"] == std::string("プロジェクトです"), "jis8 case 2");
    (*s127f127_clone)["unicode"] = std::string("юникод-строка");
    TEST_ASSERT_STRINGS_EQUAL("юникод-строка", std::string((*s127f127_clone)["unicode"]).c_str(), "unicode");
    TEST_ASSERT((*s127f127_clone)["unicode"] == std::string("юникод-строка"), "unicode case 2");

    (*s127f127_clone)["int64"] = (int64_t)LLONG_MIN;
    TEST_ASSERT(LLONG_MIN == (int64_t)(*s127f127_clone)["int64"], "int64");

    (*s127f127_clone)["int8"] = SCHAR_MIN;
    TEST_ASSERT(SCHAR_MIN == (int8_t)(*s127f127_clone)["int8"], "int8");

    (*s127f127_clone)["int16"] = SHRT_MIN;
    TEST_ASSERT(SHRT_MIN == (int16_t)(*s127f127_clone)["int16"], "int16");

    (*s127f127_clone)["int32"] = INT_MIN;
    TEST_ASSERT(INT_MIN == (int32_t)(*s127f127_clone)["int32"], "int32");

    (*s127f127_clone)["double"] = (double)-3.14f;
    TEST_ASSERT(-3.14f == (double)(*s127f127_clone)["double"], "double");
    (*s127f127_clone)["double"] = (float)-3.14f;
    TEST_ASSERT(-3.14f == (double)(*s127f127_clone)["double"], "double case 2");
    TEST_ASSERT(-3.14f == (float)(*s127f127_clone)["double"], "double case 3");

    TEST_ASSERT((*s127f127_clone)["double"] == (double)-3.14f, "double case 4");
    TEST_ASSERT((*s127f127_clone)["double"] == (float)-3.14f, "double case 5");

    (*s127f127_clone)["float"] = (float)(-1.0*float(euler_const));
    TEST_ASSERT((-1.0*float(euler_const)) == (float)(*s127f127_clone)["float"], "float case 1");
    TEST_ASSERT((*s127f127_clone)["float"] == (-1.0*float(euler_const)), "float case 2");

    (*s127f127_clone)["float"] = -5;
    TEST_ASSERT((*s127f127_clone)["float"] == -5, "float case 3");
    TEST_ASSERT(-5 == (int)(*s127f127_clone)["float"], "float case 4");


    (*s127f127_clone)["uint64"] = (int64_t)ULLONG_MAX;
    TEST_ASSERT(ULLONG_MAX == (uint64_t)(*s127f127_clone)["uint64"], "uint64");

    (*s127f127_clone)["uint8"] = UCHAR_MAX;
    TEST_ASSERT(UCHAR_MAX == (uint8_t)(*s127f127_clone)["uint8"], "uint8");

    (*s127f127_clone)["uint16"] = USHRT_MAX;
    TEST_ASSERT(USHRT_MAX == (uint16_t)(*s127f127_clone)["uint16"], "uint16");

    (*s127f127_clone)["uint32"] = UINT_MAX;
    TEST_ASSERT(UINT_MAX == (uint32_t)(*s127f127_clone)["uint32"], "uint32");

    //test array assignments

    //test numeric
    s127f127_clone = s127f127->clone();//reset changes
    (*s127f127_clone)["uint32"] = 0;

    for(int i=1; i < 10; ++i)
    {
        (*s127f127_clone)["uint32"] += i;
    }
    TEST_ASSERT(10 == (*s127f127_clone)["uint32"].size(), "uint32 array size");
    for(int i=0;i<10;++i)
    {
        TEST_ASSERT(i == (int)(*s127f127_clone)["uint32"][i], "uint32 array");
    }
    for(int i=9;i>0;--i)
    {
        TEST_ASSERT(i == (int)(*s127f127_clone)["uint32"][i], "uint32 array: reverse");
    }
    TEST_ASSERT(7 == (int)(*s127f127_clone)["uint32"][7], "uint32 array: random access");

    //test var list assignments (= and +=)
    s3f17_clone = s3f17->clone();//get rid of previous modifications

    (*s3f17_clone)["SlotMap"].clear_data();
    TEST_ASSERT((*s3f17_clone)["SlotMap"].size() == 0, "var array size check");

    pdata_item_t slotmap_element = (*s3f17_clone)["SlotMap"][VAR_ARRAY_ELEMENT].clone();
    
    for(int i=0; i < 25; ++i)
    {
        *slotmap_element = i;
        (*s3f17_clone)["SlotMap"] += slotmap_element;
    }
    for(int i=0; i < 25; ++i)
    {
        TEST_ASSERT((*s3f17_clone)["SlotMap"][i] == i, "var array += result");
    }
}
//TODO: test msg & msg_item clone and copy data
void test_copy_data()
{
    pmsg_t s3f17_clone = s3f17->clone();
    pmsg_t s14f9_clone = s14f9->clone();
    pmsg_t s127f127_clone = s127f127->clone();
    TEST_ASSERT(s3f17_clone.get(), "s3f17 clone is not empty");
    TEST_ASSERT(s14f9_clone.get(), "s14f9 clone is not empty");
    TEST_ASSERT(s127f127_clone.get(), "s127f127 clone is not empty");

    s3f17_clone->clear_data();
    s14f9_clone->clear_data();
    s127f127_clone->clear_data();

    TEST_ASSERT(s3f17_clone->match(*s3f17, STRUCT), "s3f17 clone has same structure as s3f17");
    TEST_ASSERT(false == s3f17_clone->match(*s3f17, DATA), "s3f17 clone does not have same data as s3f17");
    TEST_ASSERT(false == s3f17_clone->match(*s3f17, ALL), "s3f17 clone does not match s3f17");
    TEST_ASSERT(s14f9_clone->match(*s14f9, STRUCT), "s14f9 clone has same structure as s14f9");
    TEST_ASSERT(false == s14f9_clone->match(*s14f9, DATA), "s14f9 clone does not have same data as s14f9");
    TEST_ASSERT(false == s14f9_clone->match(*s14f9, ALL), "s14f9 clone does not match s14f9");
    TEST_ASSERT(s127f127_clone->match(*s127f127, STRUCT), "s127f127 clone has same structure as s127f127");
    TEST_ASSERT(false == s127f127_clone->match(*s127f127, DATA), "s127f127 clone does not have same data as s127f127");
    TEST_ASSERT(false == s127f127_clone->match(*s127f127, ALL), "s127f127 clone does not match s127f127");

    s3f17_clone->copy_data(*s3f17);
    s14f9_clone->copy_data(*s14f9);
    s127f127_clone->copy_data(*s127f127);

    s3f17_clone->print(std::cout);
    //s14f9_clone->print(std::cout);
    //s127f127_clone->print(std::cout);
    TEST_ASSERT(s3f17_clone->match(*s3f17, STRUCT), "s3f17 clone has same structure as s3f17 after data copy");
    TEST_ASSERT(s3f17_clone->match(*s3f17, DATA), "s3f17 clone has same data as s3f17 after data copy");
    TEST_ASSERT(s3f17_clone->match(*s3f17, ALL), "s3f17 clone matches s3f17 after data copy");
    TEST_ASSERT(s14f9_clone->match(*s14f9, STRUCT), "s14f9 clone has same structure as s14f9 after data copy");
    TEST_ASSERT(s14f9_clone->match(*s14f9, DATA), "s14f9 clone has same data as s14f9 after data copy");
    TEST_ASSERT(s14f9_clone->match(*s14f9, ALL), "s14f9 clone matches s14f9 after data copy");
    TEST_ASSERT(s127f127_clone->match(*s127f127, STRUCT), "s127f127 clone has same structure as s127f127 after data copy");
    TEST_ASSERT(s127f127_clone->match(*s127f127, DATA), "s127f127 clone has same data as s127f127 after data copy");
    TEST_ASSERT(s127f127_clone->match(*s127f127, ALL), "s127f127 clone matches s127f127 after data copy");
}

test_t data_tests[] = {
    test_t( "deserialization test",         test_deserialize    ),
    test_t( "data access test",             test_access         ),
    test_t( "numeric data test",            test_numeric        ),
    test_t( "string data test",             test_string         ),
    test_t( "test message comparison",      test_comparison     ),
    test_t( "data asignment test",          test_assignment     ),
    test_t( "msg clone and data copy test", test_copy_data      ),
    test_t(NULL, 0)
};

test_suite_t data_suite("Data handling tests", data_tests);
