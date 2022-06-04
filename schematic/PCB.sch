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
<package name="RASPI_4B">
<pad name="39" x="24.13" y="-1.27" drill="1.016" diameter="1.6764" shape="square" rot="R180"/>
<pad name="40" x="24.13" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="38" x="21.59" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="37" x="21.59" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="35" x="19.05" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="33" x="16.51" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="31" x="13.97" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="29" x="11.43" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="27" x="8.89" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="25" x="6.35" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="23" x="3.81" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="21" x="1.27" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="19" x="-1.27" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="17" x="-3.81" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="15" x="-6.35" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="13" x="-8.89" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="11" x="-11.43" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="9" x="-13.97" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="7" x="-16.51" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="5" x="-19.05" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="3" x="-21.59" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="1" x="-24.13" y="-1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="2" x="-24.13" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="4" x="-21.59" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="6" x="-19.05" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="8" x="-16.51" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="10" x="-13.97" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="12" x="-11.43" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="14" x="-8.89" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="16" x="-6.35" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="18" x="-3.81" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="20" x="-1.27" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="22" x="1.27" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="24" x="3.81" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="26" x="6.35" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="28" x="8.89" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="30" x="11.43" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="32" x="13.97" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="34" x="16.51" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
<pad name="36" x="19.05" y="1.27" drill="1.016" diameter="1.6764" rot="R180"/>
</package>
<package name="G13-SW">
<pad name="P$1" x="-5.08" y="0" drill="2.032" shape="square" rot="R90"/>
<pad name="P$2" x="0" y="0" drill="2.032" shape="square" rot="R90"/>
<pad name="P$3" x="5.08" y="0" drill="2.032" shape="square" rot="R90"/>
<wire x1="-6.35" y1="2.54" x2="-6.35" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-2.54" x2="6.35" y2="-2.54" width="0.127" layer="21"/>
<wire x1="6.35" y1="-2.54" x2="6.35" y2="2.54" width="0.127" layer="21"/>
<wire x1="6.35" y1="2.54" x2="-6.35" y2="2.54" width="0.127" layer="21"/>
</package>
<package name="LIGHTSENSOR-IO">
<pad name="GND" x="-5.08" y="0" drill="1.016" shape="square"/>
<pad name="VCC" x="-2.54" y="0" drill="1.016" shape="square"/>
<pad name="SCL" x="0" y="0" drill="1.016" shape="square"/>
<pad name="SDA" x="2.54" y="0" drill="1.016" shape="square"/>
<wire x1="-7.62" y1="2.54" x2="-7.62" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-2.54" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="2.54" x2="-7.62" y2="2.54" width="0.127" layer="21"/>
</package>
<package name="LED-STRIP-PO">
<pad name="GND" x="-2.54" y="0" drill="1.016" shape="square"/>
<pad name="D-IN" x="0" y="0" drill="1.016" shape="square"/>
<pad name="VCC" x="2.54" y="0" drill="1.016" shape="square"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="2.54" x2="-5.08" y2="2.54" width="0.127" layer="21"/>
</package>
<package name="G13-BATTERY">
<pad name="5V" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="GND" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="2.54" x2="-5.08" y2="2.54" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="RASPBERRY_PI_4B">
<pin name="3V3" x="55.88" y="68.58" length="middle" rot="R180"/>
<pin name="GPIO2(SDA)_3" x="2.54" y="68.58" length="middle"/>
<pin name="GPIO3(SCL)_5" x="2.54" y="66.04" length="middle"/>
<pin name="GPIO4_7" x="2.54" y="50.8" length="middle"/>
<pin name="GPIO17_11" x="2.54" y="48.26" length="middle"/>
<pin name="GPIO27_13" x="2.54" y="45.72" length="middle"/>
<pin name="GPIO22_15" x="2.54" y="43.18" length="middle"/>
<pin name="GPIO10(COPI)_19" x="2.54" y="60.96" length="middle"/>
<pin name="GPIO9(CIPO)_21" x="2.54" y="58.42" length="middle"/>
<pin name="GPIO11(SCLK)_23" x="2.54" y="55.88" length="middle"/>
<pin name="GPIO0_27" x="2.54" y="38.1" length="middle"/>
<pin name="GPIO5_29" x="2.54" y="35.56" length="middle"/>
<pin name="GPIO6_31" x="2.54" y="40.64" length="middle"/>
<pin name="GPIO13(PWM1)_33" x="55.88" y="60.96" length="middle" rot="R180"/>
<pin name="GPIO19_35" x="2.54" y="33.02" length="middle"/>
<pin name="GPIO26_37" x="2.54" y="30.48" length="middle"/>
<pin name="5V" x="55.88" y="73.66" length="middle" rot="R180"/>
<pin name="GND" x="55.88" y="22.86" length="middle" rot="R180"/>
<pin name="GPIO14_8" x="55.88" y="55.88" length="middle" rot="R180"/>
<pin name="GPIO15_10" x="55.88" y="53.34" length="middle" rot="R180"/>
<pin name="GPIO18_12" x="55.88" y="50.8" length="middle" rot="R180"/>
<pin name="GPIO23_16" x="55.88" y="48.26" length="middle" rot="R180"/>
<pin name="GPIO24_18" x="55.88" y="45.72" length="middle" rot="R180"/>
<pin name="GPIO25_22" x="55.88" y="43.18" length="middle" rot="R180"/>
<pin name="GPIO8_24" x="55.88" y="40.64" length="middle" rot="R180"/>
<pin name="GPIO7_26" x="55.88" y="38.1" length="middle" rot="R180"/>
<pin name="GPIO1_28" x="55.88" y="35.56" length="middle" rot="R180"/>
<pin name="GPIO12(PWM0)_32" x="55.88" y="63.5" length="middle" rot="R180"/>
<pin name="GPIO16_36" x="55.88" y="33.02" length="middle" rot="R180"/>
<pin name="GPIO20_38" x="55.88" y="30.48" length="middle" rot="R180"/>
<pin name="GPIO21_40" x="55.88" y="27.94" length="middle" rot="R180"/>
<text x="20.32" y="76.2" size="1.778" layer="94">Raspberry Pi 4B</text>
<wire x1="7.62" y1="81.28" x2="7.62" y2="17.78" width="0.254" layer="94"/>
<wire x1="7.62" y1="17.78" x2="50.8" y2="17.78" width="0.254" layer="94"/>
<wire x1="50.8" y1="17.78" x2="50.8" y2="81.28" width="0.254" layer="94"/>
<wire x1="50.8" y1="81.28" x2="7.62" y2="81.28" width="0.254" layer="94"/>
</symbol>
<symbol name="G13-SW">
<pin name="P$1" x="-2.54" y="0" length="middle" rot="R90"/>
<pin name="P$2" x="0" y="0" length="middle" rot="R90"/>
<pin name="P$3" x="2.54" y="0" length="middle" rot="R90"/>
<wire x1="-7.62" y1="5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
</symbol>
<symbol name="LIGHTSENSOR-PO">
<pin name="GND" x="-15.24" y="2.54" length="middle" rot="R90"/>
<pin name="VCC" x="-12.7" y="2.54" length="middle" rot="R90"/>
<pin name="SCL" x="-10.16" y="2.54" length="middle" rot="R90"/>
<pin name="SDA" x="-7.62" y="2.54" length="middle" rot="R90"/>
<wire x1="-15.24" y1="7.62" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="7.62" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="10.16" x2="-15.24" y2="10.16" width="0.254" layer="94"/>
<wire x1="-15.24" y1="10.16" x2="-15.24" y2="7.62" width="0.254" layer="94"/>
</symbol>
<symbol name="LED-STRIP-PO">
<pin name="GND" x="-2.54" y="0" length="middle" rot="R90"/>
<pin name="D-IN" x="0" y="0" length="middle" rot="R90"/>
<pin name="VCC" x="2.54" y="0" length="middle" rot="R90"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="7.62" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
</symbol>
<symbol name="G13-BATTERY">
<pin name="5V" x="-2.54" y="2.54" length="middle" rot="R90"/>
<pin name="GND" x="2.54" y="2.54" length="middle" rot="R90"/>
<wire x1="-2.54" y1="7.62" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="7.62" x2="-2.54" y2="7.62" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RASPBERRY_PI_4">
<gates>
<gate name="G$1" symbol="RASPBERRY_PI_4B" x="-27.94" y="-48.26"/>
</gates>
<devices>
<device name="" package="RASPI_4B">
<connects>
<connect gate="G$1" pin="3V3" pad="1 17"/>
<connect gate="G$1" pin="5V" pad="2 4"/>
<connect gate="G$1" pin="GND" pad="6 9 14 20 25 30 34 39"/>
<connect gate="G$1" pin="GPIO0_27" pad="27"/>
<connect gate="G$1" pin="GPIO10(COPI)_19" pad="19"/>
<connect gate="G$1" pin="GPIO11(SCLK)_23" pad="23"/>
<connect gate="G$1" pin="GPIO12(PWM0)_32" pad="32"/>
<connect gate="G$1" pin="GPIO13(PWM1)_33" pad="33"/>
<connect gate="G$1" pin="GPIO14_8" pad="8"/>
<connect gate="G$1" pin="GPIO15_10" pad="10"/>
<connect gate="G$1" pin="GPIO16_36" pad="36"/>
<connect gate="G$1" pin="GPIO17_11" pad="11"/>
<connect gate="G$1" pin="GPIO18_12" pad="12"/>
<connect gate="G$1" pin="GPIO19_35" pad="35"/>
<connect gate="G$1" pin="GPIO1_28" pad="28"/>
<connect gate="G$1" pin="GPIO2(SDA)_3" pad="3"/>
<connect gate="G$1" pin="GPIO20_38" pad="38"/>
<connect gate="G$1" pin="GPIO21_40" pad="40"/>
<connect gate="G$1" pin="GPIO22_15" pad="15"/>
<connect gate="G$1" pin="GPIO23_16" pad="16"/>
<connect gate="G$1" pin="GPIO24_18" pad="18"/>
<connect gate="G$1" pin="GPIO25_22" pad="22"/>
<connect gate="G$1" pin="GPIO26_37" pad="37"/>
<connect gate="G$1" pin="GPIO27_13" pad="13"/>
<connect gate="G$1" pin="GPIO3(SCL)_5" pad="5"/>
<connect gate="G$1" pin="GPIO4_7" pad="7"/>
<connect gate="G$1" pin="GPIO5_29" pad="29"/>
<connect gate="G$1" pin="GPIO6_31" pad="31"/>
<connect gate="G$1" pin="GPIO7_26" pad="26"/>
<connect gate="G$1" pin="GPIO8_24" pad="24"/>
<connect gate="G$1" pin="GPIO9(CIPO)_21" pad="21"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
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
<deviceset name="LIGHTSENSOR-PO">
<gates>
<gate name="G$1" symbol="LIGHTSENSOR-PO" x="-5.08" y="-2.54"/>
</gates>
<devices>
<device name="" package="LIGHTSENSOR-IO">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="SCL" pad="SCL"/>
<connect gate="G$1" pin="SDA" pad="SDA"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED-STRIP-PO">
<gates>
<gate name="G$1" symbol="LED-STRIP-PO" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="LED-STRIP-PO">
<connects>
<connect gate="G$1" pin="D-IN" pad="D-IN"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="G13-BATTERY">
<gates>
<gate name="G$1" symbol="G13-BATTERY" x="0" y="-7.62"/>
</gates>
<devices>
<device name="" package="G13-BATTERY">
<connects>
<connect gate="G$1" pin="5V" pad="5V"/>
<connect gate="G$1" pin="GND" pad="GND"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Texas Instruments - SN74AHCT125N">
<description>Upverter Parts Library

