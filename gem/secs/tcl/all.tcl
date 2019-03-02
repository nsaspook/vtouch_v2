#!/bin/sh
# The next line restarts using tclsh\
exec tclsh $0 ${1+"$@"}

package require Tcl 8.5
package require tcltest 2.3

::tcltest::configure -testdir [file dirname [file normalize [info script]]]
eval ::tcltest::configure $argv
::tcltest::runAllTests
