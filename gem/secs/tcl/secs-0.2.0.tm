##
#
# @file
#
# @brief This file is part of the SECS library, and defines various
#   procedures implementing the SECS protocol for Tcl programs.
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

namespace eval secs {

	namespace export eqp init log reply write

	proc reply [list dev cmd [list msg [list B 0]]] {
		write $dev [expr {($cmd+1)&-2}] $msg
	}

	# S1F1 (R) Are You There Request
	proc S1F1 {dev cmd msg} {
		upvar #0 ::secs::[lindex $dev 1](prefix) prefix
		if {[llength $msg]>2} {
			namespace eval $prefix [list variable SOFTWARE $msg]
		}
		reply $dev $cmd [::set ${prefix}::SOFTWARE]
	}

	# S1F3 (SSR) Selected Equipment Status Request
	proc S1F3 {dev cmd msg} {
		reply $dev $cmd [set $dev $msg]
	}

	# S1F5 (FSR) Formatted Status Request
	proc S1F5 {dev cmd msg} {
		reply $dev $cmd [set $dev $msg {}]
	}

	# S1F7 (FFR) Fixed Form Request
	proc S1F7 {dev cmd msg} {
		reply $dev $cmd
	}

	# S1F9 (TSR) Material Transfer Status Request
	proc S1F9 {dev cmd msg} {
		reply $dev $cmd
	}

	# S1F11 (SVNR) Status Variable Namelist Request
	proc S1F11 {dev cmd msg} {
		reply $dev $cmd
	}

	# S1F13 (CR) Establish Communications request
	proc S1F13 {dev cmd msg} {
		upvar #0 ::secs::[lindex $dev 1](prefix) prefix
		if {[llength $msg]>2} {
			namespace eval $prefix [list variable SOFTWARE $msg]
		}
		reply $dev $cmd [list L [list B 0] [::set ${prefix}::SOFTWARE]]
	}

	# S1F15 (ROFL) Request OFF-LINE
	proc S1F15 {dev cmd msg} {
		reply $dev $cmd
	}

	# S1F17 (RONL) Request ON-LINE
	proc S1F17 {dev cmd msg} {
		reply $dev $cmd
	}

	# S1F19 (GA) Get Attribute
	proc S1F19 {dev cmd msg} {
		reply $dev $cmd
	}

	# S2F1 (SPI) Service Program Load Inquire
	proc S2F1 {dev cmd msg} {
		reply $dev $cmd
	}

	# S2F3 (SPS) Service Program Send
	proc S2F3 {dev cmd msg} {
		reply $dev $cmd
	}

	# S2F5 (SPR) Service Program Load Request
	proc S2F5 {dev cmd msg} {
		reply $dev $cmd
	}

	# S2F7 (CSS) Service Program Run Send
	proc S2F7 {dev cmd msg} {
		reply $dev $cmd
	}

	# S2F9 (SRR) Service Program Results Request
	proc S2F9 {dev cmd msg} {
		reply $dev $cmd
	}

	# S2F11 (SDR) Service Program Directory Request
	proc S2F11 {dev cmd msg} {
		reply $dev $cmd
	}

	# S2F13 (SSR) Equipment constant request
	proc S2F13 {dev cmd msg} {
		reply $dev $cmd [set $dev $msg]
	}

	# S2F15 (ECS) New equipment constant send
	proc S2F15 {dev cmd msg} {
		eqp $dev eqp
		::foreach pair [lrange $msg 1 end] {
			::foreach {l key value} $pair {break}
			::set eqp([lindex $key 1]) $value
		}
		reply $dev $cmd
	}

	# S2F17 (DTR) Date and Time Request
	proc S2F17 {dev cmd msg} {
		reply $dev $cmd [list A [clock format [clock seconds] -format "%y%m%d%H%M%S"]]
	}

	# S2F19 (RIS) Reset/Initialize Send
	proc S2F19 {dev cmd msg} {
		reply $dev $cmd
	}

	# S2F21 (RCS) Remote Command Send
	proc S2F21 {dev cmd msg} {
		reply $dev $cmd
	}

	# S2F23 (TIS) Trace initialize send
	proc S2F23 {dev cmd msg} {
		reply $dev $cmd
	}

	# S2F25 (LDR) Loopback Diagnostic Request
	proc S2F25 {dev cmd msg} {
		reply $dev $cmd $msg
	}

	# S2F25 (IPR) Initiate Processing Request
	proc S2F27 {dev cmd msg} {
		reply $dev $cmd
	}

	# S2F29 (ECNR) Equipment Constant Namelist Request
	proc S2F29 {dev cmd msg} {
		reply $dev $cmd
	}

	# S2F31 (DTS) Date and Time Set Request
	proc S2F31 {dev cmd msg} {
		reply $dev $cmd
	}

	# S2F33 (DR) Define report
	proc S2F33 {dev cmd msg} {
		eqp $dev eqp
		::set dataid [lindex $msg 1]
		::set msg [lindex $msg 2]
		if {[llength $msg]<2} {
			array unset eqp {r *}
		} else {
			::foreach r [lrange $msg 1 end] {
				::set msg [lindex $r 2]
				::set r [list r [lindex [lindex $r 1] 1]]
				::set eqp($r) $msg
			}
		}
		reply $dev $cmd
	}

	# S2F35 (LER) Link event report
	proc S2F35 {dev cmd msg} {
		eqp $dev eqp
		::set dataid [lindex $msg 1]
		::set msg [lindex $msg 2]
		::foreach r [lrange $msg 1 end] {
			::set msg [lindex $r 2]
			::set r [list e [lindex [lindex $r 1] 1]]
			::set result 0
			foreach m $msg {
				lappend result [lindex $m 1]
			}
			::set eqp($r) $result
		}
		reply $dev $cmd
	}

	# S2F37 (EDER) Enable/Disable event report
	proc S2F37 {dev cmd msg} {
		eqp $dev eqp
		::set enable [expr {[lindex [lindex $msg 1] 1]? 128: 0}]
		::set msg [lindex $msg 2]
		if {[llength $msg]<2} {
			::set msg [linsert [array names eqp {e *}] 0 U2]
		}
		foreach r $msg {
			::set msg $enable
			::set r [lindex $r 1]
			if {[lindex $r 0]!="e"} {
				::set r [list e $r]
			}
			if {[info exists eqp($r)]} {
				::set msg [lreplace $eqp($r) 0 0 $enable]
			}
			::set eqp($r) $msg
		}
		reply $dev $cmd
	}

	# S2F39 (DMBI) Multi-block Inquire
	proc S2F39 {dev cmd msg} {
		reply $dev $cmd
	}

	# S2F41 (HCS) Host Command Send
	proc S2F41 {dev cmd msg} {
		reply $dev $cmd
	}

	# S2F43 (RSSF) Reset Spooling Streams and Function
	proc S2F43 {dev cmd msg} {
		reply $dev $cmd
	}

	# S2F45 (DVLA) Define Variable Limit Attributes
	proc S2F45 {dev cmd msg} {
		reply $dev $cmd
	}

	# S2F47 (VLR) Variable Limit Attribute Request
	proc S2F47 {dev cmd msg} {
		reply $dev $cmd
	}

