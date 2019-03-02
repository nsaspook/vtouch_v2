/*   
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
#ifndef _SHARED_PTR_H
#define _SHARED_PTR_H

namespace freesecs {
    /**
     * \brief Shared ptr with refcount.
     * Obtained from www.koders.com
     */
	template < class T > class shared_ptr_t {
private:
		T * ptr;
		size_t *count;

		static size_t *nil() {
			static size_t nil_counter(1);
			 return &nil_counter;
		} void decref() {
			if (--(*count) == 0) {
				delete ptr;
				delete count;
			}
		}
		void incref() {
			++(*count);
		}

public:

shared_ptr_t():ptr(0), count(nil()) {
			incref();
		}
		~shared_ptr_t() {
			decref();
		}

		shared_ptr_t(const shared_ptr_t < T > &o):ptr(o.ptr),
		    count(o.count) {
			incref();
		}
shared_ptr_t(T * p):ptr(p), count(new size_t(1)) {
		}

		shared_ptr_t < T > &operator=(const shared_ptr_t < T > &o) {
			if (ptr == o.ptr)
				return *this;
			decref();
			ptr = o.ptr;
			count = o.count;
			incref();
			return *this;
		}

		T *get() {
			return ptr;
		}
		T *operator->() {
			return ptr;
		}
		T & operator*() {
			return *ptr;
		}

		const T *get() const {
			return ptr;
		} const T *operator->() const {
			return ptr;
		} const T & operator*() const {
			return *ptr;
		} bool operator==(const shared_ptr_t < T > &o)const {
			return ptr == o.ptr;
		} bool operator!=(const shared_ptr_t < T > &o)const {
			return ptr != o.ptr;
		} bool operator<(const shared_ptr_t < T > &o)const {
			return ptr < o.ptr;
		} size_t refcount() const {
			return *count;
		} typedef T value_type;
	};
}				//namespace
#endif //_SHARED_PTR_H
