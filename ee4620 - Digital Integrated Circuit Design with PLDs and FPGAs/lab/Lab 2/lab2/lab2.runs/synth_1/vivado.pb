
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:082

00:00:092

1465.0312
58.8282
106932
21109Z17-722h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental {/home/ecslogon/Desktop/Lab 2/lab2/lab2.srcs/utils_1/imports/synth_1/topmodule.dcp}Z12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2S
Q/home/ecslogon/Desktop/Lab 2/lab2/lab2.srcs/utils_1/imports/synth_1/topmodule.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
d
Command: %s
53*	vivadotcl23
1synth_design -top topmodule -part xc7z020clg484-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7z020Z17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7z020Z17-349h px� 
D
Loading part %s157*device2
xc7z020clg484-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
4Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
26169Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2236.336 ; gain = 404.785 ; free physical = 9650 ; free virtual = 20065
h px� 
�
synthesizing module '%s'638*oasys2
	topmodule2M
I/home/ecslogon/Desktop/Lab 2/design src/topmodule/topmodule_Mealy1111.vhd2
298@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
lfsr2;
9/home/ecslogon/Desktop/Lab 2/design src/oled src/lsfr.vhd2
122
	comp_lfsr2
lfsr2M
I/home/ecslogon/Desktop/Lab 2/design src/topmodule/topmodule_Mealy1111.vhd2
978@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
lfsr2=
9/home/ecslogon/Desktop/Lab 2/design src/oled src/lsfr.vhd2
208@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
lfsr2
02
12=
9/home/ecslogon/Desktop/Lab 2/design src/oled src/lsfr.vhd2
208@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	oled_ctrl2@
>/home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ctrl.vhd2
152
	comp_oled2
	oled_ctrl2M
I/home/ecslogon/Desktop/Lab 2/design src/topmodule/topmodule_Mealy1111.vhd2
998@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	oled_ctrl2B
>/home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ctrl.vhd2
278@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	oled_init2@
>/home/ecslogon/Desktop/Lab 2/design src/oled src/oled_init.vhd2
132

Initialize2
	oled_init2B
>/home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ctrl.vhd2
768@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	oled_init2B
>/home/ecslogon/Desktop/Lab 2/design src/oled src/oled_init.vhd2
268@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

spi_ctrl2?
=/home/ecslogon/Desktop/Lab 2/design src/oled src/spi_ctrl.vhd2
142

spi_comp2

spi_ctrl2B
>/home/ecslogon/Desktop/Lab 2/design src/oled src/oled_init.vhd2
928@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

spi_ctrl2A
=/home/ecslogon/Desktop/Lab 2/design src/oled src/spi_ctrl.vhd2
248@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

spi_ctrl2
02
12A
=/home/ecslogon/Desktop/Lab 2/design src/oled src/spi_ctrl.vhd2
248@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
delay2<
:/home/ecslogon/Desktop/Lab 2/design src/oled src/delay.vhd2
132

delay_comp2
delay2B
>/home/ecslogon/Desktop/Lab 2/design src/oled src/oled_init.vhd2
1008@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
delay2>
:/home/ecslogon/Desktop/Lab 2/design src/oled src/delay.vhd2
218@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
delay2
02
12>
:/home/ecslogon/Desktop/Lab 2/design src/oled src/delay.vhd2
218@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	oled_init2
02
12B
>/home/ecslogon/Desktop/Lab 2/design src/oled src/oled_init.vhd2
268@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
oled_ex2>
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
162	
Example2	
oled_ex2B
>/home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ctrl.vhd2
878@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2	
oled_ex2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
278@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

spi_ctrl2?
=/home/ecslogon/Desktop/Lab 2/design src/oled src/spi_ctrl.vhd2
142

spi_comp2

spi_ctrl2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1538@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
delay2<
:/home/ecslogon/Desktop/Lab 2/design src/oled src/delay.vhd2
132

delay_comp2
delay2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1628@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	ascii_rom2@
>/home/ecslogon/Desktop/Lab 2/design src/oled src/ascii_rom.vhd2
122
char_lib_comp2
	ascii_rom2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1698@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	ascii_rom2B