	# S2F49 (ERC) Enhanced Remote Command
	proc S2F49 {dev cmd msg} {
		reply $dev $cmd
	}

	# S3F1 (MSR) Material Status Request
	proc S3F1 {dev cmd msg} {
		reply $dev $cmd
	}

	# S3F3 (TCR) Time to Completion Request
	proc S3F3 {dev cmd msg} {
		reply $dev $cmd
	}

	# S3F5 (MFS) Material Found Send
	proc S3F5 {dev cmd msg} {
		reply $dev $cmd
	}

	# S3F7 (MLS) Material Lost Send
	proc S3F7 {dev cmd msg} {
		reply $dev $cmd
	}

	# S3F9 (IES) Material ID Equate Send
	proc S3F9 {dev cmd msg} {
		reply $dev $cmd
	}

	# S3F11 (MIDR) Material ID Request
	proc S3F11 {dev cmd msg} {
		reply $dev $cmd
	}

	# S3F13 (MIS) Material ID Send
	proc S3F13 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F1 (RSN) Ready to Send Materials
	proc S4F1 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F3 (SMN) Send Material
	proc S4F3 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F5 (HCN) Handshake Complete
	proc S4F5 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F7 (ABN) Not Ready to Send
	proc S4F7 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F9 (SSN) Stuck in Sender
	proc S4F9 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F11 (SRN) Stuck in Receiver
	proc S4F11 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F13 (SIN) Send Incomplete Timeout
	proc S4F13 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F15 (MRN) Material Received
	proc S4F15 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F17 (RTR) Request to Receive
	proc S4F17 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F19 (TJ) Transfer Job Create
	proc S4F19 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F21 (TC) Transfer Job Command
	proc S4F21 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F23 (TJA) Transfer Job Alert
	proc S4F23 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F25 (MBI4) Multi-block Inquire
	proc S4F25 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F27 (HR) Handoff Ready
	proc S4F27 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F29 (HR) Handoff Command
	proc S4F29 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F31 (HCC) Handoff Command Complete
	proc S4F31 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F33 (HV) Handoff Verified
	proc S4F33 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F35 (HV) Handoff Cancel Ready
	proc S4F35 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F37 (HCA) Handoff Cancel Ready Acknowledge
	proc S4F37 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F39 (HH) Handoff Halt
	proc S4F39 {dev cmd msg} {
		reply $dev $cmd
	}

	# S4F41 (HHA) Handoff Halt Acknowledge
	proc S4F41 {dev cmd msg} {
		reply $dev $cmd
	}

	# S5F1 (ARS) Alarm Report Send
	proc S5F1 {dev cmd msg} {
		reply $dev $cmd
	}

	# S5F3 (EAS) Enable/Disable Alarm Request
	proc S5F3 {dev cmd msg} {
		reply $dev $cmd
	}

	# S5F5 (LAR) List Alarms Request
	proc S5F5 {dev cmd msg} {
		reply $dev $cmd
	}

	# S5F7 (LEAR) List Enabled Alarm Request
	proc S5F7 {dev cmd msg} {
		reply $dev $cmd
	}

	# S5F9 (EXPN) Exception Post Notify
	proc S5F9 {dev cmd msg} {
		reply $dev $cmd
	}

	# S5F11 (EXCN) Exception Clear Notify
	proc S5F11 {dev cmd msg} {
		reply $dev $cmd
	}

	# S5F13 (EXRR) Exception Recover Request
	proc S5F13 {dev cmd msg} {
		reply $dev $cmd
	}

	# S5F15 (EXRCN) Exception Recovery Complete Notify
	proc S5F15 {dev cmd msg} {
		reply $dev $cmd
	}

	# S5F17 (EXRAR) Exception Recovery Abort Request
	proc S5F17 {dev cmd msg} {
		reply $dev $cmd
	}

	# S6F1 (TDS) Trace Data Send
	proc S6F1 {dev cmd msg} {
		reply $dev $cmd
	}

	# S6F3 (DVS) Discrete Variable Data Send
	proc S6F3 {dev cmd msg} {
		reply $dev $cmd
	}

	# S6F5 (MBI) Multi-block data send inquire
	proc S6F5 {dev cmd msg} {
		reply $dev $cmd
	}

	# S6F7 (DDR) Data Transfer Request
	proc S6F7 {dev cmd msg} {
		reply $dev $cmd
	}

	# S6F9 (FVS) Formatted Variable Send
	proc S6F9 {dev cmd msg} {
		reply $dev $cmd
	}

	# S6F11 (ERS) Event Report Send
	proc S6F11 {dev cmd msg} {
		reply $dev $cmd
	}

	# S6F13 (AERS) Annotated Event Report Send
	proc S6F13 {dev cmd msg} {
		reply $dev $cmd
	}

	# S6F15 (ERR) Event Report Request
	proc S6F15 {dev cmd msg} {
		reply $dev $cmd
	}

	# S6F17 (AERR) Annotated Event Report Request
	proc S6F17 {dev cmd msg} {
		reply $dev $cmd
	}

	# S6F19 (IRR) Individual Report Request
	proc S6F19 {dev cmd msg} {
		eqp $dev eqp
		if {[catch {
			::set msg [set $dev $eqp([lreplace $msg 0 0 r])]
		}]} {
			::set msg [list L]
		}
		reply $dev $cmd $msg
	}

	# S6F21 (AIRR) Annotated Individual Report Request
	proc S6F21 {dev cmd msg} {
		eqp $dev eqp
		if {[catch {
			::set msg [set $dev $eqp([lreplace $msg 0 0 r]) {}]
		}]} {
			::set msg [list L]
		}
		reply $dev $cmd $msg
	}

	# S6F23 (RSD) Request Spooled Data
	proc S6F23 {dev cmd msg} {
		reply $dev $cmd
	}

	# S6F25 (???) Notification Report Send
	proc S6F25 {dev cmd msg} {
		reply $dev $cmd
	}

	# S6F27 (TRS) Trace Report Send
	proc S6F27 {dev cmd msg} {
		reply $dev $cmd
	}

	# S6F29 (TRR) Trace Report Request
	proc S6F29 {dev cmd msg} {
		reply $dev $cmd
	}

	# S7F1 (PPI) Process Program Load Inquire
	proc S7F1 {dev cmd msg} {
		reply $dev $cmd
	}

	# S7F3 (PPS) Process Program Send
	proc S7F3 {dev cmd msg} {
		reply $dev $cmd
	}

	# S7F5 (PPR) Process Program Request
	proc S7F5 {dev cmd msg} {
		reply $dev $cmd
	}

	# S7F7 (PIR) Process Program ID Request
	proc S7F7 {dev cmd msg} {
		reply $dev $cmd
	}

	# S7F9 (MMR) M/P M Request
	proc S7F9 {dev cmd msg} {
		reply $dev $cmd
	}

	# S7F11 (UMS) M/P MUpdate Send
	proc S7F11 {dev cmd msg} {
		reply $dev $cmd
	}

	# S7F13 (DES) Delete M/P M Entry Send
	proc S7F13 {dev cmd msg} {
		reply $dev $cmd
	}

	# S7F15 (MMS) Matrix Mode Select Send
	proc S7F15 {dev cmd msg} {
		reply $dev $cmd
	}

