#!/bin/sh
# The next line restarts using tclsh \
exec tclsh $0 ${1+"$@"}
::tcl::tm::path add [file dirname [info script]]

set host {}
set port 3350
package require secs

namespace eval my {

	##
	# Here we keep track of the device number and socket
	# format: list $dev $sock
	variable dev 0

	## Standard parameters to be set
	variable SOFTWARE {L {A MYSOFT} {A 1.0}}
	variable RTY 3
	variable T0 60000
	variable T1 300
	variable T2 500
	variable T3 45000
	variable T4 45000
	variable T5 10000
	variable T6 5000
	variable T7 10000
	variable T8 5000

	##
	# This function is called as soon as a connection
	# is created.
	proc connect {sock host port} {
		variable dev
		set dev [list [lindex $dev 0] $sock]
	}

	##
	# This function is called for logging from any
	# place of the secs library.
	proc log {args} {
		puts stdout [join $args]
	}

	##
	# Any special behavior you want.
	proc S1F1 {dev cmd msg} {
		variable SOFTWARE
		log received S1F1
		secs reply $dev $cmd $SOFTWARE
	}

	##
	# Finally, create the connection
	secs init $::host $::port
	
	# And enter the mainloop
	vwait forever
}
