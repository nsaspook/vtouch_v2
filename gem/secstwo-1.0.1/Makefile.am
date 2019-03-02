
AM_CPPFLAGS = -I/usr/include -I/usr/include/libxml2 -I.

lib_LIBRARIES = libsecstwo.a

libsecstwo_a_SOURCES =	secstwomsg.cxx \
						secstwo_serialize.cxx

include_HEADERS      =  secstwomsg.h \
                        secstwo_serialize.h \
                        secstwo_shared_ptr.h

noinst_HEADERS       =  binary_msgs.h \
                        test_defines.h \
                        secstwo_internal.hxx

dist_sysconf_DATA    =  $(top_srcdir)/xsd/secstwo.xsd
dist_noinst_DATA     =  $(top_srcdir)/xsd/test.xml \
                        doxy.cfg        

if MAYBE_TEST
noinst_PROGRAMS = secstwo_test

secstwo_test_SOURCES = test_main.cxx \
                       data_test.cxx \
                       serialize_test.cxx \
                       binary_msgs.cxx

secstwo_test_LDFLAGS =  -L$(top_srcdir) \
                        -lsecstwo \
                        -lxml2 \
                        -liconv
endif