	# S7F17 (DPS) Delete Process Program Send
	proc S7F17 {dev cmd msg} {
		reply $dev $cmd
	}

	# S7F19 (RER) Current EPPD Request
	proc S7F19 {dev cmd msg} {
		reply $dev $cmd
	}

	# S7F21 (PCR) Equipment Process Capabilities Request
	proc S7F21 {dev cmd msg} {
		reply $dev $cmd
	}

	# S7F23 (FPS) Formatted Process Program Send
	proc S7F23 {dev cmd msg} {
		reply $dev $cmd
	}

	# S7F25 (FPR) Formatted Process Program Request
	proc S7F25 {dev cmd msg} {
		reply $dev $cmd
	}

	# S7F27 (PVS) Process Program Verification Send
	proc S7F27 {dev cmd msg} {
		reply $dev $cmd
	}

	# S7F29 (PVS) Process Program Verification Inquire
	proc S7F29 {dev cmd msg} {
		reply $dev $cmd
	}

	# S7F31 (VRS) Verification Request Send
	proc S7F31 {dev cmd msg} {
		reply $dev $cmd
	}

	# S7F33 (PAR) Process Program Available Request
	proc S7F33 {dev cmd msg} {
		reply $dev $cmd
	}

	# S7F35 (PPMR) Process Program for MID Request
	proc S7F35 {dev cmd msg} {
		reply $dev $cmd
	}

	# S8F1 (BPR) Boot Program Request
	proc S8F1 {dev cmd msg} {
		reply $dev $cmd
	}

	# S8F3 (EPR) Executive Program Request
	proc S8F3 {dev cmd msg} {
		reply $dev $cmd
	}

	# S9F1 (UDN) Unrecognized Device ID
	proc S9F1 {dev cmd msg} {
	}

	# S9F3 (USN) Unrecognized Stream Type
	proc S9F3 {dev cmd msg} {
	}

	# S9F5 (UFN) Unrecognized Function Type
	proc S9F5 {dev cmd msg} {
	}

	# S9F7 (IDN) Illegal Data
	proc S9F7 {dev cmd msg} {
	}

	# S9F9 (TTN) Transaction Timer Timeout
	proc S9F9 {dev cmd msg} {
	}

	# S9F11 (DLN) Data Too Long
	proc S9F11 {dev cmd msg} {
	}

	# S9F13 (CTN) Conversation Timeout
	proc S9F13 {dev cmd msg} {
	}

	# S10F1 (TRN) Terminal Request
	proc S10F1 {dev cmd msg} {
		reply $dev $cmd
	}

	# S10F3 (VTN) Terminal Display, Single
	proc S10F3 {dev cmd msg} {
		reply $dev $cmd
	}

	# S10F5 (VTN) Terminal Display, Multi-block
	proc S10F5 {dev cmd msg} {
		reply $dev $cmd
	}

	# S10F7 (MNN) Multi-block Not Allowed
	proc S10F7 {dev cmd msg} {
		reply $dev $cmd
	}

	# S10F9 (BCN) Broadcast
	proc S10F9 {dev cmd msg} {
		reply $dev $cmd
	}

	# S12F1 (MSDS) Map Set-Up Data Send
	proc S12F1 {dev cmd msg} {
		reply $dev $cmd
	}

	# S12F3 (MSDR) Map Set-Up Data Request
	proc S12F3 {dev cmd msg} {
		reply $dev $cmd
	}

	# S12F5 (MAPTI) Map Transmit Inquire
	proc S12F5 {dev cmd msg} {
		reply $dev $cmd
	}

	# S12F7 (MDS1) Map Data Send Type 1
	proc S12F7 {dev cmd msg} {
		reply $dev $cmd
	}

	# S12F9 (MDS2) Map Data Send Type 2
	proc S12F9 {dev cmd msg} {
		reply $dev $cmd
	}

	# S12F11 (MDS3) Map Data Send Type 3
	proc S12F11 {dev cmd msg} {
		reply $dev $cmd
	}

	#S12F13 (MDR1) Map Data Request Type 1
	proc S12F13 {dev cmd msg} {
		reply $dev $cmd
	}

	# S12F15 (MDR2) Map Data Request Type 2
	proc S12F15 {dev cmd msg} {
		reply $dev $cmd
	}

	# S12F17 (MDR3) Map Data Request Type 3
	proc S12F17 {dev cmd msg} {
		reply $dev $cmd
	}

	# S12F19 (MERS) Map Error Report Send
	proc S12F19 {dev cmd msg} {
		reply $dev $cmd
	}

	# S13F1 (DSSS) Send Data Set Send
	proc S13F1 {dev cmd msg} {
		reply $dev $cmd
	}

	# S13F3 (DSOR) Open Data Set Request
	proc S13F3 {dev cmd msg} {
		reply $dev $cmd
	}

	# S13F5 (DSRR) Read Data Set Request
	proc S13F5 {dev cmd msg} {
		reply $dev $cmd
	}

	# S13F7 (DSCS) Close Data Set Send
	proc S13F7 {dev cmd msg} {
		reply $dev $cmd
	}

	# S13F9 (DSRS) Reset Data Set Send
	proc S13F9 {dev cmd msg} {
		reply $dev $cmd
	}

	# S13F11 (DSOMGI) Data Set Object Multi-Block Inquire
	proc S13F11 {dev cmd msg} {
		reply $dev $cmd
	}

	# S13F13 (TDS) Table Data Send
	proc S13F13 {dev cmd msg} {
		reply $dev $cmd
	}

	# S13F15 (TDR) Table Data Request
	proc S13F15 {dev cmd msg} {
		reply $dev $cmd
	}

	# S14F1 (GAR) GetAttr Request
	proc S14F1 {dev cmd msg} {
		reply $dev $cmd
	}

	# S14F3 (SAR) SetAttr Request
	proc S14F3 {dev cmd msg} {
		reply $dev $cmd
	}

	# S14F5 (GTR) GetType Request
	proc S14F5 {dev cmd msg} {
		reply $dev $cmd
	}

	# S14F7 (GANR) GetAttrName Request
	proc S14F7 {dev cmd msg} {
		reply $dev $cmd
	}

	# S14F9 (COR) Create Object Request
	proc S14F9 {dev cmd msg} {
		reply $dev $cmd
	}

	# S14F11 (DOR) Delete Object Request
	proc S14F11 {dev cmd msg} {
		reply $dev $cmd
	}

	# S14F13 (OAR) Object Attach Request
	proc S14F13 {dev cmd msg} {
		reply $dev $cmd
	}

	# S14F15 (AOAR) Attached Object Action Request
	proc S14F15 {dev cmd msg} {
		reply $dev $cmd
	}

	# S14F17 (SOAR) Supervised object Action Request
	proc S14F17 {dev cmd msg} {
		reply $dev $cmd
	}

	# S15F1 Recipe Management Multi-block Inquire
	proc S15F1 {dev cmd msg} {
		reply $dev $cmd
	}

	# S15F3 Recipe Namespace Action Request
	proc S15F3 {dev cmd msg} {
		reply $dev $cmd
	}

	# S15F5 Recipe Namespace Rename Request
	proc S15F5 {dev cmd msg} {
		reply $dev $cmd
	}

