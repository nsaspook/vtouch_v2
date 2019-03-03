/*
 Tcl code for secs  secs-0.2.0.tm
 */


/*
 checksum generation
 
 ::set sum 0
                                binary scan $msg1 c* x
                                ::foreach e $x {
                                        incr sum [expr {$e&255}]
                                }
 */

/*
 * checksum checking
 * load sum with received checksum value and subtract to zero
 
 
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
 */