>/home/ecslogon/Desktop/Lab 2/design src/oled src/ascii_rom.vhd2
188@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	ascii_rom2
02
12B
>/home/ecslogon/Desktop/Lab 2/design src/oled src/ascii_rom.vhd2
188@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
oled_ex2
02
12@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
278@Z8-256h px� 
�
default block is never used226*oasys2B
>/home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ctrl.vhd2
1168@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	oled_ctrl2
02
12B
>/home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ctrl.vhd2
278@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
mealy2=
;/home/ecslogon/Desktop/Lab 2/design src/mealy/Mealy1111.vhd2
42
comp_design2
mealy2M
I/home/ecslogon/Desktop/Lab 2/design src/topmodule/topmodule_Mealy1111.vhd2
1098@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
mealy2?
;/home/ecslogon/Desktop/Lab 2/design src/mealy/Mealy1111.vhd2
118@Z8-638h px� 
�
default block is never used226*oasys2?
;/home/ecslogon/Desktop/Lab 2/design src/mealy/Mealy1111.vhd2
328@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mealy2
02
12?
;/home/ecslogon/Desktop/Lab 2/design src/mealy/Mealy1111.vhd2
118@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	topmodule2
02
12M
I/home/ecslogon/Desktop/Lab 2/design src/topmodule/topmodule_Mealy1111.vhd2
298@Z8-256h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[0,16]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[0,17]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[0,18]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[0,19]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[0,20]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[0,21]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[1,16]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[1,17]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[1,18]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[1,19]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[1,20]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[1,21]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[2,16]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[2,17]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[2,18]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[2,19]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[2,20]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[2,21]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[3,16]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[3,17]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[3,18]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[3,19]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[3,20]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
current_screen_reg[3,21]2@
</home/ecslogon/Desktop/Lab 2/design src/oled src/oled_ex.vhd2
1868@Z8-6014h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[10]2
	ascii_romZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,16][7]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,16][6]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,16][5]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,16][4]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,16][3]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,16][2]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,16][1]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,16][0]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,17][7]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,17][6]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,17][5]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,17][4]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,17][3]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,17][2]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,17][1]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,17][0]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,18][7]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,18][6]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,18][5]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,18][4]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,18][3]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,18][2]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,18][1]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,18][0]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,19][7]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,19][6]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,19][5]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,19][4]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,19][3]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,19][2]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,19][1]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,19][0]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,20][7]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,20][6]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,20][5]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,20][4]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,20][3]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,20][2]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,20][1]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,20][0]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,21][7]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,21][6]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,21][5]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,21][4]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,21][3]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,21][2]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,21][1]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[0,21][0]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,16][7]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,16][6]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,16][5]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,16][4]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,16][3]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,16][2]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,16][1]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,16][0]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,17][7]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,17][6]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,17][5]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,17][4]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,17][3]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,17][2]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,17][1]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,17][0]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,18][7]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,18][6]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,18][5]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,18][4]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,18][3]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,18][2]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,18][1]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,18][0]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,19][7]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,19][6]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,19][5]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,19][4]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,19][3]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,19][2]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,19][1]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,19][0]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,20][7]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,20][6]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,20][5]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,20][4]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,20][3]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,20][2]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,20][1]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,20][0]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,21][7]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,21][6]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,21][5]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,21][4]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,21][3]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,21][2]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,21][1]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[1,21][0]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[2,16][7]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[2,16][6]2	
oled_exZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data[2,16][5]2	
oled_exZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 2338.281 ; gain = 506.730 ; free physical = 9551 ; free virtual = 19968
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 2350.148 ; gain = 518.598 ; free physical = 9574 ; free virtual = 19984
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 2350.148 ; gain = 518.598 ; free physical = 9574 ; free virtual = 19984
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.012
00:00:00.022

2350.1482
0.0002
95742
19984Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2G
C/home/ecslogon/Desktop/Lab 2/design src/constraints/constraints.xdc8Z20-179h px� 
�
No nets matched '%s'.
507*	planAhead2
N_IBUF2G
C/home/ecslogon/Desktop/Lab 2/design src/constraints/constraints.xdc2
218@Z12-507h px�
�
"'%s' expects at least one object.
55*common2
set_property2G
C/home/ecslogon/Desktop/Lab 2/design src/constraints/constraints.xdc2
218@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2G
C/home/ecslogon/Desktop/Lab 2/design src/constraints/constraints.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2E
C/home/ecslogon/Desktop/Lab 2/design src/constraints/constraints.xdc2
.Xil/topmodule_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2465.8832
0.0002
95572
19967Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.012

2465.8832
0.0002
95562
19966Z17-722h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 2465.887 ; gain = 634.336 ; free physical = 9556 ; free virtual = 19966
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7z020clg484-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 2465.891 ; gain = 634.340 ; free physical = 9556 ; free virtual = 19966
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 2465.891 ; gain = 634.340 ; free physical = 9556 ; free virtual = 19966
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
t
3inferred FSM for state register '%s' in module '%s'802*oasys2
current_state_reg2