	# S15F7 Recipe Space Request
	proc S15F7 {dev cmd msg} {
		reply $dev $cmd
	}

	# S15F9 Recipe Status Request
	proc S15F9 {dev cmd msg} {
		reply $dev $cmd
	}

	# S15F11 Recipe Version Request
	proc S15F11 {dev cmd msg} {
		reply $dev $cmd
	}

	# S15F13 Recipe Create Request
	proc S15F13 {dev cmd msg} {
		reply $dev $cmd
	}

	# S15F15 Recipe Store Request
	proc S15F15 {dev cmd msg} {
		reply $dev $cmd
	}

	# S15F17 Recipe Retrieve Request
	proc S15F17 {dev cmd msg} {
		reply $dev $cmd
	}

	# S15F19 Recipe Rename Request
	proc S15F19 {dev cmd msg} {
		reply $dev $cmd
	}

	# S15F21 Recipe Action Request
	proc S15F21 {dev cmd msg} {
		reply $dev $cmd
	}

	# S15F23 Recipe Descriptor Request
	proc S15F23 {dev cmd msg} {
		reply $dev $cmd
	}

	# S15F25 Recipe Parameter Request
	proc S15F25 {dev cmd msg} {
		reply $dev $cmd
	}

	# S15F27 Recipe Download Request
	proc S15F27 {dev cmd msg} {
		reply $dev $cmd
	}

	# S15F29 Recipe Verify Request
	proc S15F29 {dev cmd msg} {
		reply $dev $cmd
	}

	# S15F31 Recipe Unload Request
	proc S15F31 {dev cmd msg} {
		reply $dev $cmd
	}

	# S15F33 Recipe Select Request
	proc S15F33 {dev cmd msg} {
		reply $dev $cmd
	}

	# S15F35 Recipe Delete Request
	proc S15F35 {dev cmd msg} {
		reply $dev $cmd
	}

	# S16F1 (PRJI) Multi-block Process Job Data Inquire
	proc S16F1 {dev cmd msg} {
		reply $dev $cmd
	}

	# S16F3 (PRJCR) Process Job Create request
	proc S16F3 {dev cmd msg} {
		reply $dev $cmd
	}

	# S16F5 (PRJCMDR) Process Job Command Request
	proc S16F5 {dev cmd msg} {
		reply $dev $cmd
	}

	# S16F7 (PRJA) Process Job Alert Notify
	proc S16F7 {dev cmd msg} {
		reply $dev $cmd
	}

	# S16F9 (PRJE) Process Job Event Nofity
	proc S16F9 {dev cmd msg} {
		reply $dev $cmd
	}

	# internal helper function for _encode
	# modifies format byte for msg length and appends
	# sufficient length byte(s) and msg to it.
	# if count is supplied, use this lenght in stead of
	# the msg length
	proc _header {fmt {msg {}} {count {}}} {
		if {$count == {}} {
			::set count [string length $msg]
		}
		if {$count < 256} {
			::set result [binary format cc [expr {$fmt + 1}] $count]
		} elseif {$count < 65536} {
			::set result [binary format cS [expr {$fmt + 2}] $count]
		} else {
			::set result [binary format I [expr {$count + ($fmt + 3) << 16}]]
		}
		return $result$msg
	}

	# The fonts iso8859-11, is13194 and euc-tw are normally not installed in Tcl
	variable venc [list 0 unicode utf-8 ascii iso8859-1 iso8859-11 tis-620\
		is13194 shiftjis euc-jp euc-kr gb1988 euc-cn big5 euc-tw]

	# encode SECS message to binary form
	proc _encode {msg} {
		global tcl_platform
		variable venc
		::set count [expr {[llength $msg] - 1}]
		::set format [lindex $msg 0]
		if {$format == "B"} {
			::set result [_header 0x20 {} $count]
			::foreach item [lrange $msg 1 end] {
				append result [binary format c $item]
			}
		} elseif {$format == "V"} {
			::set result [_header 0x48 {} $count]
			::foreach item [lrange $msg 1 end] {
				append result [binary format c $item]
			}
		} elseif {$format == "BL"} {
			::set result [_header 0x24 {} $count]
			::foreach item [lrange $msg 1 end] {
				append result [expr {$item? "\001": "\000"}]
			}
		} elseif {$format == "F4"} {
			::set count [expr {$count*4}]
			::set result [_header 0x90 {} $count]
			::foreach item [lrange $msg 1 end] {
				append result [binary format R $item]
			}
		} elseif {$format == "F8"} {
			::set count [expr {$count*8}]
			::set result [_header 0x80 {} $count]
			::foreach item [lrange $msg 1 end] {
				append result [binary format Q $item]
			}
		} elseif {$format == "L"} {
			::set result [_header 0 {} $count]
			::foreach item [lrange $msg 1 end] {
				append result [_encode $item]
			}
		} elseif {$format == "J"} {
			::set result [_header 0x44 [encoding convertto jis0201 [join [lrange $msg 1 end]]]]
		} else {
			if {[regexp {([UI])([1248])} $format dummy f n]} {
				::set min [expr {$f=="I"?-1:0}]
				if {$n>4} {
					::set max 4294967296
				} else {
					::set max [lindex [list 0 1 256 0 65536] $n]
					::foreach item [lrange $msg 1 end] {
						if {$item > $max} {::set max $item}
						if {$item < $min} {::set min $item}
					}
				}
				::set min [expr {~$min}]
				if {$min >= 0} {
					if {$min > $max} {
						::set max $min
					}
				} else {
					::set max [expr {$max/2}]
				}
				if {$max<32768} {
					if {$max<128} {
						::set result [_header [expr {4 + (($min<0)?0xA0:0x60)}] {} $count]
						::set f c
					} else {
						::set result [_header [expr {8 + (($min<0)?0xA0:0x60)}] {} [expr {2*$count}]]
						::set f S
					}
				} else {
					if {$max<2147483648} {
						::set result [_header [expr {16 + (($min<0)?0xA0:0x60)}] {} [expr {4*$count}]]
						::set f I
					} else {
						::set result [_header [expr {(($min<0)?0xA0:0x60)}] {} [expr {8*$count}]]
						::set f W
					}
				}
				::foreach item [lrange $msg 1 end] {
					append result [binary format $f $item]
				}
			} elseif {[regexp {^V([1-9A-F][0-9A-F]{0,3})$} $format dummy f]} {
				scan $f %x v
				if {$v>14} {
					error "unknown encoding $f"
				}
				::set msg [encoding convertto [lindex $venc $v] [join [lrange $msg 1 end]]]
				if {($v<2)&&($tcl_platform(byteOrder)=="littleEndian")} {
					# The "unicode" encoding in Tcl assumes system endianess, so correct that
					binary scan $msg s* msg
					::set msg [binary format S* $msg]
				}
				::set result [_header 0x48 [binary format S $v]$msg]
			} else {
				if {$format == "A"} {
					::set msg [lrange $msg 1 end]
				}
				::set result [_header 0x40 [join $msg]]
			}
		}
		return $result
	}

