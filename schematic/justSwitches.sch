<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="16" fill="1" visible="no" active="no"/>
<layer number="3" name="Route3" color="17" fill="1" visible="no" active="no"/>
<layer number="4" name="Route4" color="18" fill="1" visible="no" active="no"/>
<layer number="5" name="Route5" color="19" fill="1" visible="no" active="no"/>
<layer number="6" name="Route6" color="25" fill="1" visible="no" active="no"/>
<layer number="7" name="Route7" color="26" fill="1" visible="no" active="no"/>
<layer number="8" name="Route8" color="27" fill="1" visible="no" active="no"/>
<layer number="9" name="Route9" color="28" fill="1" visible="no" active="no"/>
<layer number="10" name="Route10" color="29" fill="1" visible="no" active="no"/>
<layer number="11" name="Route11" color="30" fill="1" visible="no" active="no"/>
<layer number="12" name="Route12" color="20" fill="1" visible="no" active="no"/>
<layer number="13" name="Route13" color="21" fill="1" visible="no" active="no"/>
<layer number="14" name="Route14" color="22" fill="1" visible="no" active="no"/>
<layer number="15" name="Route15" color="23" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
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
<layer number="144" name="DrillLegend" color="7" fill="1" visible="no" active="yes"/>
<layer number="145" name="DrillLegend_01-16" color="2" fill="9" visible="no" active="yes"/>
<layer number="146" name="DrillLegend_01-20" color="3" fill="9" visible="no" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="raspberryPi4">
<packages>
<package name="G13-SW">
<pad name="P$1" x="-5.08" y="0" drill="2.032" shape="square" rot="R90"/>
<pad name="P$2" x="0" y="0" drill="2.032" shape="square" rot="R90"/>
<pad name="P$3" x="5.08" y="0" drill="2.032" shape="square" rot="R90"/>
<wire x1="-6.35" y1="2.54" x2="-6.35" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-2.54" x2="6.35" y2="-2.54" width="0.127" layer="21"/>
<wire x1="6.35" y1="-2.54" x2="6.35" y2="2.54" width="0.127" layer="21"/>
<wire x1="6.35" y1="2.54" x2="-6.35" y2="2.54" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="G13-SW">
<pin name="P$1" x="-2.54" y="0" length="middle" rot="R90"/>
<pin name="P$2" x="0" y="0" length="middle" rot="R90"/>
<pin name="P$3" x="2.54" y="0" length="middle" rot="R90"/>
<wire x1="-7.62" y1="5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="G13-SW">
<gates>
<gate name="G$1" symbol="G13-SW" x="-7.62" y="-2.54"/>
</gates>
<devices>
<device name="" package="G13-SW">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
<connect gate="G$1" pin="P$3" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="sumayyah">
<packages>
<package name="G13-BUTTON">
<pad name="GPIO" x="7.62" y="2.54" drill="1.27" shape="square"/>
<pad name="GND" x="7.62" y="-2.54" drill="1.27" shape="square"/>
<pad name="N/A" x="-7.62" y="2.54" drill="1.27" shape="square"/>
<pad name="-N/A" x="-7.62" y="-2.54" drill="1.27" shape="square"/>
<wire x1="7.62" y1="-7.62" x2="-7.62" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-7.62" x2="-7.62" y2="7.62" width="0.127" layer="21"/>
<wire x1="-7.62" y1="7.62" x2="7.62" y2="7.62" width="0.127" layer="21"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="-7.62" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="G13-BUTTON">
<pin name="GPIO" x="5.08" y="2.54" length="middle" rot="R90"/>
<pin name="GND" x="5.08" y="-2.54" length="middle" rot="R270"/>
<pin name="N/A" x="-10.16" y="2.54" length="middle" rot="R90"/>
<pin name="-N/A" x="-10.16" y="-2.54" length="middle" rot="R270"/>
<wire x1="5.08" y1="2.54" x2="-10.16" y2="2.54" width="0.254" layer="94"/>
<wire x1="-10.16" y1="2.54" x2="-10.16" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-2.54" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="G13-BUTTON">
<gates>
<gate name="G$1" symbol="G13-BUTTON" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="G13-BUTTON">
<connects>
<connect gate="G$1" pin="-N/A" pad="-N/A"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GPIO" pad="GPIO"/>
<connect gate="G$1" pin="N/A" pad="N/A"/>
</connects>
<technologies>
<technology name=""/>
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
<part name="U$2" library="raspberryPi4" deviceset="G13-SW" device=""/>
<part name="U$3" library="raspberryPi4" deviceset="G13-SW" device=""/>
<part name="U$6" library="sumayyah" deviceset="G13-BUTTON" device=""/>
<part name="U$7" library="sumayyah" deviceset="G13-BUTTON" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="-93.98" y="71.12" size="1.778" layer="94">Brightness Button</text>
<text x="-83.82" y="-5.08" size="1.778" layer="94">Color Button</text>
<text x="-76.2" y="45.72" size="1.778" layer="94">LED Switch</text>
<text x="-76.2" y="25.4" size="1.778" layer="94">Camera Switch</text>
</plain>
<instances>
<instance part="U$2" gate="G$1" x="-45.72" y="45.72" smashed="yes" rot="R90"/>
<instance part="U$3" gate="G$1" x="-45.72" y="27.94" smashed="yes" rot="R90"/>
<instance part="U$6" gate="G$1" x="-60.96" y="71.12" smashed="yes"/>
<instance part="U$7" gate="G$1" x="-58.42" y="-5.08" smashed="yes"/>
<instance part="GND1" gate="1" x="-48.26" y="60.96" smashed="yes">
<attribute name="VALUE" x="-50.8" y="58.42" size="1.778" layer="96"/>
</instance>
<instance part="GND2" gate="1" x="-45.72" y="-15.24" smashed="yes">
<attribute name="VALUE" x="-48.26" y="-17.78" size="1.778" layer="96"/>
</instance>
<instance part="GND4" gate="1" x="-40.64" y="40.64" smashed="yes">
<attribute name="VALUE" x="-43.18" y="38.1" size="1.778" layer="96"/>
</instance>
<instance part="GND3" gate="1" x="-40.64" y="22.86" smashed="yes">
<attribute name="VALUE" x="-43.18" y="20.32" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="GND2" gate="1" pin="GND"/>
<pinref part="U$7" gate="G$1" pin="GND"/>
<wire x1="-53.34" y1="-7.62" x2="-45.72" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="-7.62" x2="-45.72" y2="-12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="-48.26" y1="63.5" x2="-48.26" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="GND"/>
<wire x1="-55.88" y1="68.58" x2="-48.26" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="P$1"/>
<wire x1="-45.72" y1="43.18" x2="-40.64" y2="43.18" width="0.1524" layer="91"/>
<pinref part="GND4" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="P$2"/>
<wire x1="-45.72" y1="27.94" x2="-40.64" y2="27.94" width="0.1524" layer="91"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="-40.64" y1="27.94" x2="-40.64" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="BRIGHT" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="GPIO"/>
<wire x1="-55.88" y1="73.66" x2="-48.26" y2="73.66" width="0.1524" layer="91"/>
<label x="-48.26" y="73.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="COLOR" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="GPIO"/>
<wire x1="-53.34" y1="-2.54" x2="-45.72" y2="-2.54" width="0.1524" layer="91"/>
<label x="-45.72" y="-2.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="CAMERA" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="P$3"/>
<label x="-40.64" y="30.48" size="1.778" layer="95"/>
<wire x1="-45.72" y1="30.48" x2="-40.64" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="LED" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P$2"/>
<wire x1="-45.72" y1="45.72" x2="-40.64" y2="45.72" width="0.1524" layer="91"/>
<label x="-40.64" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
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
</compatibility>
</eagle>
