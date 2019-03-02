##
#
# @file
#
# @brief This file is part of the SECS library, and defines various
#   procedures implementing a mailbox protocol for Tcl programs.
#
# If there is a shared library named libtclmbx.so in this
# directory, this will be loaded and used. If not, then this
# file contains a complete compatibility package which simulates
# all functionality using Tcl only. This means that the mailbox
# can only communicate within a single Tcl interpreter, but for
# testing and demonstration purposes this is enough.
#
# @cond 0
#
# Copyright © 2008  Jan Nijtmans
#
# More information about this project can be found at:
#     <http://secs.sourceforge.net/>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# @endcond
#

package require Tcl 8.5

if {[file exists [file join [file dirname [info script]] libtclmbx.so]]} {
	load [file join [file dirname [info script]] libtclmbx.so] Mbx
	# If loading of the shared library works, then we don't need the
	# compatibily functions below.
} else {

namespace eval mbx {

	# @cond 0 Don't document this here, but see the "name", "buffersize"
	# and "delay" commands.
	variable name mbx
	variable buffersize 512
	variable delay 100
	# @endcond

	namespace export buffersize delay info name open version

	##
	# @brief Change or get Mbx buffersize
	#
	# @param buffersize requested buffersize(optional)
	#        if the buffersize is given and bigger than the
	#        current buffersize, the buffersize is updated
	#        to the new value. If the requested buffersize
	#        is 0, then the buffersize will be reset to its
	#        original default (512)
	#
	# @return buffersize
	#
	proc buffersize {{buffersize 512}} {
		if {($buffersize>64000) || ($buffersize<0)} {
			error "invalid buffer size, must be between 0 and 64000"
		}
		if {$buffersize>$::mbx::buffersize} {
			set ::mbx::buffersize $buffersize
		} elseif (!$buffersize) {
			set ::mbx::buffersize 512
		}
		return $::mbx::buffersize
	}

	##
	# @brief Change or get delay
	#
	# @param delay requested delay (optional). Every time all mailboxes are
	#              empty, this is the maximum delay after which the mailboxes
	#              are checked again. Only needed for the Windows platform.
	#
	# @return delay
	#
	proc delay {{delay {}}} {
		if {![string is integer $delay]} {
			error "expected integer but got \"$delay\""
		}
		if {$delay > 0} {
			set ::mbx::delay $delay
		}
		return $::mbx::delay
	}

	##
	# @brief Get info about Mbx
	#
	# Returns a list of all available mailboxes matching a pattern
	#
	# @param pattern (optional) If specified, return a subset of
	#        the available mailboxes, only matching "pattern"
	#
	# @return Mbx info
	#
	proc info {{pattern *}} {
		set result {}
		foreach n [namespace children ::mbx::box] {
			set n [namespace tail $n]
			if {[string match $pattern $n]} {
				lappend result $n
			}
		}
		return $result
	}

	##
	# @brief Change or get Mbx name
	#
	# @param name (optional)
	#
	# @return Mbx name
	#
	proc name {{name {}}} {
		if {$name != ""} {
			set ::mbx::name $name
		}
		return $::mbx::name
	}

	##
	# @brief Open a mailbox
	#
	# If more than a single argument is specified, then together
	# with opening a mailbox a receive callback is registered
	# at the same time. So:<br />
	#      <code>open box func arg1 arg2</code><br />
	# is equivalent with:
	#      <code>open box</code><br />
	#      <code>box receive func arg1 arg2</code>
	#
	# @param box box name
	# @param args (optional). If no extra arguments are specified, and
	#      the mailbox is already open, the original callback function
	#      is kept as is. If the argument is the empty string, the
	#      orignal callback function is reset. Otherwise, the args
	#      form the new callback function.
	#
	# @return box
	#
	proc open {box args} {
		namespace eval ::mbx::box::$box [list variable box $box]
		namespace eval ::mbx::box::$box {
			variable queue
			variable cmd
			variable namespace
			if {![info exists cmd]} {
				set cmd {}
				set queue {}
				set namespace {}
			}
			##
			# @brief Close the mailbox
			#
			proc close {} {
				variable box
				namespace delete ::mbx::box::$box
			}
			##
			# @brief Remove all messages from the mailbox
			#
			proc flush {} {
				variable queue
				set queue {}
			}
			##
			# @brief Send a message to the mailbox
			#
			# @param msg message to be sent
			# @param replybox (optional) box to be used for reply message
			#
			proc send {msg {replybox {}}} {
				variable queue
				if {($replybox != "") && [catch {::mbx::box::${replybox}::name}]} {
					error "invalid replybox $replybox: Unknown mailbox"
				}
				lappend queue $msg $replybox
				receive
				return {}
			}
			##
			# @brief Get the original mailbox name
			#
			# Even when the $box command has been renamed,
			# this function can be used to get the real
			# original name of the mailbox.
			#
			# @return original box name
			#
			proc name {} {
				variable box
				return $box
			}
			##
			# @brief Register or get the receive callback for this mailbox
			#
			# @param args (optional). If no extra arguments are specified, and
			#      the mailbox is already open, the original callback function
			#      is returned. If the argument is the empty string, the
			#      orignal callback function is reset. Otherwise, the args
			#      form the new callback function.
			#
			# If the receive function is called when there already is a
			# message in the mailbox, then after registering the new callback
			# this message is received and put in the event queue immediately.
			# So, it might be that the callback function is reset immediately
			# this way. However, the receive function always returns the
			# last active callback function before this happened.
			#
			# @return current callback function, or empty string if there is
			#         no callback function registered
			#
			proc receive args {
				variable queue
				variable cmd
				variable namespace
				if {[llength $args]} {
					if {$args == "{}"} {
						set args {}
					}
					set cmd $args
					set namespace [uplevel 1 {namespace current}]
				}
				set args $cmd
				if {($cmd != "") && [llength $queue]} {
					lappend args [lindex $queue 0]
					set replybox [lindex $queue 1]
					if {$replybox != ""} {
						lappend args $replybox
					}
					if {$namespace != ""} {
						set args [list namespace eval $namespace $args]
					}
					set queue [lreplace $queue 0 1]
					set cmd {}
					after idle $args
				}
				return $cmd
			}
			namespace export close flush send name receive
			namespace ensemble create
		}
		catch {rename ::mbx::box::$box [uplevel 1 {namespace current}]::$box}
		if {[llength $args]} {
			uplevel 1 [linsert $args 0 $box receive]
		}
		return $box
	}

	##
	# @brief Version of mbx library
	#
	# @return version of mbx library (empty string if there is no mbx library)
	#
	proc version {} {
		return {}
	}

	namespace ensemble create

}
}

# determine version number automatically from the file name
regexp -- {-(.*)\.tm} [file tail [info script]] dummy version

# if everything succeeded, register this package
package provide Mbx $version