	# decode binary form to SECS message.
	# If 'rem' is set, it contains the variable where
	# eventually remaining bytes will be stored which
	# couldn't be decoded. If 'rem' is not set, remaining
	# bytes result in a format error.
	proc _decode {msg {rem {}}} {
		global tcl_platform ::secs::venc
		binary scan $msg cc fmt len
		if {($fmt & 3) == 1} {
			::set len [expr {$len & 0xff}]
			::set msg [string range $msg 2 end]
		} elseif {($fmt & 3) == 2} {
			binary scan $msg cS fmt len
			::set len [expr {$len & 0xffff}]
			::set msg [string range $msg 3 end]
		} elseif {($fmt & 3) == 3} {
			binary scan $msg I len
			::set len [expr {$len & 0xffffff}]
			::set msg [string range $msg 4 end]
		} else {
			::set len 0
			::set msg [string range $msg 1 end]
		}
		switch [expr {$fmt & 0xfc}] {
			0 {# handle L list
				::set result L
				while {$len > 0} {
					incr len -1
					lappend result [_decode $msg msg]
				}
			}
			32 {#handle binary
				::set result B
				while {$len > 0} {
					binary scan $msg c val
					lappend result [expr {$val & 0xff}]
					incr len -1
					::set msg [string range $msg 1 end]
				}
			}
			36 {#handle boolean
				::set result BL
				while {$len > 0} {
					binary scan $msg c val
					lappend result [expr {$val & 0xff}]
					incr len -1
					::set msg [string range $msg 1 end]
				}
			}
			64 {#handle ASCII string
				::set result A
				if {$len>0} {
					lappend result [string range $msg 0 $len-1]
				}
				::set msg [string range $msg $len end]
			}
			68 {#handle JIS-8 string
				::set result J
				if {$len>0} {
					::set val [string range $msg 0 $len-1]
					lappend result [encoding convertfrom jis0201 $val]
					::set msg [string range $msg $len end]
				}
			}
			72 {#handle variant
				if {[binary scan $msg S f]&&($f>0)&&($f<15)} {
					::set result V[format %X $f]
					if {$len > 2} {
						::set val [string range $msg 2 $len-1]
						if {($f<2)&&($tcl_platform(byteOrder)=="littleEndian")} {
							# The "unicode" encoding in Tcl assumes system endianess, so correct that
							binary scan $val s* val
							::set val [binary format S* $val]
						}
						lappend result [encoding convertfrom [lindex $venc $f] $val]
					}
					::set msg [string range $msg $len end]
				} else {
					::set result V
					while {$len > 0} {
						binary scan $msg c val
						lappend result [expr {$val & 0xff}]
						incr len -1
						::set msg [string range $msg 1 end]
					}
				}
			}
			96 {#handle I8
				::set result I8
				while {$len > 0} {
					binary scan $msg W val
					lappend result $val
					incr len -8
					::set msg [string range $msg 8 end]
				}
			}
			100 {#handle I1
				::set result I1
				while {$len > 0} {
					binary scan $msg c val
					lappend result $val
					incr len -1
					::set msg [string range $msg 1 end]
				}
			}
			104 {#handle I2
				::set result I2
				while {$len > 0} {
					binary scan $msg S val
					lappend result $val
					incr len -2
					::set msg [string range $msg 2 end]
				}
			}
			112 {#handle I4
				::set result I4
				while {$len > 0} {
					binary scan $msg I val
					lappend result $val
					incr len -4
					::set msg [string range $msg 4 end]
				}
			}
			128 {#handle F8
				::set result F8
				while {$len > 0} {
					::set val [string range $msg 0 7]
					::set msg [string range $msg 8 end]
					binary scan $val Q val
					lappend result $val
					incr len -8
				}
			}
			144 {#handle F4
				::set result F4
				while {$len > 0} {
					::set val [string range $msg 0 3]
					::set msg [string range $msg 4 end]
					binary scan $val R val
					lappend result $val
					incr len -4
				}
			}
			160 {#handle U8
				::set result U8
				while {$len > 0} {
					binary scan $msg W val
					lappend result [expr {$val & 0xffffffffffffffff}]
					incr len -8
					::set msg [string range $msg 8 end]
				}
			}
			164 {#handle U1
				::set result U1
				while {$len > 0} {
					binary scan $msg c val
					lappend result [expr {$val & 0xff}]
					incr len -1
					::set msg [string range $msg 1 end]
				}
			}
			168 {#handle U2
				::set result U2
				while {$len > 0} {
					binary scan $msg S val
					lappend result [expr {$val & 0xffff}]
					incr len -2
					::set msg [string range $msg 2 end]
				}
			}
			176 {#handle U4
				::set result U4
				while {$len > 0} {
					binary scan $msg I val
					lappend result [expr {$val & 0xffffffff}]
					incr len -4
					::set msg [string range $msg 4 end]
				}
			}
			default {
				error "unhandled format $fmt"
			}
		}
		if {$rem != {}} {
			upvar 1 $rem r
			::set r $msg
		} elseif {$msg != {}} {
			error "secs message format error $result"
		}
		return $result
	}

	# Handle reply callback. This proc is responsible for
	# callback handling and sending the next message in the
	# queue, but not for cancelling the timeout timer.
	# cmd must have an even function number!
	proc _reply {sock cmd dev sub msg} {
		upvar #0 ::secs::$sock conn
		::set callback [lindex $conn(expect) 5]
		unset conn(expect)
		while {[llength $conn(queue)]} {
			::set top [lindex $conn(queue) 0]
			lassign $top rmsg rdev rcmd rsub rid callback1
			if {$conn(port)>9} {
				if {![eof $sock]} {
					puts -nonewline $sock $rmsg
				}
			} else {
				if {($conn(state) == "") && ![llength $conn(semiqueue)]} {
					puts -nonewline $sock \005;# ENQ
					after cancel $conn(semitimer)
					::set t2 [::set $conn(prefix)::T2]
					::set conn(semitimer) [after $t2 ::secs::_semitimer $sock]
				}
				lappend conn(semiqueue) $rmsg
			}
			::set conn(queue) [lrange $conn(queue) 1 end]
			if {[llength $callback1]} {
				::set t3 [::set $conn(prefix)::T3]
				::set aid [after $t3 [list ::secs::_reply $sock [expr {$rcmd&-256}] $rdev $rsub {}]]
				::set conn(expect) [lreplace $top 0 0 $aid]
				break;
			}
		}
		if {[llength $callback]>0} {
			if {$sub>0} {
				::set cmd [expr {$cmd|($sub<<16)}]
			} else {
				log $sock [lindex $callback 0] SECS <- S[expr {($cmd&0x7f00)>>8}]F[expr {$cmd&255}] $msg
			}
			lappend callback [list $dev $sock] $cmd $msg
			after idle $callback
		}
	}

	# Handle SEMI timeout T1 and T2
	proc _semitimer {sock} {
		upvar #0 ::secs::$sock conn
		::set rty [::set $conn(prefix)::RTY]
		log $sock "protocol timeout ($conn(state)) on $conn(host):$conn(port) (retry #[incr conn(retry)])"
		if {($conn(state) ne "R") && $conn(retry) >= $rty} {
			::set conn(retry) 0
			::set conn(semiqueue) {}
		} elseif {[llength $conn(semiqueue)]} {
			puts -nonewline $sock \005;# ENQ
			::set t2 [::set $conn(prefix)::T2]
			::set conn(semitimer) [after $t2 ::secs::_semitimer $sock]
		}
		set conn(state) {}
	}

