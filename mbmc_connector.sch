<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="9" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-sullinselectronics" urn="urn:adsk.eagle:library:190">
<description>&lt;b&gt;Connector from Sullins Electronic&lt;/b&gt;&lt;p&gt;
www.sullinselectronics.com&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;p&gt;</description>
<packages>
<package name="050_610_HF-10/20" urn="urn:adsk.eagle:footprint:10404/1" library_version="1">
<description>&lt;b&gt;.050 DIP EDGE CARD CONNECTOR&lt;/b&gt; SURFACE MOUNT&lt;p&gt;
.050 [1.27mm] CONTACT CENTERS .610" INSULATEOR HEIGHT&lt;br&gt;
Source: .050 DIP EDGE CARD.pdf</description>
<wire x1="-16.95" y1="-4.6" x2="-9.3" y2="-4.6" width="0.2032" layer="21"/>
<wire x1="-9.3" y1="-4.6" x2="9.3" y2="-4.6" width="0.2032" layer="51"/>
<wire x1="9.3" y1="-4.6" x2="16.925" y2="-4.6" width="0.2032" layer="21"/>
<wire x1="16.925" y1="-4.6" x2="16.925" y2="4.6" width="0.2032" layer="21"/>
<wire x1="16.925" y1="4.6" x2="9.3" y2="4.6" width="0.2032" layer="21"/>
<wire x1="9.3" y1="4.6" x2="-9.3" y2="4.6" width="0.2032" layer="51"/>
<wire x1="-9.3" y1="4.6" x2="-16.95" y2="4.6" width="0.2032" layer="21"/>
<wire x1="-16.95" y1="4.6" x2="-16.95" y2="-4.6" width="0.2032" layer="21"/>
<wire x1="-9.3" y1="4.6" x2="-9.3" y2="-4.6" width="0.2032" layer="21"/>
<wire x1="9.3" y1="-4.6" x2="9.3" y2="4.6" width="0.2032" layer="21"/>
<wire x1="-6.875" y1="-0.515" x2="6.9" y2="-0.515" width="0.2032" layer="21"/>
<wire x1="6.9" y1="-0.515" x2="6.9" y2="0.515" width="0.2032" layer="21"/>
<wire x1="6.9" y1="0.515" x2="-6.875" y2="0.515" width="0.2032" layer="21"/>
<wire x1="-6.875" y1="0.515" x2="-6.875" y2="-0.515" width="0.2032" layer="21"/>
<wire x1="7.535" y1="1.15" x2="-7.51" y2="1.15" width="0.2032" layer="21"/>
<wire x1="-7.51" y1="-1.15" x2="7.535" y2="-1.15" width="0.2032" layer="21"/>
<wire x1="7.535" y1="-1.15" x2="7.535" y2="1.15" width="0.2032" layer="21"/>
<wire x1="-7.51" y1="1.15" x2="-7.51" y2="-1.15" width="0.2032" layer="21"/>
<wire x1="-9.2075" y1="1.905" x2="-8.255" y2="0.9525" width="0.2032" layer="21" curve="-90"/>
<wire x1="-8.255" y1="-0.9525" x2="-9.2075" y2="-1.905" width="0.2032" layer="21" curve="-89.987971"/>
<wire x1="-8.255" y1="0.9525" x2="-8.255" y2="-0.9525" width="0.2032" layer="21"/>
<smd name="1" x="-5.715" y="5.715" dx="1" dy="2.5" layer="1"/>
<smd name="2" x="-4.445" y="5.715" dx="1" dy="2.5" layer="1"/>
<smd name="3" x="-3.175" y="5.715" dx="1" dy="2.5" layer="1"/>
<smd name="4" x="-1.905" y="5.715" dx="1" dy="2.5" layer="1"/>
<smd name="5" x="-0.635" y="5.715" dx="1" dy="2.5" layer="1"/>
<smd name="6" x="0.635" y="5.715" dx="1" dy="2.5" layer="1"/>
<smd name="7" x="1.905" y="5.715" dx="1" dy="2.5" layer="1"/>
<smd name="8" x="3.175" y="5.715" dx="1" dy="2.5" layer="1"/>
<smd name="9" x="4.445" y="5.715" dx="1" dy="2.5" layer="1"/>
<smd name="10" x="5.715" y="5.715" dx="1" dy="2.5" layer="1"/>
<smd name="11" x="-5.715" y="-5.715" dx="1" dy="2.5" layer="1"/>
<smd name="12" x="-4.445" y="-5.715" dx="1" dy="2.5" layer="1"/>
<smd name="13" x="-3.175" y="-5.715" dx="1" dy="2.5" layer="1"/>
<smd name="14" x="-1.905" y="-5.715" dx="1" dy="2.5" layer="1"/>
<smd name="15" x="-0.635" y="-5.715" dx="1" dy="2.5" layer="1"/>
<smd name="16" x="0.635" y="-5.715" dx="1" dy="2.5" layer="1"/>
<smd name="17" x="1.905" y="-5.715" dx="1" dy="2.5" layer="1"/>
<smd name="18" x="3.175" y="-5.715" dx="1" dy="2.5" layer="1"/>
<smd name="19" x="4.445" y="-5.715" dx="1" dy="2.5" layer="1"/>
<smd name="20" x="5.715" y="-5.715" dx="1" dy="2.5" layer="1"/>
<text x="-15.875" y="5.08" size="1.27" layer="25">&gt;NAME</text>
<text x="-17.145" y="-6.35" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-7.62" y1="2.8575" x2="-6.985" y2="3.4925" layer="21"/>
<rectangle x1="-6.15" y1="4.65" x2="-5.275" y2="5.7" layer="51"/>
<rectangle x1="-4.88" y1="4.65" x2="-4.005" y2="5.7" layer="51"/>
<rectangle x1="-3.61" y1="4.65" x2="-2.735" y2="5.7" layer="51"/>
<rectangle x1="-2.34" y1="4.65" x2="-1.465" y2="5.7" layer="51"/>
<rectangle x1="-1.07" y1="4.65" x2="-0.195" y2="5.7" layer="51"/>
<rectangle x1="0.2" y1="4.65" x2="1.075" y2="5.7" layer="51"/>
<rectangle x1="1.47" y1="4.65" x2="2.345" y2="5.7" layer="51"/>
<rectangle x1="2.74" y1="4.65" x2="3.615" y2="5.7" layer="51"/>
<rectangle x1="4.01" y1="4.65" x2="4.885" y2="5.7" layer="51"/>
<rectangle x1="5.28" y1="4.65" x2="6.155" y2="5.7" layer="51"/>
<rectangle x1="5.275" y1="-5.7" x2="6.15" y2="-4.65" layer="51" rot="R180"/>
<rectangle x1="4.005" y1="-5.7" x2="4.88" y2="-4.65" layer="51" rot="R180"/>
<rectangle x1="2.735" y1="-5.7" x2="3.61" y2="-4.65" layer="51" rot="R180"/>
<rectangle x1="1.465" y1="-5.7" x2="2.34" y2="-4.65" layer="51" rot="R180"/>
<rectangle x1="0.195" y1="-5.7" x2="1.07" y2="-4.65" layer="51" rot="R180"/>
<rectangle x1="-1.075" y1="-5.7" x2="-0.2" y2="-4.65" layer="51" rot="R180"/>
<rectangle x1="-2.345" y1="-5.7" x2="-1.47" y2="-4.65" layer="51" rot="R180"/>
<rectangle x1="-3.615" y1="-5.7" x2="-2.74" y2="-4.65" layer="51" rot="R180"/>
<rectangle x1="-4.885" y1="-5.7" x2="-4.01" y2="-4.65" layer="51" rot="R180"/>
<rectangle x1="-6.155" y1="-5.7" x2="-5.28" y2="-4.65" layer="51" rot="R180"/>
<hole x="-13.03" y="0" drill="3.18"/>
<hole x="13.03" y="0" drill="3.18"/>
</package>
<package name="050_610_HH-10/20" urn="urn:adsk.eagle:footprint:10405/1" library_version="1">
<description>&lt;b&gt;.050 DIP EDGE CARD CONNECTOR&lt;/b&gt; STAGGERED DIP SOLDER&lt;p&gt;
.050 [1.27mm] CONTACT CENTERS .610" INSULATEOR HEIGHT&lt;br&gt;
Source: .050 DIP EDGE CARD.pdf</description>
<wire x1="-16.95" y1="-4.6" x2="16.925" y2="-4.6" width="0.2032" layer="21"/>
<wire x1="16.925" y1="-4.6" x2="16.925" y2="4.6" width="0.2032" layer="21"/>
<wire x1="16.925" y1="4.6" x2="-16.95" y2="4.6" width="0.2032" layer="21"/>
<wire x1="-16.95" y1="4.6" x2="-16.95" y2="-4.6" width="0.2032" layer="21"/>
<wire x1="-9.3" y1="4.55" x2="-9.3" y2="-4.55" width="0.2032" layer="21"/>
<wire x1="9.3" y1="-4.55" x2="9.3" y2="4.55" width="0.2032" layer="21"/>
<wire x1="-6.875" y1="-0.515" x2="6.9" y2="-0.515" width="0.2032" layer="21"/>
<wire x1="6.9" y1="-0.515" x2="6.9" y2="0.515" width="0.2032" layer="21"/>
<wire x1="6.9" y1="0.515" x2="-6.875" y2="0.515" width="0.2032" layer="21"/>
<wire x1="-6.875" y1="0.515" x2="-6.875" y2="-0.515" width="0.2032" layer="21"/>
<wire x1="7.535" y1="1.15" x2="-7.51" y2="1.15" width="0.2032" layer="51"/>
<wire x1="-7.51" y1="-1.15" x2="7.535" y2="-1.15" width="0.2032" layer="51"/>
<wire x1="7.535" y1="-1.15" x2="7.535" y2="1.15" width="0.2032" layer="21"/>
<wire x1="-7.51" y1="1.15" x2="-7.51" y2="-1.15" width="0.2032" layer="21"/>
<wire x1="-9.2075" y1="1.905" x2="-8.255" y2="0.9525" width="0.2032" layer="21" curve="-90"/>
<wire x1="-8.255" y1="-0.9525" x2="-9.2075" y2="-1.905" width="0.2032" layer="21" curve="-89.987971"/>
<wire x1="-8.255" y1="0.9525" x2="-8.255" y2="-0.9525" width="0.2032" layer="21"/>
<pad name="1" x="-5.715" y="2.54" drill="0.6" diameter="1"/>
<pad name="2" x="-4.445" y="1.27" drill="0.6" diameter="1"/>
<pad name="3" x="-3.175" y="2.54" drill="0.6" diameter="1"/>
<pad name="4" x="-1.905" y="1.27" drill="0.6" diameter="1"/>
<pad name="5" x="-0.635" y="2.54" drill="0.6" diameter="1"/>
<pad name="6" x="0.635" y="1.27" drill="0.6" diameter="1" rot="R180"/>
<pad name="7" x="1.905" y="2.54" drill="0.6" diameter="1" rot="R180"/>
<pad name="8" x="3.175" y="1.27" drill="0.6" diameter="1" rot="R180"/>
<pad name="9" x="4.445" y="2.54" drill="0.6" diameter="1" rot="R180"/>
<pad name="10" x="5.715" y="1.27" drill="0.6" diameter="1" rot="R180"/>
<pad name="11" x="-5.715" y="-1.27" drill="0.6" diameter="1" rot="R180"/>
<pad name="12" x="-4.445" y="-2.54" drill="0.6" diameter="1" rot="R180"/>
<pad name="13" x="-3.175" y="-1.27" drill="0.6" diameter="1" rot="R180"/>
<pad name="14" x="-1.905" y="-2.54" drill="0.6" diameter="1" rot="R180"/>
<pad name="15" x="-0.635" y="-1.27" drill="0.6" diameter="1" rot="R180"/>
<pad name="16" x="0.635" y="-2.54" drill="0.6" diameter="1" rot="R180"/>
<pad name="17" x="1.905" y="-1.27" drill="0.6" diameter="1" rot="R180"/>
<pad name="18" x="3.175" y="-2.54" drill="0.6" diameter="1" rot="R180"/>
<pad name="19" x="4.445" y="-1.27" drill="0.6" diameter="1" rot="R180"/>
<pad name="20" x="5.715" y="-2.54" drill="0.6" diameter="1" rot="R180"/>
<text x="-9.525" y="5.08" size="1.27" layer="25">&gt;NAME</text>
<text x="-9.525" y="-6.35" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-7.62" y1="2.8575" x2="-6.985" y2="3.4925" layer="21"/>
<hole x="-13.03" y="0" drill="3.18"/>
<hole x="13.03" y="0" drill="3.18"/>
</package>
</packages>
<packages3d>
<package3d name="050_610_HF-10/20" urn="urn:adsk.eagle:package:10445/1" type="box" library_version="1">
<description>.050 DIP EDGE CARD CONNECTOR SURFACE MOUNT
.050 [1.27mm] CONTACT CENTERS .610" INSULATEOR HEIGHT
Source: .050 DIP EDGE CARD.pdf</description>
<packageinstances>
<packageinstance name="050_610_HF-10/20"/>
</packageinstances>
</package3d>
<package3d name="050_610_HH-10/20" urn="urn:adsk.eagle:package:10436/1" type="box" library_version="1">
<description>.050 DIP EDGE CARD CONNECTOR STAGGERED DIP SOLDER
.050 [1.27mm] CONTACT CENTERS .610" INSULATEOR HEIGHT
Source: .050 DIP EDGE CARD.pdf</description>
<packageinstances>
<packageinstance name="050_610_HH-10/20"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="P20" urn="urn:adsk.eagle:symbol:10403/1" library_version="1">
<wire x1="3.81" y1="-15.24" x2="-3.81" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="12.7" x2="-3.81" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-15.24" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="12.7" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="10.16" x2="-1.27" y2="10.16" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-1.27" y2="7.62" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-1.27" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="2.54" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-12.7" x2="2.54" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-1.27" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="-1.27" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-10.16" x2="-1.27" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-12.7" x2="-1.27" y2="-12.7" width="0.6096" layer="94"/>
<text x="-3.81" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="13.462" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="2" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="3" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="4" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="5" x="7.62" y="0" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="6" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="7" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="8" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="9" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="10" x="7.62" y="-12.7" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="11" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas"/>
<pin name="12" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas"/>
<pin name="13" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas"/>
<pin name="14" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas"/>
<pin name="15" x="-7.62" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="16" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="17" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas"/>
<pin name="18" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas"/>
<pin name="19" x="-7.62" y="-10.16" visible="pad" length="middle" direction="pas"/>
<pin name="20" x="-7.62" y="-12.7" visible="pad" length="middle" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="050_610_?-10/20" urn="urn:adsk.eagle:component:10465/1" prefix="X" library_version="1">
<description>&lt;b&gt;.050 DIP EDGE CARD CONNECTOR&lt;/b&gt;&lt;p&gt;
.050 [1.27mm] CONTACT CENTERS .610" INSULATEOR HEIGHT&lt;br&gt;
Source: .050 DIP EDGE CARD.pdf</description>
<gates>
<gate name="G$1" symbol="P20" x="0" y="0"/>
</gates>
<devices>
<device name="HF" package="050_610_HF-10/20">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10445/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HH" package="050_610_HH-10/20">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10436/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-garry" urn="urn:adsk.eagle:library:147">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;a href="www.mpe-connector.de"&gt;Menufacturer&lt;/a&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="332-28" urn="urn:adsk.eagle:footprint:6798/1" library_version="2">
<description>&lt;b&gt;28 Pin - 2mm Dual Row&lt;/b&gt;&lt;p&gt;
Source: www.mpe-connector.de / garry_shortform_2012.pdf</description>
<wire x1="-13.85" y1="-1.9" x2="13.85" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="13.85" y1="-1.9" x2="13.85" y2="-0.4" width="0.2032" layer="21"/>
<wire x1="13.85" y1="0.4" x2="13.85" y2="1.9" width="0.2032" layer="21"/>
<wire x1="13.85" y1="1.9" x2="-13.85" y2="1.9" width="0.2032" layer="21"/>
<wire x1="-13.85" y1="1.9" x2="-13.85" y2="0.4" width="0.2032" layer="21"/>
<wire x1="-13.85" y1="-0.4" x2="-13.85" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="-13.85" y1="0.4" x2="-13.85" y2="-0.4" width="0.2032" layer="21" curve="-129.185"/>
<wire x1="13.85" y1="-0.4" x2="13.85" y2="0.4" width="0.2032" layer="21" curve="-129.185"/>
<wire x1="-13" y1="1" x2="-13" y2="-6" width="0.55" layer="51"/>
<wire x1="-11" y1="1" x2="-11" y2="-6" width="0.55" layer="51"/>
<wire x1="-9" y1="1" x2="-9" y2="-6" width="0.55" layer="51"/>
<wire x1="-7" y1="1" x2="-7" y2="-6" width="0.55" layer="51"/>
<wire x1="-5" y1="1" x2="-5" y2="-6" width="0.55" layer="51"/>
<wire x1="-3" y1="1" x2="-3" y2="-6" width="0.55" layer="51"/>
<wire x1="-1" y1="1" x2="-1" y2="-6" width="0.55" layer="51"/>
<wire x1="1" y1="1" x2="1" y2="-6" width="0.55" layer="51"/>
<wire x1="3" y1="1" x2="3" y2="-6" width="0.55" layer="51"/>
<wire x1="5" y1="1" x2="5" y2="-6" width="0.55" layer="51"/>
<wire x1="7" y1="1" x2="7" y2="-6" width="0.55" layer="51"/>
<wire x1="9" y1="1" x2="9" y2="-6" width="0.55" layer="51"/>
<wire x1="11" y1="1" x2="11" y2="-6" width="0.55" layer="51"/>
<wire x1="13" y1="1" x2="13" y2="-6" width="0.55" layer="51"/>
<pad name="1" x="-13" y="-1" drill="0.9" diameter="1.27"/>
<pad name="2" x="-13" y="1" drill="0.9" diameter="1.27"/>
<pad name="3" x="-11" y="-1" drill="0.9" diameter="1.27"/>
<pad name="4" x="-11" y="1" drill="0.9" diameter="1.27"/>
<pad name="5" x="-9" y="-1" drill="0.9" diameter="1.27"/>
<pad name="6" x="-9" y="1" drill="0.9" diameter="1.27"/>
<pad name="7" x="-7" y="-1" drill="0.9" diameter="1.27"/>
<pad name="8" x="-7" y="1" drill="0.9" diameter="1.27"/>
<pad name="9" x="-5" y="-1" drill="0.9" diameter="1.27"/>
<pad name="10" x="-5" y="1" drill="0.9" diameter="1.27"/>
<pad name="11" x="-3" y="-1" drill="0.9" diameter="1.27"/>
<pad name="12" x="-3" y="1" drill="0.9" diameter="1.27"/>
<pad name="13" x="-1" y="-1" drill="0.9" diameter="1.27"/>
<pad name="14" x="-1" y="1" drill="0.9" diameter="1.27"/>
<pad name="15" x="1" y="-1" drill="0.9" diameter="1.27"/>
<pad name="16" x="1" y="1" drill="0.9" diameter="1.27"/>
<pad name="17" x="3" y="-1" drill="0.9" diameter="1.27"/>
<pad name="18" x="3" y="1" drill="0.9" diameter="1.27"/>
<pad name="19" x="5" y="-1" drill="0.9" diameter="1.27"/>
<pad name="20" x="5" y="1" drill="0.9" diameter="1.27"/>
<pad name="21" x="7" y="-1" drill="0.9" diameter="1.27"/>
<pad name="22" x="7" y="1" drill="0.9" diameter="1.27"/>
<pad name="23" x="9" y="-1" drill="0.9" diameter="1.27"/>
<pad name="24" x="9" y="1" drill="0.9" diameter="1.27"/>
<pad name="25" x="11" y="-1" drill="0.9" diameter="1.27"/>
<pad name="26" x="11" y="1" drill="0.9" diameter="1.27"/>
<pad name="27" x="13" y="-1" drill="0.9" diameter="1.27"/>
<pad name="28" x="13" y="1" drill="0.9" diameter="1.27"/>
<text x="-13.65" y="-1.75" size="0.3048" layer="21" font="vector">1</text>
<text x="-13.62" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-7.27" y="2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-13.25" y1="-1.25" x2="-12.75" y2="-0.75" layer="51"/>
<rectangle x1="-13.25" y1="0.75" x2="-12.75" y2="1.25" layer="51"/>
<rectangle x1="-11.25" y1="-1.25" x2="-10.75" y2="-0.75" layer="51"/>
<rectangle x1="-11.25" y1="0.75" x2="-10.75" y2="1.25" layer="51"/>
<rectangle x1="-9.25" y1="-1.25" x2="-8.75" y2="-0.75" layer="51"/>
<rectangle x1="-9.25" y1="0.75" x2="-8.75" y2="1.25" layer="51"/>
<rectangle x1="-7.25" y1="-1.25" x2="-6.75" y2="-0.75" layer="51"/>
<rectangle x1="-7.25" y1="0.75" x2="-6.75" y2="1.25" layer="51"/>
<rectangle x1="-5.25" y1="-1.25" x2="-4.75" y2="-0.75" layer="51"/>
<rectangle x1="-5.25" y1="0.75" x2="-4.75" y2="1.25" layer="51"/>
<rectangle x1="-3.25" y1="-1.25" x2="-2.75" y2="-0.75" layer="51"/>
<rectangle x1="-3.25" y1="0.75" x2="-2.75" y2="1.25" layer="51"/>
<rectangle x1="-1.25" y1="-1.25" x2="-0.75" y2="-0.75" layer="51"/>
<rectangle x1="-1.25" y1="0.75" x2="-0.75" y2="1.25" layer="51"/>
<rectangle x1="0.75" y1="-1.25" x2="1.25" y2="-0.75" layer="51"/>
<rectangle x1="0.75" y1="0.75" x2="1.25" y2="1.25" layer="51"/>
<rectangle x1="2.75" y1="-1.25" x2="3.25" y2="-0.75" layer="51"/>
<rectangle x1="2.75" y1="0.75" x2="3.25" y2="1.25" layer="51"/>
<rectangle x1="4.75" y1="-1.25" x2="5.25" y2="-0.75" layer="51"/>
<rectangle x1="4.75" y1="0.75" x2="5.25" y2="1.25" layer="51"/>
<rectangle x1="6.75" y1="-1.25" x2="7.25" y2="-0.75" layer="51"/>
<rectangle x1="6.75" y1="0.75" x2="7.25" y2="1.25" layer="51"/>
<rectangle x1="8.75" y1="-1.25" x2="9.25" y2="-0.75" layer="51"/>
<rectangle x1="8.75" y1="0.75" x2="9.25" y2="1.25" layer="51"/>
<rectangle x1="10.75" y1="-1.25" x2="11.25" y2="-0.75" layer="51"/>
<rectangle x1="10.75" y1="0.75" x2="11.25" y2="1.25" layer="51"/>
<rectangle x1="12.75" y1="-1.25" x2="13.25" y2="-0.75" layer="51"/>
<rectangle x1="12.75" y1="0.75" x2="13.25" y2="1.25" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="332-28" urn="urn:adsk.eagle:package:6821/1" type="box" library_version="2">
<description>28 Pin - 2mm Dual Row
Source: www.mpe-connector.de / garry_shortform_2012.pdf</description>
<packageinstances>
<packageinstance name="332-28"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MV" urn="urn:adsk.eagle:symbol:6783/1" library_version="2">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M" urn="urn:adsk.eagle:symbol:6785/1" library_version="2">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="332-28" urn="urn:adsk.eagle:component:6843/2" prefix="X" library_version="2">
<description>&lt;b&gt;28 Pin - 2mm Dual Row&lt;/b&gt;&lt;p&gt;
Source: www.mpe-connector.de / garry_shortform_2012.pdf</description>
<gates>
<gate name="-1" symbol="MV" x="-10.16" y="15.24" addlevel="always"/>
<gate name="-2" symbol="MV" x="10.16" y="15.24" addlevel="always"/>
<gate name="-3" symbol="M" x="-10.16" y="12.7" addlevel="always"/>
<gate name="-4" symbol="M" x="10.16" y="12.7" addlevel="always"/>
<gate name="-5" symbol="M" x="-10.16" y="10.16" addlevel="always"/>
<gate name="-6" symbol="M" x="10.16" y="10.16" addlevel="always"/>
<gate name="-7" symbol="M" x="-10.16" y="7.62" addlevel="always"/>
<gate name="-8" symbol="M" x="10.16" y="7.62" addlevel="always"/>
<gate name="-9" symbol="M" x="-10.16" y="5.08" addlevel="always"/>
<gate name="-10" symbol="M" x="10.16" y="5.08" addlevel="always"/>
<gate name="-11" symbol="M" x="-10.16" y="2.54" addlevel="always"/>
<gate name="-12" symbol="M" x="10.16" y="2.54" addlevel="always"/>
<gate name="-13" symbol="M" x="-10.16" y="0" addlevel="always"/>
<gate name="-14" symbol="M" x="10.16" y="0" addlevel="always"/>
<gate name="-15" symbol="M" x="-10.16" y="-2.54" addlevel="always"/>
<gate name="-16" symbol="M" x="10.16" y="-2.54" addlevel="always"/>
<gate name="-17" symbol="M" x="-10.16" y="-5.08" addlevel="always"/>
<gate name="-18" symbol="M" x="10.16" y="-5.08" addlevel="always"/>
<gate name="-19" symbol="M" x="-10.16" y="-7.62" addlevel="always"/>
<gate name="-20" symbol="M" x="10.16" y="-7.62" addlevel="always"/>
<gate name="-21" symbol="M" x="-10.16" y="-10.16" addlevel="always"/>
<gate name="-22" symbol="M" x="10.16" y="-10.16" addlevel="always"/>
<gate name="-23" symbol="M" x="-10.16" y="-12.7" addlevel="always"/>
<gate name="-24" symbol="M" x="10.16" y="-12.7" addlevel="always"/>
<gate name="-25" symbol="M" x="-10.16" y="-15.24" addlevel="always"/>
<gate name="-26" symbol="M" x="10.16" y="-15.24" addlevel="always"/>
<gate name="-27" symbol="M" x="-10.16" y="-17.78" addlevel="always"/>
<gate name="-28" symbol="M" x="10.16" y="-17.78" addlevel="always"/>
</gates>
<devices>
<device name="" package="332-28">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-10" pin="S" pad="10"/>
<connect gate="-11" pin="S" pad="11"/>
<connect gate="-12" pin="S" pad="12"/>
<connect gate="-13" pin="S" pad="13"/>
<connect gate="-14" pin="S" pad="14"/>
<connect gate="-15" pin="S" pad="15"/>
<connect gate="-16" pin="S" pad="16"/>
<connect gate="-17" pin="S" pad="17"/>
<connect gate="-18" pin="S" pad="18"/>
<connect gate="-19" pin="S" pad="19"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-20" pin="S" pad="20"/>
<connect gate="-21" pin="S" pad="21"/>
<connect gate="-22" pin="S" pad="22"/>
<connect gate="-23" pin="S" pad="23"/>
<connect gate="-24" pin="S" pad="24"/>
<connect gate="-25" pin="S" pad="25"/>
<connect gate="-26" pin="S" pad="26"/>
<connect gate="-27" pin="S" pad="27"/>
<connect gate="-28" pin="S" pad="28"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
<connect gate="-8" pin="S" pad="8"/>
<connect gate="-9" pin="S" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:6821/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="DIGITAL/PWR" library="con-sullinselectronics" library_urn="urn:adsk.eagle:library:190" deviceset="050_610_?-10/20" device="HF" package3d_urn="urn:adsk.eagle:package:10445/1"/>
<part name="ANALOG" library="con-garry" library_urn="urn:adsk.eagle:library:147" deviceset="332-28" device="" package3d_urn="urn:adsk.eagle:package:6821/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="DIGITAL/PWR" gate="G$1" x="68.58" y="76.2" smashed="yes">
<attribute name="VALUE" x="64.77" y="58.42" size="1.778" layer="96"/>
<attribute name="NAME" x="64.77" y="89.662" size="1.778" layer="95"/>
</instance>
<instance part="ANALOG" gate="-1" x="55.88" y="38.1" smashed="yes">
<attribute name="NAME" x="58.42" y="37.338" size="1.524" layer="95"/>
<attribute name="VALUE" x="55.118" y="39.497" size="1.778" layer="96"/>
</instance>
<instance part="ANALOG" gate="-2" x="76.2" y="38.1" smashed="yes">
<attribute name="NAME" x="78.74" y="37.338" size="1.524" layer="95"/>
<attribute name="VALUE" x="75.438" y="39.497" size="1.778" layer="96"/>
</instance>
<instance part="ANALOG" gate="-3" x="55.88" y="35.56" smashed="yes">
<attribute name="NAME" x="58.42" y="34.798" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-4" x="76.2" y="35.56" smashed="yes">
<attribute name="NAME" x="78.74" y="34.798" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-5" x="55.88" y="33.02" smashed="yes">
<attribute name="NAME" x="58.42" y="32.258" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-6" x="76.2" y="33.02" smashed="yes">
<attribute name="NAME" x="78.74" y="32.258" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-7" x="55.88" y="30.48" smashed="yes">
<attribute name="NAME" x="58.42" y="29.718" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-8" x="76.2" y="30.48" smashed="yes">
<attribute name="NAME" x="78.74" y="29.718" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-9" x="55.88" y="27.94" smashed="yes">
<attribute name="NAME" x="58.42" y="27.178" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-10" x="76.2" y="27.94" smashed="yes">
<attribute name="NAME" x="78.74" y="27.178" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-11" x="55.88" y="25.4" smashed="yes">
<attribute name="NAME" x="58.42" y="24.638" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-12" x="76.2" y="25.4" smashed="yes">
<attribute name="NAME" x="78.74" y="24.638" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-13" x="55.88" y="22.86" smashed="yes">
<attribute name="NAME" x="58.42" y="22.098" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-14" x="76.2" y="22.86" smashed="yes">
<attribute name="NAME" x="78.74" y="22.098" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-15" x="55.88" y="20.32" smashed="yes">
<attribute name="NAME" x="58.42" y="19.558" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-16" x="76.2" y="20.32" smashed="yes">
<attribute name="NAME" x="78.74" y="19.558" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-17" x="55.88" y="17.78" smashed="yes">
<attribute name="NAME" x="58.42" y="17.018" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-18" x="76.2" y="17.78" smashed="yes">
<attribute name="NAME" x="78.74" y="17.018" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-19" x="55.88" y="15.24" smashed="yes">
<attribute name="NAME" x="58.42" y="14.478" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-20" x="76.2" y="15.24" smashed="yes">
<attribute name="NAME" x="78.74" y="14.478" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-21" x="55.88" y="12.7" smashed="yes">
<attribute name="NAME" x="58.42" y="11.938" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-22" x="76.2" y="12.7" smashed="yes">
<attribute name="NAME" x="78.74" y="11.938" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-23" x="55.88" y="10.16" smashed="yes">
<attribute name="NAME" x="58.42" y="9.398" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-24" x="76.2" y="10.16" smashed="yes">
<attribute name="NAME" x="78.74" y="9.398" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-25" x="55.88" y="7.62" smashed="yes">
<attribute name="NAME" x="58.42" y="6.858" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-26" x="76.2" y="7.62" smashed="yes">
<attribute name="NAME" x="78.74" y="6.858" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-27" x="55.88" y="5.08" smashed="yes">
<attribute name="NAME" x="58.42" y="4.318" size="1.524" layer="95"/>
</instance>
<instance part="ANALOG" gate="-28" x="76.2" y="5.08" smashed="yes">
<attribute name="NAME" x="78.74" y="4.318" size="1.524" layer="95"/>
</instance>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