Created by Upverter.com</description>
<packages>
<package name="TEXAS_INSTRUMENTS_SN74AHCT125N_0">
<description>QUADRUPLE BUS BUFFER GATES WITH 3-STATE OUTPUTS</description>
<wire x1="-3.175" y1="-9.652" x2="-3.175" y2="9.652" width="0.15" layer="51"/>
<wire x1="-3.175" y1="9.652" x2="3.175" y2="9.652" width="0.15" layer="51"/>
<wire x1="3.175" y1="9.652" x2="3.175" y2="-9.652" width="0.15" layer="51"/>
<wire x1="3.175" y1="-9.652" x2="-3.175" y2="-9.652" width="0.15" layer="51"/>
<wire x1="-2.175" y1="9.652" x2="-2.175" y2="-9.652" width="0.15" layer="21"/>
<wire x1="-2.175" y1="-9.652" x2="2.175" y2="-9.652" width="0.15" layer="21"/>
<wire x1="2.175" y1="-9.652" x2="2.175" y2="9.652" width="0.15" layer="21"/>
<wire x1="2.175" y1="9.652" x2="0.621" y2="9.652" width="0.15" layer="21"/>
<wire x1="0.621" y1="9.652" x2="0.621" y2="9.152" width="0.15" layer="21"/>
<wire x1="0.621" y1="9.152" x2="-0.621" y2="9.152" width="0.15" layer="21"/>
<wire x1="-0.621" y1="9.152" x2="-0.621" y2="9.652" width="0.15" layer="21"/>
<wire x1="-0.621" y1="9.652" x2="-2.175" y2="9.652" width="0.15" layer="21"/>
<wire x1="-4.695" y1="-9.945" x2="-4.695" y2="9.945" width="0.1" layer="39"/>
<wire x1="-4.695" y1="9.945" x2="4.695" y2="9.945" width="0.1" layer="39"/>
<wire x1="4.695" y1="9.945" x2="4.695" y2="-9.945" width="0.1" layer="39"/>
<wire x1="4.695" y1="-9.945" x2="-4.695" y2="-9.945" width="0.1" layer="39"/>
<text x="-4.745" y="10.027" size="1" layer="25">&gt;NAME</text>
<circle x="-5.27" y="7.57" radius="0.25" width="0" layer="21"/>
<pad name="1" x="-3.97" y="7.62" drill="0.75" diameter="1.25" shape="square"/>
<pad name="2" x="-3.97" y="5.08" drill="0.75" diameter="1.25"/>
<pad name="3" x="-3.97" y="2.54" drill="0.75" diameter="1.25"/>
<pad name="4" x="-3.97" y="0" drill="0.75" diameter="1.25"/>
<pad name="5" x="-3.97" y="-2.54" drill="0.75" diameter="1.25"/>
<pad name="6" x="-3.97" y="-5.08" drill="0.75" diameter="1.25"/>
<pad name="7" x="-3.97" y="-7.62" drill="0.75" diameter="1.25"/>
<pad name="8" x="3.97" y="-7.62" drill="0.75" diameter="1.25"/>
<pad name="9" x="3.97" y="-5.08" drill="0.75" diameter="1.25"/>
<pad name="10" x="3.97" y="-2.54" drill="0.75" diameter="1.25"/>
<pad name="11" x="3.97" y="0" drill="0.75" diameter="1.25"/>
<pad name="12" x="3.97" y="2.54" drill="0.75" diameter="1.25"/>
<pad name="13" x="3.97" y="5.08" drill="0.75" diameter="1.25"/>
<pad name="14" x="3.97" y="7.62" drill="0.75" diameter="1.25"/>
</package>
</packages>
<symbols>
<symbol name="TEXAS_INSTRUMENTS_SN74AHCT125N_0_0">
<description>QUADRUPLE BUS BUFFER GATES WITH 3-STATE OUTPUTS</description>
<wire x1="0" y1="-35.56" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="17.78" y2="-5.08" width="0.254" layer="94"/>
<wire x1="17.78" y1="-5.08" x2="17.78" y2="-35.56" width="0.254" layer="94"/>
<wire x1="17.78" y1="-35.56" x2="0" y2="-35.56" width="0.254" layer="94"/>
<wire x1="0" y1="-7.62" x2="0" y2="-7.62" width="0.15" layer="94"/>
<wire x1="0" y1="-12.7" x2="0" y2="-12.7" width="0.15" layer="94"/>
<wire x1="0" y1="-25.4" x2="0" y2="-25.4" width="0.15" layer="94"/>
<wire x1="0" y1="-15.24" x2="0" y2="-15.24" width="0.15" layer="94"/>
<wire x1="0" y1="-27.94" x2="0" y2="-27.94" width="0.15" layer="94"/>
<wire x1="0" y1="-17.78" x2="0" y2="-17.78" width="0.15" layer="94"/>
<wire x1="0" y1="-30.48" x2="0" y2="-30.48" width="0.15" layer="94"/>
<wire x1="0" y1="-20.32" x2="0" y2="-20.32" width="0.15" layer="94"/>
<wire x1="0" y1="-33.02" x2="0" y2="-33.02" width="0.15" layer="94"/>
<wire x1="17.78" y1="-7.62" x2="17.78" y2="-7.62" width="0.15" layer="94"/>
<wire x1="17.78" y1="-10.16" x2="17.78" y2="-10.16" width="0.15" layer="94"/>
<wire x1="17.78" y1="-12.7" x2="17.78" y2="-12.7" width="0.15" layer="94"/>
<wire x1="17.78" y1="-15.24" x2="17.78" y2="-15.24" width="0.15" layer="94"/>
<wire x1="17.78" y1="-33.02" x2="17.78" y2="-33.02" width="0.15" layer="94"/>
<text x="0" y="-2.54" size="2.54" layer="95" align="top-left">&gt;NAME</text>
<text x="-0.508" y="-36.068" size="2.54" layer="95" align="top-left">SN74AHCT125N</text>
<pin name="VCC" x="-5.08" y="-7.62" length="middle"/>
<pin name="1A" x="-5.08" y="-12.7" length="middle"/>
<pin name="1Y" x="-5.08" y="-25.4" length="middle"/>
<pin name="2A" x="-5.08" y="-15.24" length="middle"/>
<pin name="2Y" x="-5.08" y="-27.94" length="middle"/>
<pin name="3A" x="-5.08" y="-17.78" length="middle"/>
<pin name="3Y" x="-5.08" y="-30.48" length="middle"/>
<pin name="4A" x="-5.08" y="-20.32" length="middle"/>
<pin name="4Y" x="-5.08" y="-33.02" length="middle"/>
<pin name="!1OE!" x="22.86" y="-7.62" length="middle" rot="R180"/>
<pin name="!2OE!" x="22.86" y="-10.16" length="middle" rot="R180"/>
<pin name="!3OE!" x="22.86" y="-12.7" length="middle" rot="R180"/>
<pin name="!4OE!" x="22.86" y="-15.24" length="middle" rot="R180"/>
<pin name="GND" x="22.86" y="-33.02" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TEXAS_INSTRUMENTS_SN74AHCT125N" prefix="U">
<description>QUADRUPLE BUS BUFFER GATES WITH 3-STATE OUTPUTS</description>
<gates>
<gate name="G$0" symbol="TEXAS_INSTRUMENTS_SN74AHCT125N_0_0" x="0" y="0"/>
</gates>
<devices>
<device name="TEXAS_INSTRUMENTS_SN74AHCT125N_0_0" package="TEXAS_INSTRUMENTS_SN74AHCT125N_0">
<connects>
<connect gate="G$0" pin="!1OE!" pad="1"/>
<connect gate="G$0" pin="!2OE!" pad="4"/>
<connect gate="G$0" pin="!3OE!" pad="10"/>
<connect gate="G$0" pin="!4OE!" pad="13"/>
<connect gate="G$0" pin="1A" pad="2"/>
<connect gate="G$0" pin="1Y" pad="3"/>
<connect gate="G$0" pin="2A" pad="5"/>
<connect gate="G$0" pin="2Y" pad="6"/>
<connect gate="G$0" pin="3A" pad="9"/>
<connect gate="G$0" pin="3Y" pad="8"/>
<connect gate="G$0" pin="4A" pad="12"/>
<connect gate="G$0" pin="4Y" pad="11"/>
<connect gate="G$0" pin="GND" pad="7"/>
<connect gate="G$0" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name="">
<attribute name="CENTROID_NOT_SPECIFIED" value="No"/>
<attribute name="DATASHEET" value="http://www.ti.com/lit/ds/symlink/sn74ahct125.pdf"/>
<attribute name="DIGIKEY_DESCRIPTION" value="IC BUS BUFFER TRI-ST QD 14DIP"/>
<attribute name="DIGIKEY_PART_NUMBER" value="296-4655-5-ND"/>
<attribute name="IPC_LAND_PATTERN_NAME" value="DIP794W46P254L1930H508Q14"/>
<attribute name="LEAD_FREE" value="yes"/>
<attribute name="MF" value="Texas Instruments"/>
<attribute name="MFG_PACKAGE_IDENT" value=""/>
<attribute name="MOUSER_PART_NUMBER" value="595-SN74AHCT125N"/>
<attribute name="MPN" value="SN74AHCT125N"/>
<attribute name="PACKAGE" value="PDIP-14"/>
<attribute name="PREFIX" value="U"/>
<attribute name="ROHS" value="yes"/>
<attribute name="TEMPERATURE_RANGE_HIGH" value="+125°C"/>
<attribute name="TEMPERATURE_RANGE_LOW" value="-40°C"/>
<attribute name="VOLTAGE" value=""/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="led" urn="urn:adsk.eagle:library:259">
<description>&lt;b&gt;LEDs&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;br&gt;
Extended by Federico Battaglin &lt;author&gt;&amp;lt;federico.rd@fdpinternational.com&amp;gt;&lt;/author&gt; with DUOLED</description>
<packages>
<package name="DUOLED-A-5MM" urn="urn:adsk.eagle:footprint:15721/1" library_version="5">
<description>&lt;B&gt;DUO LED&lt;/B&gt;&lt;P&gt;
2 colors (red/green, red/yellow), 5 mm, round, common Anode&lt;BR&gt;
&lt;I&gt;www.ligitek.com&lt;/I&gt; or other producers.</description>
<wire x1="-2.794" y1="0.8636" x2="-2.794" y2="-0.8636" width="0.254" layer="51" curve="34.351807"/>
<wire x1="2.3876" y1="-0.8636" x2="2.3876" y2="0.8636" width="0.1524" layer="51" curve="39.77033"/>
<wire x1="2.54" y1="1.4478" x2="2.54" y2="0.889" width="0.254" layer="21"/>
<wire x1="-2.3876" y1="-0.8636" x2="2.3876" y2="-0.8636" width="0.1524" layer="21" curve="140.22967"/>
<wire x1="-2.7933" y1="0.8634" x2="2.54" y2="1.4478" width="0.254" layer="21" curve="-133.151599"/>
<wire x1="-2.3876" y1="0.8636" x2="-2.3876" y2="-0.8636" width="0.1524" layer="51" curve="39.77033"/>
<wire x1="-2.794" y1="-0.8636" x2="2.5407" y2="-1.4482" width="0.254" layer="21" curve="133.133633"/>
<wire x1="-2.3876" y1="0.8636" x2="2.3876" y2="0.8636" width="0.1524" layer="21" curve="-140.22967"/>
<wire x1="2.54" y1="0.9398" x2="2.54" y2="-0.889" width="0.254" layer="51"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="-1.4478" width="0.254" layer="21"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.159" y1="0" x2="0" y2="2.159" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-2.159" x2="2.159" y2="0" width="0.1524" layer="51" curve="90"/>
<pad name="CX" x="-2.54" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="A" x="0" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="CR" x="2.54" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="3.81" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.81" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="DUOLED-A-5MM" urn="urn:adsk.eagle:package:15852/1" type="box" library_version="5">
<description>DUO LED
2 colors (red/green, red/yellow), 5 mm, round, common Anode
www.ligitek.com or other producers.</description>
<packageinstances>
<packageinstance name="DUOLED-A-5MM"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="DUOLED-RG-A" urn="urn:adsk.eagle:symbol:15720/2" library_version="5">
<wire x1="0" y1="-5.08" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="-1.27" y2="-5.08" width="0.254" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-2.032" y1="-3.302" x2="-3.429" y2="-4.699" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-4.445" x2="-3.302" y2="-5.842" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="1.27" y2="5.08" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.032" y1="3.302" x2="3.429" y2="4.699" width="0.1524" layer="94"/>
<wire x1="1.905" y1="4.445" x2="3.302" y2="5.842" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="0" width="0.1524" layer="94"/>
<circle x="0" y="0" radius="0.254" width="0.4064" layer="94"/>
<text x="6.35" y="-5.08" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="8.89" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<text x="-2.54" y="3.81" size="1.016" layer="94" ratio="10" rot="R90">red</text>
<text x="2.54" y="-5.08" size="1.016" layer="94" ratio="10" rot="R90">green</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="CR" x="0" y="7.62" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="CG" x="0" y="-7.62" visible="off" length="short" direction="pas" rot="R90"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-4.699"/>
<vertex x="-3.048" y="-3.81"/>
<vertex x="-2.54" y="-4.318"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-5.842"/>
<vertex x="-2.921" y="-4.953"/>
<vertex x="-2.413" y="-5.461"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="2.413" y="5.461"/>
<vertex x="3.302" y="5.842"/>
<vertex x="2.921" y="4.953"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="2.54" y="4.318"/>
<vertex x="3.429" y="4.699"/>
<vertex x="3.048" y="3.81"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="DUOLED-RG-A" urn="urn:adsk.eagle:component:15926/3" prefix="LD" uservalue="yes" library_version="5">
<description>&lt;B&gt;DUO LED&lt;/B&gt;&lt;P&gt;
2 colors (red/green), 5 mm, round, common Anode&lt;BR&gt;
&lt;I&gt;www.ligitek.com&lt;/I&gt; or other producers.</description>
<gates>
<gate name="G$1" symbol="DUOLED-RG-A" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DUOLED-A-5MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="CG" pad="CX"/>
<connect gate="G$1" pin="CR" pad="CR"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15852/1"/>
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
<library name="transistor-power" urn="urn:adsk.eagle:library:400">
<description>&lt;b&gt;Power Transistors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="TO220BH" urn="urn:adsk.eagle:footprint:29377/1" library_version="4">
<description>&lt;b&gt;Molded Package&lt;/b&gt;&lt;p&gt;
grid 2.54 mm</description>
<wire x1="-5.207" y1="-1.27" x2="5.207" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.207" y1="14.605" x2="-5.207" y2="14.605" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-1.27" x2="5.207" y2="11.176" width="0.1524" layer="21"/>
<wire x1="5.207" y1="11.176" x2="4.318" y2="11.176" width="0.1524" layer="21"/>
<wire x1="4.318" y1="11.176" x2="4.318" y2="12.7" width="0.1524" layer="21"/>
<wire x1="4.318" y1="12.7" x2="5.207" y2="12.7" width="0.1524" layer="21"/>
<wire x1="5.207" y1="12.7" x2="5.207" y2="14.605" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-1.27" x2="-5.207" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="11.176" x2="-4.318" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="11.176" x2="-4.318" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="12.7" x2="-5.207" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="12.7" x2="-5.207" y2="14.605" width="0.1524" layer="21"/>
<wire x1="-4.572" y1="-0.635" x2="4.572" y2="-0.635" width="0.0508" layer="21"/>
<wire x1="4.572" y1="7.62" x2="4.572" y2="-0.635" width="0.0508" layer="21"/>
<wire x1="4.572" y1="7.62" x2="-4.572" y2="7.62" width="0.0508" layer="21"/>
<wire x1="-4.572" y1="-0.635" x2="-4.572" y2="7.62" width="0.0508" layer="21"/>
<circle x="0" y="11.176" radius="1.8034" width="0.1524" layer="21"/>
<circle x="0" y="11.176" radius="4.191" width="0" layer="42"/>
<circle x="0" y="11.176" radius="4.191" width="0" layer="43"/>
<pad name="G" x="-2.54" y="-6.35" drill="1.1176" shape="long" rot="R90"/>
<pad name="D" x="0" y="-6.35" drill="1.1176" shape="long" rot="R90"/>
<pad name="S" x="2.54" y="-6.35" drill="1.1176" shape="long" rot="R90"/>
<text x="-3.81" y="5.207" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.937" y="2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.445" y="7.874" size="1.016" layer="21" ratio="10">A17,5mm</text>
<rectangle x1="2.159" y1="-4.699" x2="2.921" y2="-4.064" layer="21"/>
<rectangle x1="-0.381" y1="-4.699" x2="0.381" y2="-4.064" layer="21"/>
<rectangle x1="-2.921" y1="-4.699" x2="-2.159" y2="-4.064" layer="21"/>
<rectangle x1="-3.175" y1="-4.064" x2="-1.905" y2="-1.27" layer="21"/>
<rectangle x1="-0.635" y1="-4.064" x2="0.635" y2="-1.27" layer="21"/>
<rectangle x1="1.905" y1="-4.064" x2="3.175" y2="-1.27" layer="21"/>
<rectangle x1="-2.921" y1="-6.604" x2="-2.159" y2="-4.699" layer="51"/>
<rectangle x1="-0.381" y1="-6.604" x2="0.381" y2="-4.699" layer="51"/>
<rectangle x1="2.159" y1="-6.604" x2="2.921" y2="-4.699" layer="51"/>
<hole x="0" y="11.176" drill="3.302"/>
</package>
</packages>
<packages3d>
<package3d name="TO220BH" urn="urn:adsk.eagle:package:29490/1" type="box" library_version="4">
<description>Molded Package
grid 2.54 mm</description>
<packageinstances>
<packageinstance name="TO220BH"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MFNS" urn="urn:adsk.eagle:symbol:29370/1" library_version="4">
<wire x1="-1.1176" y1="2.413" x2="-1.1176" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.1176" y1="-2.54" x2="-2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="1.905" x2="0.5334" y2="1.905" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="0.508" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="94"/>
<wire x1="2.54" y1="1.905" x2="5.08" y2="1.905" width="0.1524" layer="94"/>
<wire x1="5.08" y1="1.905" x2="5.08" y2="0.762" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0.762" x2="5.08" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0.762" x2="4.445" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="4.445" y1="-0.635" x2="5.715" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="5.715" y1="-0.635" x2="5.08" y2="0.762" width="0.1524" layer="94"/>
<wire x1="4.445" y1="0.762" x2="5.08" y2="0.762" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0.762" x2="5.715" y2="0.762" width="0.1524" layer="94"/>
<wire x1="5.715" y1="0.762" x2="5.969" y2="1.016" width="0.1524" layer="94"/>
<wire x1="4.445" y1="0.762" x2="4.191" y2="0.508" width="0.1524" layer="94"/>
<wire x1="0.508" y1="0" x2="1.778" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="1.778" y1="-0.508" x2="1.778" y2="0.508" width="0.1524" layer="94"/>
<wire x1="1.778" y1="0.508" x2="0.508" y2="0" width="0.1524" layer="94"/>
<wire x1="1.651" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="1.651" y1="0.254" x2="0.762" y2="0" width="0.3048" layer="94"/>
<wire x1="0.762" y1="0" x2="1.651" y2="-0.254" width="0.3048" layer="94"/>
<wire x1="1.651" y1="-0.254" x2="1.651" y2="0" width="0.3048" layer="94"/>
<wire x1="1.651" y1="0" x2="1.397" y2="0" width="0.3048" layer="94"/>
<circle x="2.54" y="-1.905" radius="0.127" width="0.4064" layer="94"/>
<circle x="2.54" y="1.905" radius="0.127" width="0.4064" layer="94"/>
<text x="7.62" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="7.62" y="0" size="1.778" layer="96">&gt;VALUE</text>
<text x="1.27" y="2.54" size="0.8128" layer="93">D</text>
<text x="1.27" y="-3.175" size="0.8128" layer="93">S</text>
<text x="-2.54" y="-1.27" size="0.8128" layer="93">G</text>
<rectangle x1="-0.254" y1="-2.54" x2="0.508" y2="-1.27" layer="94"/>
<rectangle x1="-0.254" y1="1.27" x2="0.508" y2="2.54" layer="94"/>
<rectangle x1="-0.254" y1="-0.889" x2="0.508" y2="0.889" layer="94"/>
<pin name="G" x="-2.54" y="-2.54" visible="off" length="point" direction="pas"/>
<pin name="D" x="2.54" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="S" x="2.54" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="IRLZ44Z" urn="urn:adsk.eagle:component:29572/2" prefix="Q" library_version="4">
<description>&lt;b&gt;N-Channel HEXFET® Power MOSFET&lt;/b&gt; Logic Level&lt;p&gt;
 AUTOMOTIVE MOSFET&lt;br&gt;