	# Write a secs message. If the message is a request, then
	# check if there is another request sent which still expects
	# a reply. If so, delay the write until the earlier reply
	# is received or a timeout occurs. The message id will be
	# determined automatically
	# If the message is a reply, then the reply is only sent
	# when the reply-bit is set
	# and the last argument contains the message id.
	proc write {dev cmd msg args} {
		lassign $dev dev sock id
		upvar #0 ::secs::$sock conn
		if {[regexp {S(.*)F(.*)} $cmd all sub cmd]} {
			::set cmd [expr {256*$sub+$cmd}]
		}
		if {$cmd>65535} {
			::set sub [expr {$cmd>>16}]
			::set cmd [expr {$cmd&65535}]
		} else {
			::set sub 0
		}
		if {![info exists conn(prefix)]} {
			# Connection is gone.
			if {[llength $args]} {
				set cmd [expr {$cmd&0x7f00}]
				lappend args [list $dev $sock] $cmd {}
				after idle $args
			}
			return
		}
		if {($cmd?$cmd:$sub)&1} {
			if {$cmd && [llength $args]} {
				::set cmd [expr {$cmd|0x8000}]
			} else {
				::set cmd [expr {$cmd&0x7fff}]
			}
			incr conn(msgid)
			if {!($conn(msgid)&0xffff)} {
				incr conn(msgid) -65535
			}
			::set id $conn(msgid)
			if {!$cmd} {
				::set id [expr {$id-0x80000000}]
			}
			log $sock SECS -> S[expr {($cmd&0x7f00)>>8}]F[expr {$cmd&255}][expr {$cmd&0x8000?"(R)":""}] $msg
		} elseif {$cmd && !($cmd&0x8000)} {
			return; #do nothing, because request doesnt expect reply
		} else {
			::set cmd [expr {$cmd&0x7fff}]
			::set args {}
			log $sock SECS -> S[expr {($cmd&0x7f00)>>8}]F[expr {$cmd&255}] $msg
		}
		if {[llength $msg] > 0} {
			::set msg [_encode $msg]
		} else {
			::set msg {}
		}
		if {$conn(port)>9} {
			::set msg [binary format ISSSI [expr {[string length $msg]+10}] [expr {($conn(host)=="")?($dev^-32768):$dev}] $cmd $sub $id]$msg
			if {(($cmd?$cmd:$sub)&1) && [info exists conn(expect)]} {
				lappend conn(queue) [list $msg $dev $cmd $sub $id $args]
				return
			}
			puts -nonewline $sock $msg
		} else {
			::set count 0
			while {1} {
				::set msg1 [string range $msg 0 243]
				::set msg  [string range $msg 244 end]
				if {$msg eq ""} {
					incr count -32768
				}
				::set msg1 "[binary format SSSI $dev $cmd [incr count] $id]$msg1"
				::set sum 0
				binary scan $msg1 c* x
				::foreach e $x {
					incr sum [expr {$e&255}]
				}
				::set msg1 [binary format c [string length $msg1]]$msg1[binary format S $sum]
				if {($cmd&1) && [info exists conn(expect)]} {
					if {$msg eq ""} {
						lappend conn(queue) [list $msg1 $dev $cmd 0 $id $args]
						::set args {}
						break
					}
					lappend conn(queue) [list $msg1 $dev $cmd 0 $id {}]
				} else {
					if {($conn(state) == "") && ![llength $conn(semiqueue)]} {
						puts -nonewline $sock \005;# ENQ
						after cancel $conn(semitimer)
						::set t2 [::set $conn(prefix)::T2]
						::set conn(semitimer) [after $t2 ::secs::_semitimer $sock]
					}
					lappend conn(semiqueue) $msg1
					if {$msg eq ""} {
						break
					}
				}
			}
		}
		if {[llength $args]} {
			# prepare timeout handling
			if {$cmd} {
				::set t3 [::set $conn(prefix)::T3]
				::set aid [after $t3 [list ::secs::_reply $sock [expr {$cmd&-256}] $dev $sub {}]]
			} else {
				# TODO nack???
				::set t6 [::set $conn(prefix)::T6]
				::set aid [after $t6 [list ::secs::_reply $sock $cmd $dev $sub {}]]
			}
			::set conn(expect) [list $aid $dev $cmd $sub $id $args]
		}
	}

	# Callback function for sending an Testlink.req every T0 s
	proc _handshake {dev cmd msg} {
		::set sock [lindex $dev 1]
		::set t0 [::set [::set ::secs::[::set sock](prefix)]::T0]
		after $t0 [list catch [list ::secs::write $dev 0x50000 {} ::secs::_handshake]]
		if {$cmd == 131072} {
			upvar #0 ::secs::$sock conn
			if {$conn(port) > 9} {
				tailcall namespace eval $conn(prefix) [list if {[llength [info procs connect]]} [list connect $sock $conn(host) $conn(port)]]
			}
		}
	}

