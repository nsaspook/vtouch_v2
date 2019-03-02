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
#include "secstwomsg.h"

using namespace freesecs;
using namespace freesecs::secstwo;



data_item_t::data_item_t(const char * name)
:_name(name)
{}

data_item_t::data_item_t()
{}

data_item_t::~data_item_t()
{}

data_item_t::operator bool () const
{
    return 0;
}
data_item_t::operator int8_t () const
{
    return 0;
}
data_item_t::operator uint8_t () const
{
    return 0;
}
data_item_t::operator int16_t () const
{
    return 0;
}
data_item_t::operator uint16_t () const
{
    return 0;
}
data_item_t::operator int32_t () const
{
    return 0;
}
data_item_t::operator uint32_t () const
{
    return 0;
}
data_item_t::operator int64_t () const
{
    return 0;
}
data_item_t::operator uint64_t () const
{
    return 0;
}

data_item_t::operator float () const
{
    return 0.0f;
}

data_item_t::operator double () const
{
    return 0.0f;
}

data_item_t::operator std::string () const
{
    std::string var = "";
    return var;
}

data_item_t& 
data_item_t::operator[](uint32_t)
{
    return *this;
}

data_item_t& 
data_item_t::operator[](const char*)
{
    return *this;
}

const char *
data_item_t::name()const
{
    return _name.c_str();
}

data_type_t 
data_item_t::type()const
{
    return e_none_t;
}

size_t
data_item_t::size()const
{
    return 0;
}
bool 
data_item_t::operator == (const bool&)const
{
    return false;
}
bool 
data_item_t::operator == (const int8_t&)const
{
    return false;
}
bool 
data_item_t::operator == (const uint8_t&)const
{
    return false;
}
bool 
data_item_t::operator == (const int16_t&)const
{
    return false;
}
bool 
data_item_t::operator == (const uint16_t&)const
{
    return false;
}
bool 
data_item_t::operator == (const int32_t&)const
{
    return false;
}
bool 
data_item_t::operator == (const uint32_t&)const
{
    return false;
}
bool 
data_item_t::operator == (const int64_t&)const
{
    return false;
}
bool 
data_item_t::operator == (const uint64_t&)const
{
    return false;
}
bool 
data_item_t::operator == (const float&)const
{
    return false;
}
bool 
data_item_t::operator == (const double&)const
{
    return false;
}
bool 
data_item_t::operator == (const std::string&)const
{
    return false;
}
bool 
data_item_t::operator != (const bool& v)const
{
    return !this->operator == (v);
}
bool 
data_item_t::operator != (const int8_t &v)const
{
    return !this->operator == (v);
}
bool 
data_item_t::operator != (const uint8_t &v)const
{
    return !this->operator == (v);
}
bool 
data_item_t::operator != (const int16_t &v)const
{
    return !this->operator == (v);
}
bool 
data_item_t::operator != (const uint16_t &v)const
{
    return !this->operator == (v);
}
bool 
data_item_t::operator != (const int32_t &v)const
{
    return !this->operator == (v);
}
bool 
data_item_t::operator != (const uint32_t &v)const
{
    return !this->operator == (v);
}
bool 
data_item_t::operator != (const int64_t &v)const
{
    return !this->operator == (v);
}
bool 
data_item_t::operator != (const uint64_t &v)const
{
    return !this->operator == (v);
}
bool 
data_item_t::operator != (const float &v)const
{
    return !this->operator == (v);
}
bool 
data_item_t::operator != (const double &v)const
{
    return !this->operator == (v);
}
bool 
data_item_t::operator != (const std::string &v)const
{
    return !this->operator == (v);
}
bool 
data_item_t::operator == (const data_item_t& other)const
{
    return match(other);
}
bool 
data_item_t::operator != (const data_item_t& it)const
{
    return !this->operator==(it);
}

bool 
data_item_t::match(const data_item_t&, match_t match)const
{
    return false;
}