Source: http://www.irf.com/product-info/datasheets/data/irlz44zpbf.pdf</description>
<gates>
<gate name="G$1" symbol="MFNS" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TO220BH">
<connects>
<connect gate="G$1" pin="D" pad="D"/>
<connect gate="G$1" pin="G" pad="G"/>
<connect gate="G$1" pin="S" pad="S"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:29490/1"/>
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
<symbol name="+5V" urn="urn:adsk.eagle:symbol:26929/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="+3V3" urn="urn:adsk.eagle:symbol:26950/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+3V3" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" urn="urn:adsk.eagle:component:26963/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+3V3" urn="urn:adsk.eagle:component:26981/1" prefix="+3V3" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+3V3" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
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
<part name="U$1" library="raspberryPi4" deviceset="RASPBERRY_PI_4" device=""/>
<part name="U$2" library="raspberryPi4" deviceset="G13-SW" device=""/>
<part name="U$3" library="raspberryPi4" deviceset="G13-SW" device=""/>
<part name="U1" library="Texas Instruments - SN74AHCT125N" deviceset="TEXAS_INSTRUMENTS_SN74AHCT125N" device="TEXAS_INSTRUMENTS_SN74AHCT125N_0_0"/>
<part name="U$4" library="raspberryPi4" deviceset="LIGHTSENSOR-PO" device=""/>
<part name="U$5" library="raspberryPi4" deviceset="LED-STRIP-PO" device=""/>
<part name="U$6" library="sumayyah" deviceset="G13-BUTTON" device=""/>
<part name="U$7" library="sumayyah" deviceset="G13-BUTTON" device=""/>
<part name="U$8" library="raspberryPi4" deviceset="G13-BATTERY" device=""/>
<part name="LD1" library="led" library_urn="urn:adsk.eagle:library:259" deviceset="DUOLED-RG-A" device="" package3d_urn="urn:adsk.eagle:package:15852/1"/>
<part name="Q1" library="transistor-power" library_urn="urn:adsk.eagle:library:400" deviceset="IRLZ44Z" device="" package3d_urn="urn:adsk.eagle:package:29490/1"/>
<part name="Q2" library="transistor-power" library_urn="urn:adsk.eagle:library:400" deviceset="IRLZ44Z" device="" package3d_urn="urn:adsk.eagle:package:29490/1"/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="P+2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="P+3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="+3V1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND11" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND12" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="+3V2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="P+4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="-93.98" y="71.12" size="1.778" layer="94">Brightness Button</text>
<text x="-83.82" y="-5.08" size="1.778" layer="94">Color Button</text>
<text x="106.68" y="93.98" size="1.778" layer="94">Level Shifter</text>
<text x="-142.24" y="55.88" size="1.778" layer="94">Power Supply</text>
<text x="137.16" y="-5.08" size="1.778" layer="94">MOSFET</text>
<text x="91.44" y="-5.08" size="1.778" layer="94">MOSFET</text>
<text x="157.48" y="81.28" size="1.778" layer="94">RGB LED</text>
<text x="-76.2" y="45.72" size="1.778" layer="94">LED Switch</text>
<text x="-76.2" y="25.4" size="1.778" layer="94">Camera Switch</text>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="0" y="0" smashed="yes"/>
<instance part="U$2" gate="G$1" x="-45.72" y="45.72" smashed="yes" rot="R90"/>
<instance part="U$3" gate="G$1" x="-45.72" y="27.94" smashed="yes" rot="R90"/>
<instance part="U1" gate="G$0" x="104.14" y="88.9" smashed="yes">
<attribute name="NAME" x="104.14" y="86.36" size="2.54" layer="95" align="top-left"/>
</instance>
<instance part="U$4" gate="G$1" x="-45.72" y="104.14" smashed="yes" rot="R90"/>
<instance part="U$5" gate="G$1" x="165.1" y="63.5" smashed="yes" rot="R90"/>
<instance part="U$6" gate="G$1" x="-60.96" y="71.12" smashed="yes"/>
<instance part="U$7" gate="G$1" x="-58.42" y="-5.08" smashed="yes"/>
<instance part="U$8" gate="G$1" x="-139.7" y="50.8" smashed="yes" rot="R270"/>
<instance part="LD1" gate="G$1" x="127" y="15.24" smashed="yes" rot="R270">
<attribute name="NAME" x="121.92" y="8.89" size="1.778" layer="95"/>
<attribute name="VALUE" x="121.92" y="6.35" size="1.778" layer="96"/>
</instance>
<instance part="Q1" gate="G$1" x="147.32" y="-10.16" smashed="yes">
<attribute name="NAME" x="154.94" y="-7.62" size="1.778" layer="95"/>
<attribute name="VALUE" x="154.94" y="-10.16" size="1.778" layer="96"/>
</instance>
<instance part="Q2" gate="G$1" x="101.6" y="-10.16" smashed="yes">
<attribute name="NAME" x="109.22" y="-7.62" size="1.778" layer="95"/>
<attribute name="VALUE" x="109.22" y="-10.16" size="1.778" layer="96"/>
</instance>
<instance part="P+1" gate="1" x="-142.24" y="63.5" smashed="yes">
<attribute name="VALUE" x="-144.78" y="58.42" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+2" gate="1" x="99.06" y="96.52" smashed="yes">
<attribute name="VALUE" x="96.52" y="91.44" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+3" gate="1" x="170.18" y="73.66" smashed="yes">
<attribute name="VALUE" x="167.64" y="68.58" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="+3V1" gate="G$1" x="-38.1" y="104.14" smashed="yes">
<attribute name="VALUE" x="-40.64" y="99.06" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND1" gate="1" x="-48.26" y="60.96" smashed="yes">
<attribute name="VALUE" x="-50.8" y="58.42" size="1.778" layer="96"/>
</instance>
<instance part="GND2" gate="1" x="-45.72" y="-15.24" smashed="yes">
<attribute name="VALUE" x="-48.26" y="-17.78" size="1.778" layer="96"/>
</instance>
<instance part="GND4" gate="1" x="-40.64" y="40.64" smashed="yes">
<attribute name="VALUE" x="-43.18" y="38.1" size="1.778" layer="96"/>
</instance>
<instance part="GND5" gate="1" x="132.08" y="53.34" smashed="yes">
<attribute name="VALUE" x="129.54" y="50.8" size="1.778" layer="96"/>
</instance>
<instance part="GND6" gate="1" x="-142.24" y="43.18" smashed="yes">
<attribute name="VALUE" x="-144.78" y="40.64" size="1.778" layer="96"/>
</instance>
<instance part="GND7" gate="1" x="104.14" y="-25.4" smashed="yes">
<attribute name="VALUE" x="101.6" y="-27.94" size="1.778" layer="96"/>
</instance>
<instance part="GND8" gate="1" x="149.86" y="-25.4" smashed="yes">
<attribute name="VALUE" x="147.32" y="-27.94" size="1.778" layer="96"/>
</instance>
<instance part="GND9" gate="1" x="-48.26" y="81.28" smashed="yes">
<attribute name="VALUE" x="-50.8" y="78.74" size="1.778" layer="96"/>
</instance>
<instance part="GND10" gate="1" x="134.62" y="78.74" smashed="yes">
<attribute name="VALUE" x="132.08" y="76.2" size="1.778" layer="96"/>
</instance>
<instance part="GND11" gate="1" x="68.58" y="20.32" smashed="yes">
<attribute name="VALUE" x="66.04" y="17.78" size="1.778" layer="96"/>
</instance>
<instance part="GND12" gate="1" x="170.18" y="58.42" smashed="yes">
<attribute name="VALUE" x="167.64" y="55.88" size="1.778" layer="96"/>
</instance>
<instance part="+3V2" gate="G$1" x="68.58" y="76.2" smashed="yes">
<attribute name="VALUE" x="66.04" y="71.12" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+4" gate="1" x="127" y="30.48" smashed="yes">
<attribute name="VALUE" x="124.46" y="25.4" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND3" gate="1" x="-40.64" y="22.86" smashed="yes">
<attribute name="VALUE" x="-43.18" y="20.32" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="SDA"/>
<wire x1="-48.26" y1="96.52" x2="-12.7" y2="96.52" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="96.52" x2="-12.7" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GPIO2(SDA)_3"/>
<wire x1="-12.7" y1="68.58" x2="2.54" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="SCL"/>
<wire x1="-48.26" y1="93.98" x2="-17.78" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="93.98" x2="-17.78" y2="66.04" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GPIO3(SCL)_5"/>
<wire x1="-17.78" y1="66.04" x2="2.54" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
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
<pinref part="U$4" gate="G$1" pin="GND"/>
<pinref part="GND9" gate="1" pin="GND"/>
<wire x1="-48.26" y1="83.82" x2="-48.26" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND10" gate="1" pin="GND"/>
<pinref part="U1" gate="G$0" pin="!1OE!"/>
<wire x1="127" y1="81.28" x2="134.62" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND8" gate="1" pin="GND"/>
<pinref part="Q1" gate="G$1" pin="S"/>
<wire x1="149.86" y1="-15.24" x2="149.86" y2="-22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND7" gate="1" pin="GND"/>
<pinref part="Q2" gate="G$1" pin="S"/>
<wire x1="104.14" y1="-15.24" x2="104.14" y2="-22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="GND"/>
<wire x1="165.1" y1="60.96" x2="170.18" y2="60.96" width="0.1524" layer="91"/>
<pinref part="GND12" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND5" gate="1" pin="GND"/>
<pinref part="U1" gate="G$0" pin="GND"/>
<wire x1="127" y1="55.88" x2="132.08" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-142.24" y1="48.26" x2="-142.24" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="GND"/>
<wire x1="-137.16" y1="48.26" x2="-142.24" y2="48.26" width="0.1524" layer="91"/>
<pinref part="GND6" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="P$1"/>
<wire x1="-45.72" y1="43.18" x2="-40.64" y2="43.18" width="0.1524" layer="91"/>
<pinref part="GND4" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="68.58" y1="22.86" x2="55.88" y2="22.86" width="0.1524" layer="91"/>
<pinref part="GND11" gate="1" pin="GND"/>
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
<segment>
<pinref part="U$1" gate="G$1" pin="GPIO27_13"/>
<wire x1="2.54" y1="45.72" x2="-2.54" y2="45.72" width="0.1524" layer="91"/>
<label x="-7.62" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="COLOR" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="GPIO"/>
<wire x1="-53.34" y1="-2.54" x2="-45.72" y2="-2.54" width="0.1524" layer="91"/>
<label x="-45.72" y="-2.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GPIO6_31"/>
<wire x1="2.54" y1="40.64" x2="-2.54" y2="40.64" width="0.1524" layer="91"/>
<label x="-7.62" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="GPIO_5" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P$2"/>
<label x="-40.64" y="45.72" size="1.778" layer="95"/>
<wire x1="-45.72" y1="45.72" x2="-22.86" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="45.72" x2="-22.86" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GPIO5_29"/>
<label x="-17.78" y="35.56" size="1.778" layer="95"/>
<wire x1="-22.86" y1="35.56" x2="2.54" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="3V3_DIN" class="0">
<segment>
<pinref part="U1" gate="G$0" pin="1A"/>
<wire x1="99.06" y1="76.2" x2="93.98" y2="76.2" width="0.1524" layer="91"/>
<label x="86.36" y="76.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GPIO10(COPI)_19"/>
<wire x1="-7.62" y1="60.96" x2="2.54" y2="60.96" width="0.1524" layer="91"/>
<label x="-10.16" y="60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="5V_DIN" class="0">
<segment>
<pinref part="U1" gate="G$0" pin="1Y"/>
<wire x1="99.06" y1="63.5" x2="93.98" y2="63.5" width="0.1524" layer="91"/>
<label x="86.36" y="63.5" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="D-IN"/>
<wire x1="170.18" y1="63.5" x2="165.1" y2="63.5" width="0.1524" layer="91"/>
<label x="170.18" y="63.5" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="Q2" gate="G$1" pin="D"/>
<wire x1="104.14" y1="-5.08" x2="104.14" y2="15.24" width="0.1524" layer="91"/>
<pinref part="LD1" gate="G$1" pin="CG"/>
<wire x1="104.14" y1="15.24" x2="119.38" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GPIO_18" class="0">
<segment>
<pinref part="Q2" gate="G$1" pin="G"/>
<wire x1="99.06" y1="-12.7" x2="96.52" y2="-12.7" width="0.1524" layer="91"/>
<label x="83.82" y="-12.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GPIO18_12"/>
<wire x1="55.88" y1="50.8" x2="63.5" y2="50.8" width="0.1524" layer="91"/>
<label x="63.5" y="50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="GPIO_19" class="0">
<segment>
<pinref part="Q1" gate="G$1" pin="G"/>
<wire x1="144.78" y1="-12.7" x2="142.24" y2="-12.7" width="0.1524" layer="91"/>
<label x="132.08" y="-12.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GPIO19_35"/>
<wire x1="2.54" y1="33.02" x2="-7.62" y2="33.02" width="0.1524" layer="91"/>
<label x="-7.62" y="33.02" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="+3V3" class="0">
<segment>
<pinref part="+3V1" gate="G$1" pin="+3V3"/>
<wire x1="-38.1" y1="91.44" x2="-38.1" y2="101.6" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="VCC"/>
<wire x1="-48.26" y1="91.44" x2="-38.1" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="3V3"/>
<pinref part="+3V2" gate="G$1" pin="+3V3"/>
<wire x1="68.58" y1="68.58" x2="55.88" y2="68.58" width="0.1524" layer="91"/>
<wire x1="68.58" y1="73.66" x2="68.58" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="P+3" gate="1" pin="+5V"/>
<wire x1="170.18" y1="66.04" x2="170.18" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="VCC"/>
<wire x1="165.1" y1="66.04" x2="170.18" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+2" gate="1" pin="+5V"/>
<pinref part="U1" gate="G$0" pin="VCC"/>
<wire x1="99.06" y1="81.28" x2="99.06" y2="93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LD1" gate="G$1" pin="A"/>
<pinref part="P+4" gate="1" pin="+5V"/>
<wire x1="127" y1="27.94" x2="127" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$8" gate="G$1" pin="5V"/>
<wire x1="-142.24" y1="60.96" x2="-142.24" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-137.16" y1="53.34" x2="-142.24" y2="53.34" width="0.1524" layer="91"/>
<pinref part="P+1" gate="1" pin="+5V"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="LD1" gate="G$1" pin="CR"/>
<wire x1="134.62" y1="15.24" x2="149.86" y2="15.24" width="0.1524" layer="91"/>
<pinref part="Q1" gate="G$1" pin="D"/>
<wire x1="149.86" y1="15.24" x2="149.86" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CAMERA" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="P$3"/>
<label x="-40.64" y="30.48" size="1.778" layer="95"/>
<wire x1="-45.72" y1="30.48" x2="-40.64" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GPIO22_15"/>
<wire x1="2.54" y1="43.18" x2="-2.54" y2="43.18" width="0.1524" layer="91"/>
<label x="-7.62" y="43.18" size="1.778" layer="95"/>
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
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