spi_ctrlZ8-802h px� 
q
3inferred FSM for state register '%s' in module '%s'802*oasys2
current_state_reg2
delayZ8-802h px� 
u
3inferred FSM for state register '%s' in module '%s'802*oasys2
current_state_reg2
	oled_ctrlZ8-802h px� 
q
3inferred FSM for state register '%s' in module '%s'802*oasys2
present_state_reg2
mealyZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    idle |                             0001 |                               00
h p
x
� 
y
%s
*synth2a
_                    send |                             0010 |                               01
h p
x
� 
y
%s
*synth2a
_                    done |                             0100 |                               10
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                             1000 |                               11
h p
x
� 

%s
*synth2
*
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
current_state_reg2	
one-hot2

spi_ctrlZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    idle |                             0001 |                               00
h p
x
� 
y
%s
*synth2a
_                    hold |                             0010 |                               01
h p
x
� 
y
%s
*synth2a
_                    done |                             0100 |                               10
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                             1000 |                               11
h p
x
� 

%s
*synth2
*
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
current_state_reg2	
one-hot2
delayZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    idle |                             0001 |                               00
h p
x
� 
y
%s
*synth2a
_          oledinitialize |                             0010 |                               01
h p
x
� 
y
%s
*synth2a
_             oledexample |                             0100 |                               10
h p
x
� 
y
%s
*synth2a
_                    done |                             1000 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
current_state_reg2	
one-hot2
	oled_ctrlZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                     st0 |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_                     st1 |                               01 |                               01
h p
x
� 
y
%s
*synth2a
_                     st2 |                               10 |                               10
h p
x
� 
y
%s
*synth2a
_                     st3 |                               11 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
present_state_reg2

sequential2
mealyZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 2465.891 ; gain = 634.340 ; free physical = 9555 ; free virtual = 19966
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 2     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   4 Input      1 Bit         XORs := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               21 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	               11 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 70    
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 9     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 16    
h p
x
� 
&
%s
*synth2
+---ROMs : 
h p
x
� 
>
%s
*synth2&
$	                    ROMs := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	  30 Input   21 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   20 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  30 Input   11 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  30 Input    8 Bit        Muxes := 65    
h p
x
� 
F
%s
*synth2.
,	   4 Input    8 Bit        Muxes := 16    
h p
x
� 
F
%s
*synth2.
,	  28 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  30 Input    5 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	  30 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 23    
h p
x
� 
F
%s
*synth2.
,	  28 Input    1 Bit        Muxes := 10    
h p
x
� 
F
%s
*synth2.
,	  30 Input    1 Bit        Muxes := 10    
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
iRegister %s driving address of a ROM cannot be packed in BRAM/URAM because of presence of initial value.
4359*oasys2
temp_addr_regZ8-6040h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2?
=comp_oled/Initialize/spi_comp/FSM_onehot_current_state_reg[3]2
	topmoduleZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2A
?comp_oled/Initialize/delay_comp/FSM_onehot_current_state_reg[3]2
	topmoduleZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
:comp_oled/Example/spi_comp/FSM_onehot_current_state_reg[3]2
	topmoduleZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2>
<comp_oled/Example/delay_comp/FSM_onehot_current_state_reg[3]2
	topmoduleZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 2465.891 ; gain = 634.340 ; free physical = 9538 ; free virtual = 19955
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
;
%s*synth2#
!
ROM: Preliminary Mapping Report
h px� 
m
%s*synth2U
S+------------+----------------------------------+---------------+----------------+
h px� 
n
%s*synth2V
T|Module Name | RTL Object                       | Depth x Width | Implemented As | 
h px� 
m
%s*synth2U
S+------------+----------------------------------+---------------+----------------+
h px� 
n
%s*synth2V
T|oled_init   | after_state                      | 32x1          | LUT            | 
h px� 
n
%s*synth2V
T|oled_init   | after_state                      | 32x5          | LUT            | 
h px� 
n
%s*synth2V
T|oled_init   | temp_sdata                       | 32x1          | LUT            | 
h px� 
n
%s*synth2V
T|oled_init   | temp_sdata                       | 32x8          | LUT            | 
h px� 
n
%s*synth2V
T|oled_ex     | after_state                      | 32x1          | LUT            | 
h px� 
n
%s*synth2V
T|oled_ex     | temp_addr                        | 32x1          | LUT            | 
h px� 
n
%s*synth2V
T|oled_ex     | after_state                      | 32x1          | LUT            | 
h px� 
n
%s*synth2V
T|oled_ex     | temp_addr                        | 32x1          | LUT            | 
h px� 
n
%s*synth2V
T|oled_ex     | char_lib_comp/dout_reg           | 1024x8        | Block RAM      | 
h px� 
n
%s*synth2V
T|topmodule   | comp_oled/Initialize/temp_sdata  | 32x8          | LUT            | 
h px� 
n
%s*synth2V
T|topmodule   | comp_oled/Initialize/after_state | 32x1          | LUT            | 
h px� 
n
%s*synth2V
T|topmodule   | comp_oled/Initialize/temp_sdata  | 32x1          | LUT            | 
h px� 
n
%s*synth2V
T+------------+----------------------------------+---------------+----------------+