data_item_t& 
data_item_t::operator = (const bool&)
{
    return *this;
}
data_item_t& 
data_item_t::operator = (const uint8_t&)
{
    return *this;
}
data_item_t& 
data_item_t::operator = (const int8_t&)
{
    return *this;
}
data_item_t& 
data_item_t::operator = (const uint16_t&)
{
    return *this;
}
data_item_t& 
data_item_t::operator = (const int16_t&)
{
    return *this;
}
data_item_t& 
data_item_t::operator = (const uint32_t&)
{
    return *this;
}
data_item_t& 
data_item_t::operator = (const int32_t&)
{
    return *this;
}
data_item_t& 
data_item_t::operator = (const uint64_t&)
{
    return *this;
}
data_item_t& 
data_item_t::operator = (const int64_t&)
{
    return *this;
}
data_item_t& 
data_item_t::operator = (const float&)
{
    return *this;
}
data_item_t& 
data_item_t::operator = (const double&)
{
    return *this;
}
data_item_t& 
data_item_t::operator = (const char *)
{
    return *this;
}
data_item_t& 
data_item_t::operator = (const std::string&)
{
    return *this;
}
data_item_t& 
data_item_t::operator += (const pdata_item_t&)
{
    return *this;
}
data_item_t& 
data_item_t::operator += (const bool&)
{
    return *this;
}
data_item_t& 
data_item_t::operator += (const uint8_t&)
{
    return *this;
}
data_item_t& 
data_item_t::operator += (const int8_t&)
{
    return *this;
}
data_item_t& 
data_item_t::operator += (const uint16_t&)
{
    return *this;
}
data_item_t& 
data_item_t::operator += (const int16_t&)
{
    return *this;
}
data_item_t& 
data_item_t::operator += (const uint32_t&)
{
    return *this;
}
data_item_t& 
data_item_t::operator += (const int32_t&)
{
    return *this;
}
data_item_t& 
data_item_t::operator += (const uint64_t&)
{
    return *this;
}
data_item_t& 
data_item_t::operator += (const int64_t&)
{
    return *this;
}
data_item_t& 
data_item_t::operator += (const float&)
{
    return *this;
}
data_item_t& 
data_item_t::operator += (const double&)
{
    return *this;
}
data_item_t& 
data_item_t::operator += (const char *)
{
    return *this;
}
data_item_t& 
data_item_t::operator += (const std::string&)
{
    return *this;
}
int 
data_item_t::copy_data(const data_item_t&)
{
    return -1;
}
std::ostream & freesecs::secstwo::operator << (std::ostream &os, pdata_item_t it)
{
    it->print(os);
    return os;
};

msg_t::msg_t(   const char *n, 
                unsigned short s,
                unsigned short f)
:name(n),stream(s),function(f)
,wbit(0),sysbytes(0),_pitem(NULL)
{}

data_item_t& 
msg_t::operator[](uint32_t ix)
{
    if(!ix)
    {
        return *_pitem.get();
    }

    return _pitem->operator[](ix);
}
data_item_t& 
msg_t::operator[](const char* name)
{
    if(0 == strcmp(name, _pitem->name()))
    {
        return *_pitem.get();
    }

    return _pitem->operator[](name);
}
void  
msg_t::print(std::ostream& os, const char *prefix)const
{
    if(prefix)
    {
        os << prefix;
    }

    os << "S" << stream << "F" << function << " \'" << name << "\' " << "wbit=" << (int)wbit << " sysbytes=" << sysbytes << std::endl;

    if(_pitem.get())
    {
        _pitem->print(os, prefix);
    }
}

bool 
msg_t::match(const msg_t& other, match_t match)const
{
    if(     stream != other.stream
        ||  function != other.function)
    {
        return false;
    }

    if(     (!_pitem.get() && other._pitem.get())
        ||  (_pitem.get() && !other._pitem.get()))
    {
        return false;
    }

    return _pitem->match(*other._pitem, match);
}

bool 
msg_t::operator == (const msg_t& other)const
{
    return match(other);
}

bool 
msg_t::operator != (const msg_t& other)const
{
    return !(*this == other);
}

pmsg_t
msg_t::clone() const
{
    pmsg_t pmsg = new msg_t(name.c_str(), stream, function);
    pmsg->wbit = wbit;
    pmsg->sysbytes = sysbytes;
    if(_pitem.get())
    {
        pmsg->_pitem = _pitem->clone();
    }
    return pmsg;
}

void
msg_t::clear_data()
{
    if(_pitem.get())_pitem->clear_data();
}

int
msg_t::copy_data(const msg_t &o)
{
    if(!_pitem.get() || ! o._pitem.get()) return -1;

    return _pitem->copy_data(*o._pitem.get());
}

std::ostream & 
operator << (std::ostream &os, pmsg_t pmsg)
{
    if(pmsg.get())
    {
        pmsg->print(os);
    }

    return os;
}