	# Handles the input from the client and client shutdown
	proc _reader {sock} {
		upvar #0 ::secs::$sock conn
		upvar #0 ::secs::[::set sock](data) data
		upvar #0 $conn(eqp) eqp
		if {[eof $sock]} {;# client gone or finished
			# handle all schreduled writes, which didn't receive an answer yet.
			while {[info exists conn(expect)]} {
				lassign $conn(expect) aid dev cmd sub id callback
				after cancel $aid
				_reply $sock [expr {$cmd&-256}] $dev $sub {}
			}
			log $sock "closing $sock"
			after cancel $conn(semitimer)
			if {$conn(host) != {}} {
				::set t5 [::set $conn(prefix)::T5]
				log $sock "closed connection to $conn(host):$conn(port), trying again every [expr {$t5/1000}] s"
				after $t5 [list namespace eval $conn(prefix) [list ::secs::init $conn(host) $conn(port)]]
			}
			unset conn
			close $sock;
			return
		}
		append data [read $sock];# get the client packet
		while {1} {
			::set l [string length $data]
			# determine number of bytes, cmd, subcmd and msgid
			if {$conn(port)>9} {
				if {$l < 14} {
					return
				}
				binary scan $data ISSSI n dev cmd sub id
				::set n [expr {($n&0xffffffff)+4}]
				if {$conn(host) eq ""} {
					::set dev [expr {$dev^-32768}]
				}
				if {$l < $n} {
					# not enough bytes received, so wait for more
					return
				}
				::set result [string range $data 14 $n-1]
				::set data [string range $data $n end]
			} else {
				if {$l < 1} {
					return
				}
				if {$conn(state) eq ""} {
					if {[string index $data 0] eq "\004"} {
						# EOT <- Ready to Receive
						if {[llength $conn(semiqueue)]} {
							::set top [lindex $conn(semiqueue) 0]
							after cancel $conn(semitimer)
							if {![eof $sock]} {
								puts -nonewline $sock $top
								::set t2 [::set $conn(prefix)::T2]
								::set conn(semitimer) [after $t2 ::secs::_semitimer $sock]
							}
							::set conn(state) S
						}
					} elseif {[string index $data 0] eq "\005"} {
						# ENQ <- Request to Send
						binary scan [lindex $conn(semiqueue) 0] cS n dev
						if {![llength $conn(semiqueue)] || ($dev >= 0)} {
							::set conn(state) R
							puts -nonewline $sock \004;# EOT -> Ready to Receive
							after cancel $conn(semitimer)
							::set t2 [::set $conn(prefix)::T2]
							::set conn(semitimer) [after $t2 ::secs::_semitimer $sock]
						}
					}
					::set data [string range $data 1 end]
					continue
				} elseif {$conn(state) eq "S"} {
					if {[string index $data 0] eq "\006"} {
						# ACK <- Correct Reception
						::set conn(state) {}
						::set conn(retry) 0
						::set conn(semiqueue) [lrange $conn(semiqueue) 1 end]
						after cancel $conn(semitimer)
						if {[llength $conn(semiqueue)]} {
							puts -nonewline $sock \005;# ENQ
							::set t2 [::set $conn(prefix)::T2]
							::set conn(semitimer) [after $t2 ::secs::_semitimer $sock]
						}
					}  else {
						# NAK <- Incorrect Reception
						::set conn(state) {}
						::set rty [::set $conn(prefix)::RTY]
						if {[incr conn(retry)] > $rty} {
							::set conn(retry) 0
							::set conn(semiqueue) {}
						} else {
							puts -nonewline $sock \005;# ENQ
							after cancel $conn(semitimer)
							::set t2 [::set $conn(prefix)::T2]
							::set conn(semitimer) [after $t2 ::secs::_semitimer $sock]
						}
					}
					::set data [string range $data 1 end]
					continue
				} elseif {$conn(state) ne "R"} {
					::set data [string range $data 1 end]
					continue
				}
				after cancel $conn(semitimer)
				::set t1 [::set $conn(prefix)::T1]
				if {$l < 11} {
					::set conn(semitimer) [after $t1 ::secs::_semitimer $sock]
					return
				}
				binary scan $data cSSSI n dev cmd sub id
				::set dev [expr {$dev ^ -32768}]
				::set n [expr {($n&0xff)+3}]
				if {$l < $n} {
					::set conn(semitimer) [after $t1 ::secs::_semitimer $sock]
					# not enough bytes received, so wait for more
					return
				}
				binary scan [string range $data $n-2 $n-1] S sum
				binary scan [string range $data 1 10] c* x
				::foreach e $x {
					incr sum [expr {-($e&255)}]
				}
				::set result [string range $data 11 $n-3]
				binary scan $result c* x
				::foreach e $x {
					incr sum [expr {-($e&255)}]
				}
				::set conn(state) {};
				::set data [string range $data $n end]
				if {$sum&0xffff} {
					puts -nonewline $sock \025;# NAK
					log $sock "checksum error, sending NAK"
					if {[llength $conn(semiqueue)]} {
						puts -nonewline $sock \005;# ENQ
					}
					continue
				} else {
					puts -nonewline $sock \006;# ACK
					if {[llength $conn(semiqueue)]} {
						puts -nonewline $sock \005;# ENQ
					}
				}
				if {$sub >= 0} {
					dict append conn(semiblock) $id $result
					continue
				} elseif {[dict exists $conn(semiblock) $id]} {
					::set result [dict get $conn(semiblock) $id]$result
					::set conn(semiblock) [dict remove $conn(semiblock) $id]
				}
				::set sub 0
			}
			if {$result != {}} {
				if {[catch {::set result [_decode $result]}]} {
					set r {}
					binary scan $result c* x
					::foreach e $x {
						append r [format { %02x} $e]
					}
					log $sock "invalid data received: S[expr {($cmd&0x7f00)>>8}]F[expr {$cmd&255}]: $r"
					if {!($cmd&1)} {
						#if this was a reply, change it to an F0 reply
						::set cmd [expr {$cmd&-255}]
					}
					::set result {}
				}
			}
			if {$cmd&1} {
				# valid request
				upvar #0 ::secs::[::set sock](prefix) prefix
				::set code "S[expr {($cmd&0x7f00)>>8}]F[expr {$cmd&255}]"
				if {[llength [info procs $eqp(prefix)::$code]]} {
					log $sock $eqp(prefix)$code SECS <- $code[expr {$cmd<0?"(R)":""}] $result
					after idle [list $eqp(prefix)$code [list $dev $sock $id] $cmd $result]
					continue
				}
				if {[llength [info procs $code]]} {
					log $sock ::secs::$code SECS <- $code[expr {$cmd<0?"(R)":""}] $result
					after idle [list ::secs::$code [list $dev $sock $id] $cmd $result]
					continue
				}
				if {$cmd<0} {
					# just reply an acknowledge
					if {($cmd&0x7f00)==0x0900} {
						reply [list $dev $sock $id] $cmd {};# for Stream 9, msg is empty
					} else {
						reply [list $dev $sock $id] $cmd
					}
				}
				log $sock "received unhandled $code: $result"
			} elseif {$cmd&0x8000} {
				# invalid reply
				log $sock :: SECS <- S[expr {($cmd&0x7f00)>>8}]F[expr {$cmd&255}](R) $result
				log $sock :: SECS <- "received invalid reply: dev=$dev, sub=$sub, id=$id"
				write [list $dev $sock $id] [expr {$cmd&-256}] {}
			} elseif {(!$cmd)&&($sub&1)} {
				# valid HSMS control reply
				if {$sub==9} {
					log $sock :: SECS <- "received Separate.req"
				} else {
					write [list $dev $sock $id] [expr {($sub+1)<<16}] {}
				}
			} else {
				# valid reply
				upvar #0 ::secs::[::set sock](expect) expect
				if {[info exists expect]} {
					lassign $expect aid dev1 cmd1 sub1 id1
					if {($dev1!=$dev) || ($id1!=$id) || (([expr {($cmd1&0x7fff)+1}]!=$cmd)&&([expr {$cmd1&0x7f00}]!=$cmd))} {
						::set cmd "S[expr {($cmd&0x7f00)>>8}]F[expr {$cmd&255}](R), dev=$dev, id=$id"
						::set cmd1 "S[expr {($cmd1&0x7f00)>>8}]F[expr {$cmd1&255}](R), dev=$dev1, id=$id1"
						log $sock :: SECS <- "reply does not match request: $cmd (expected $cmd1)"
					} else {
						after cancel $aid
						_reply $sock $cmd $dev $sub $result
					}
				} else {
					log $sock :: SECS <- S[expr {($cmd&0x7f00)>>8}]F[expr {$cmd&255}] $result
					log $sock :: SECS <- "received reply without request: dev=$dev, sub=$sub, id=$id"
				}
			}
		}
	}

	proc _accept {eqp port sock addr prt} {
		upvar #0 ::secs::$sock conn
		::set conn(state) {}
		::set conn(data) {}
		::set conn(eqp) $eqp
		::set conn(host) {}
		::set conn(msgid) 0
		::set conn(port) $port
		::set conn(queue) {}
		::set conn(semiblock) {}
		::set conn(semiqueue) {}
		::set conn(semitimer) {}
		::set conn(retry) 0
		upvar #0 [::set eqp](prefix) prefix
		::set conn(prefix) $prefix

		# log the connection
		fconfigure $sock -blocking 0 -buffering none -translation binary
		fileevent $sock readable [list ::secs::_reader $sock]
		if {$port > 9} {
			write [list -1 $sock] 0x10000 {} ::secs::_handshake
		} else {
			# @TODO: why is this delay needed?
			after 100 [list namespace eval $prefix [list if {[llength [info procs connect]]} [list connect $sock {} $port]]]
		}
	}