h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:24 ; elapsed = 00:00:25 . Memory (MB): peak = 2465.891 ; gain = 634.340 ; free physical = 9537 ; free virtual = 19954
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:24 ; elapsed = 00:00:25 . Memory (MB): peak = 2465.891 ; gain = 634.340 ; free physical = 9537 ; free virtual = 19954
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2*
(comp_oled/Example/char_lib_comp/dout_reg2
BlockZ8-7052h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:24 ; elapsed = 00:00:25 . Memory (MB): peak = 2465.891 ; gain = 634.340 ; free physical = 9537 ; free virtual = 19954
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:29 ; elapsed = 00:00:29 . Memory (MB): peak = 2465.891 ; gain = 634.340 ; free physical = 9537 ; free virtual = 19954
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:29 ; elapsed = 00:00:29 . Memory (MB): peak = 2465.891 ; gain = 634.340 ; free physical = 9537 ; free virtual = 19954
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:29 ; elapsed = 00:00:29 . Memory (MB): peak = 2465.891 ; gain = 634.340 ; free physical = 9537 ; free virtual = 19954
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:29 ; elapsed = 00:00:29 . Memory (MB): peak = 2465.891 ; gain = 634.340 ; free physical = 9537 ; free virtual = 19954
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:29 ; elapsed = 00:00:29 . Memory (MB): peak = 2465.891 ; gain = 634.340 ; free physical = 9537 ; free virtual = 19954
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:29 ; elapsed = 00:00:29 . Memory (MB): peak = 2465.891 ; gain = 634.340 ; free physical = 9537 ; free virtual = 19954
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |BUFG     |     2|
h px� 
4
%s*synth2
|2     |CARRY4   |    34|
h px� 
4
%s*synth2
|3     |LUT1     |    17|
h px� 
4
%s*synth2
|4     |LUT2     |    49|
h px� 
4
%s*synth2
|5     |LUT3     |    38|
h px� 
4
%s*synth2
|6     |LUT4     |    46|
h px� 
4
%s*synth2
|7     |LUT5     |    77|
h px� 
4
%s*synth2
|8     |LUT6     |    86|
h px� 
4
%s*synth2
|9     |MUXF7    |    15|
h px� 
4
%s*synth2
|10    |MUXF8    |     6|
h px� 
4
%s*synth2
|11    |RAMB18E1 |     1|
h px� 
4
%s*synth2
|12    |FDCE     |     7|
h px� 
4
%s*synth2
|13    |FDPE     |    14|
h px� 
4
%s*synth2
|14    |FDRE     |   291|
h px� 
4
%s*synth2
|15    |FDSE     |     9|
h px� 
4
%s*synth2
|16    |IBUF     |     4|
h px� 
4
%s*synth2
|17    |OBUF     |     6|
h px� 
4
%s*synth2
+------+---------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:29 ; elapsed = 00:00:29 . Memory (MB): peak = 2465.891 ; gain = 634.340 ; free physical = 9537 ; free virtual = 19954
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
b
%s
*synth2J
HSynthesis finished with 0 errors, 0 critical warnings and 198 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 2465.891 ; gain = 518.605 ; free physical = 9537 ; free virtual = 19954
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:29 ; elapsed = 00:00:30 . Memory (MB): peak = 2465.891 ; gain = 634.340 ; free physical = 9537 ; free virtual = 19954
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.012
00:00:00.012

2465.8912
0.0002
98152
20232Z17-722h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
56Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2465.8912
0.0002
98162
20233Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

ab2baeccZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
612
1312
12
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:382

00:00:382

2465.8912	
994.9142
98152
20232Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1811.434; main = 1508.673; forked = 335.724Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2>
<(MB): overall = 3760.695; main = 2465.895; forked = 1294.809Z17-2834h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.012

2489.8952
0.0002
98142
20231Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2C
A/home/ecslogon/Desktop/Lab 2/lab2/lab2.runs/synth_1/topmodule.dcpZ17-1381h px� 
�
%s4*runtcl2j
hExecuting : report_utilization -file topmodule_utilization_synth.rpt -pb topmodule_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Thu May 23 15:11:41 2024Z17-206h px� 


End Record