	# special function for implementing S1F11 and S2F29
	# Assuming $var is the name of a global array, then
	# ::secs::namelist uses $msg to select a subset of
	# this global array, and converts it to SECS message format.
	proc namelist {msg var} {
		upvar #0 $var info
		::set L [list L]
		::set result $L
		#if list is empty, construct list of all variables
		if {[llength $msg]<2} {
			::set msg [linsert [lsort -integer [array names info]] 0 U2]
		}
		foreach i $msg {
			catch {
				lappend result [linsert $info([lindex $i 1]) 0 L $i]
			}
		}
		return $result
	}

	# Special foreach function for messages
	# If msg has the form
	#        $f $i1 $i2 $i3 $i4 $i5
	# where $f is [UI][1248]|A|F[48]|BL?|, then this will be handled as if it was:
	#        L {$f $i5} {$f $i5} {$f $i5} {$f $i5} {$f $i5}
	# and then the normal foreach will be used.
	proc foreach {args} {
		::set code [lindex $args end]
		::set len [llength $args]
		for {::set i 1} {$i < $len} {incr i 2} {
			# if msg starts with valid format, strip the first element
			::set msg [lindex $args $i]
			if {[regexp {^([UI][1248]|F[48]|A|L|BL?|V([1-9A-F][0-9A-F]{0,3})?)$} [lindex $msg 0] dummy f]} {
				::set msg [lrange $msg 1 end]
				::set args [lreplace $args $i $i $msg]
			} else {
				::set f A
			}
			if {$f!="L"} {
				#if the element is not a structure, make it one
				::foreach v [lindex $args [expr {$i-1}]] {
					::set code "::set $v \[list $f \$$v\]\n$code"
				}
			}
		}
		uplevel 1 [linsert [lreplace $args end end $code] 0 ::foreach]
	}

	# Get/Set shared equipment information
	#   msg = SECS message containing a list of variables
	#   val = SECS message containing a list of values
	# returns SECS message containing a list of values
	proc set {dev msg args} {
		eqp $dev eqp
		::set L [list L]
		::set result $L
		if {[llength $args]} {
			::set args [lindex $args 0]
			if {[llength $args]} {
				foreach i $msg j $args {
					::set $eqp([lindex $i 1]) $j
					lappend result $j
				}
			} else {
				foreach i $msg {
					if {[catch {::set j $eqp([lindex $i 1])}]} {
						::set j $L
					}
					lappend result [list L $i $j]
				}
			}
		} else {
			foreach i $msg {
				if {[catch {::set j $eqp([lindex $i 1])}]} {
					::set j $L
				}
				lappend result $j
			}
		}
		return $result
	}

	# initialize external connection
	#   host = host to connect to or SECS-I mode (empty if passive HSMS)
	#   port = port number. 1-9 = SECS-I
	proc init {host port} {
		::set eqp [uplevel 1 [list namespace current]]::EQP
		upvar #0 [::set eqp](prefix) prefix
		if {![info exists prefix]} {
			::set prefix [uplevel 1 [list namespace current]]
			if {$prefix ne "::"} {
				append prefix ::
			}
		}
		if {$host == {}} {
			# initiate server socket (passive)
			return [socket -server [list ::secs::_accept $eqp $port] [expr {abs($port)}]]
		}
		if {[catch {
			if {$port > 9} {
				# initiate client socket (active)
				::set sock [socket $host $port]
			} elseif {$port < 0} {
				#negative ports mean use SECS-1 protocol over HSMS, for testing
				::set sock [socket $host [expr {-$port}]]
			} else {
				# initiate serial connection
				global tcl_platform
				switch $tcl_platform(os) {
					{HP-UX} {error "Must configure comPort"}
					{Linux} {::set comPort /dev/modem}
					{OSF1} {error "Must configure comPort"}
					{SunOS} {::set comPort /dev/cua/a}
					{Windows NT} {::set comPort COM$port:}
					default {error "Must configure comPort"}
				}
				::set sock [open $comPort r+]
				fconfigure $sock -mode $host
			}
		}]} {
			::set t5 [::set ${prefix}::T5]
			after $t5 [list namespace eval $prefix [list ::secs::init $host $port]]
			tailcall namespace eval $prefix [list if {[llength [info procs log]]} [list log "Cannot open connection to $host:$port. Trying again in [expr {$t5/1000}] s"]]
		}

		fconfigure $sock -blocking 0 -buffering none -translation binary
		upvar #0 ::secs::$sock conn
		::set conn(state) {}
		::set conn(data) {}
		::set conn(eqp) $eqp
		::set conn(host) $host
		::set conn(msgid) 0
		::set conn(port) $port
		::set conn(queue) {}
		::set conn(semiblock) {}
		::set conn(semiqueue) {}
		::set conn(semitimer) {}
		::set conn(prefix) $prefix
		::set conn(retry) 0
		fileevent $sock readable [list ::secs::_reader $sock]
		if {$port > 9} {
			write [list -1 $sock] 0x10000 {} ::secs::_handshake
		} else {
			after idle [list namespace eval $prefix [list if {[llength [info procs connect]]} [list connect $sock $host $port]]]
		}
	}

	# call user log function
	proc log {dev args} {
		if {[llength $dev] < 2} {
			::set dev [list {} $dev]
		}
		::set temp [lassign $args proc]
		if {[string range $proc 0 1] eq "::"} {
			::set args $temp
		} else {
			::set nr [info frame]
			::set proc ::
			::while {[incr nr -1] > 0} {
				::set frame [info frame $nr]
				if {![dict exists $frame proc]} {
					continue
				}
				if {[string range [dict get $frame proc] 0 7] eq "::secs::"} {
					continue
				}
				if {[string range [dict get $frame proc] 0 10] eq "::tcltest::"} {
					continue
				}
				::set proc [dict get $frame proc]
				break
			}
		}
		upvar #0 ::secs::[lindex $dev 1](prefix) prefix
		if {[info exists prefix]} {
			after idle [list namespace eval $prefix [list if {[llength [info procs log]]} [list log $proc {*}$args]]]
		}
	}

	# link variable eqp with equipment shared information
	# dev = either name of global array, or socket name, or device
	proc eqp {dev eqp} {
		if {[llength $dev] > 1} {
			::set dev [lindex $dev 1]
		}
		if {[catch {upvar #0 ::secs::$dev conn}]} {
			::set result 0
		} else {
			::set result [info exists conn(eqp)]
		}
		if {$result} {
			uplevel 1 [list upvar #0 $conn(eqp) $eqp]
		} else {
			uplevel 1 [list upvar #0 $dev $eqp]
		}
		return $result
	}

	namespace ensemble create
}

if {![llength [info procs tailcall]]} {
	proc tailcall args {
		return -level 1 -code return [uplevel 1 $args]
	}
}

# determine version number automatically from the file name
regexp -- {-(.*)\.tm} [file tail [info script]] dummy version

# if everything succeeded, register this package
package provide secs $version
