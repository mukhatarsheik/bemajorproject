

# IN COMBINATION CIRCUIT 

## **we will perform the stimulation and synthese of mux 4:1(mux) bys using opensource tool as iverilog,gtkwave and visual studio code for stimulation as i had mention in my readme file in the same repository**

in this is file i am going to upload the code file for stimulation of 4:1 mux ckt by using the step one by one which i had mention already in my readme.md file in this same repository before going to my verilog code file please check my readme.md file for understanding the basic modal of stimulation of any circuit which i had given in the readme file and then you can perform the stimulation for this mux ckt in the same way as it was given there

### HERE I AM JUST PROVIDING YOU THE CODE FILE AND YOU NEED TO UNDERSTAND THEM PERFORM THE STIMULATION

#### 1.file will be the module code file of mux 
module m41 ( a, b, c, d, s0, s1, out);


input wire a, b, c, d;


input wire s0, s1;


output reg out;


always @ (a or b or c or d or s0, s1)


begin


case (s0 | s1)


2'b00 : out <= a;


2'b01 : out <= b;


2'b10 : out <= c;


2'b11 : out <= d;


endcase


end


endmodule



#### 2.this will be our testbench for the mux ckt
 module top;

wire  out;
reg  a;
reg  b;
reg  c;
reg  d;
reg s0, s1;
m41 name(.out(out), .a(a), .b(b), .c(c), .d(d), .s0(s0), .s1(s1));
initial
    begin
      $dumpfile("mux.vcd");
      $dumpvars(1);
    end
 initial
 begin
 a=1'b0; b=1'b0; c=1'b0; d=1'b0;
 s0=1'b0; s1=1'b0;
 #500 $finish;
end
always #40 a=~a;
always #20 b=~b;
always #10 c=~c;
always #5 d=~d;
always #80 s0=~s0;
always #160 s1=~s1;
always@(a or b or c or d or s0 or s1) 
$monitor("At time = %t, Output = %d", $time, out);
endmodule;

#### 3.A.OUT FILE this file appear after compiling
#! /c/iverilog/bin/vvp
:ivl_version "12.0 (devel)" "(s20150603-965-g55e06db6)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "C:\iverilog\lib\ivl\system.vpi";
:vpi_module "C:\iverilog\lib\ivl\vhdl_sys.vpi";
:vpi_module "C:\iverilog\lib\ivl\vhdl_textio.vpi";
:vpi_module "C:\iverilog\lib\ivl\v2005_math.vpi";
:vpi_module "C:\iverilog\lib\ivl\va_math.vpi";
S_000000000090a650 .scope module, "top" "top" 2 1;
 .timescale 0 0;
v00000000010c2570_0 .var "a", 0 0;
v00000000010c2610_0 .var "b", 0 0;
v00000000010c26b0_0 .var "c", 0 0;
v00000000010f1d50_0 .var "d", 0 0;
v00000000010f1fd0_0 .net "out", 0 0, v000000000090ae70_0;  1 drivers
v00000000010f2070_0 .var "s0", 0 0;
v00000000010f1cb0_0 .var "s1", 0 0;
S_000000000090aba0 .scope module, "name" "m41" 2 9, 3 1 0, S_000000000090a650;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "a";
    .port_info 1 /INPUT 1 "b";
    .port_info 2 /INPUT 1 "c";
    .port_info 3 /INPUT 1 "d";
    .port_info 4 /INPUT 1 "s0";
    .port_info 5 /INPUT 1 "s1";
    .port_info 6 /OUTPUT 1 "out";
v0000000000909f60_0 .net "a", 0 0, v00000000010c2570_0;  1 drivers
v000000000090cc00_0 .net "b", 0 0, v00000000010c2610_0;  1 drivers
v000000000090ad30_0 .net "c", 0 0, v00000000010c26b0_0;  1 drivers
v000000000090add0_0 .net "d", 0 0, v00000000010f1d50_0;  1 drivers
v000000000090ae70_0 .var "out", 0 0;
v000000000090af10_0 .net "s0", 0 0, v00000000010f2070_0;  1 drivers
v00000000010c24d0_0 .net "s1", 0 0, v00000000010f1cb0_0;  1 drivers
E_00000000010e5720/0 .event edge, v00000000010c24d0_0, v000000000090af10_0, v000000000090add0_0, v000000000090ad30_0;
E_00000000010e5720/1 .event edge, v000000000090cc00_0, v0000000000909f60_0;
E_00000000010e5720 .event/or E_00000000010e5720/0, E_00000000010e5720/1;
    .scope S_000000000090aba0;
T_0 ;
    %wait E_00000000010e5720;
    %load/vec4 v000000000090af10_0;
    %pad/u 2;
    %load/vec4 v00000000010c24d0_0;
    %pad/u 2;
    %or;
    %dup/vec4;
    %pushi/vec4 0, 0, 2;
    %cmp/u;
    %jmp/1 T_0.0, 6;
    %dup/vec4;
    %pushi/vec4 1, 0, 2;
    %cmp/u;
    %jmp/1 T_0.1, 6;
    %dup/vec4;
    %pushi/vec4 2, 0, 2;
    %cmp/u;
    %jmp/1 T_0.2, 6;
    %dup/vec4;
    %pushi/vec4 3, 0, 2;
    %cmp/u;
    %jmp/1 T_0.3, 6;
    %jmp T_0.4;
T_0.0 ;
    %load/vec4 v0000000000909f60_0;
    %assign/vec4 v000000000090ae70_0, 0;
    %jmp T_0.4;
T_0.1 ;
    %load/vec4 v000000000090cc00_0;
    %assign/vec4 v000000000090ae70_0, 0;
    %jmp T_0.4;
T_0.2 ;
    %load/vec4 v000000000090ad30_0;
    %assign/vec4 v000000000090ae70_0, 0;
    %jmp T_0.4;
T_0.3 ;
    %load/vec4 v000000000090add0_0;
    %assign/vec4 v000000000090ae70_0, 0;
    %jmp T_0.4;
T_0.4 ;
    %pop/vec4 1;
    %jmp T_0;
    .thread T_0, $push;
    .scope S_000000000090a650;
T_1 ;
    %vpi_call 2 12 "$dumpfile", "mux.vcd" {0 0 0};
    %vpi_call 2 13 "$dumpvars", 32'sb00000000000000000000000000000001 {0 0 0};
    %end;
    .thread T_1;
    .scope S_000000000090a650;
T_2 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v00000000010c2570_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v00000000010c2610_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v00000000010c26b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v00000000010f1d50_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v00000000010f2070_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v00000000010f1cb0_0, 0, 1;
    %delay 500, 0;
    %vpi_call 2 19 "$finish" {0 0 0};
    %end;
    .thread T_2;
    .scope S_000000000090a650;
T_3 ;
    %delay 40, 0;
    %load/vec4 v00000000010c2570_0;
    %inv;
    %store/vec4 v00000000010c2570_0, 0, 1;
    %jmp T_3;
    .thread T_3;
    .scope S_000000000090a650;
T_4 ;
    %delay 20, 0;
    %load/vec4 v00000000010c2610_0;
    %inv;
    %store/vec4 v00000000010c2610_0, 0, 1;
    %jmp T_4;
    .thread T_4;
    .scope S_000000000090a650;
T_5 ;
    %delay 10, 0;
    %load/vec4 v00000000010c26b0_0;
    %inv;
    %store/vec4 v00000000010c26b0_0, 0, 1;
    %jmp T_5;
    .thread T_5;
    .scope S_000000000090a650;
T_6 ;
    %delay 5, 0;
    %load/vec4 v00000000010f1d50_0;
    %inv;
    %store/vec4 v00000000010f1d50_0, 0, 1;
    %jmp T_6;
    .thread T_6;
    .scope S_000000000090a650;
T_7 ;
    %delay 80, 0;
    %load/vec4 v00000000010f2070_0;
    %inv;
    %store/vec4 v00000000010f2070_0, 0, 1;
    %jmp T_7;
    .thread T_7;
    .scope S_000000000090a650;
    
    
T_8 ;


    %delay 160, 0;
    
    
    %load/vec4 v00000000010f1cb0_0;
    
    
    
    %inv;
    
    
    %store/vec4 v00000000010f1cb0_0, 0, 1;
    
    
    
    %jmp T_8;
    
    
    .thread T_8;
    
    
    .scope S_000000000090a650;
    
    
T_9 ;


    %wait E_00000000010e5720;
    
    
    %vpi_call 2 28 "$monitor", "At time = %t, Output = %d", $time, v00000000010f1fd0_0 {0 0 0};
    
    
    %jmp T_9;
    
    
    .thread T_9, $push;
    
    
##### The file index is used to find the file name in the following table.


:file_names 4;


    "N/A";
    
    
    "<interactive>";
 
 
    ".\tlb.v";
 
 
    ".\mux.v";


#### 4.VVP FILE to show the graphical wave of ckt as per the i/p and o/p 
$date
	Thu Nov 04 00:03:48 2021
$end
$version
	Icarus Verilog
$end
$timescale
	1s
$end
$scope module top $end
$var wire 1 ! out $end
$var reg 1 " a $end
$var reg 1 # b $end
$var reg 1 $ c $end
$var reg 1 % d $end
$var reg 1 & s0 $end
$var reg 1 ' s1 $end
$upscope $end
$enddefinitions $end
#0
$dumpvars
0'
0&
0%
0$
0#
0"
0!
$end
#5
1%
#10
0%
1$
#15
1%
#20
0%
0$
1#
#25
1%
#30
0%
1$
#35
1%
#40
1!
0%
0$
0#
1"
#45
1%
#50
0%
1$
#55
1%
#60
0%
0$
1#
#65
1%
#70
0%
1$
#75
1%
#80
0!
0%
0$
0#
0"
1&
#85
1%
#90
0%
1$
#95
1%
#100
1!
0%
0$
1#
#105
1%
#110
0%
1$
#115
1%
#120
0!
0%
0$
0#
1"
#125
1%
#130
0%
1$
#135
1%
#140
1!
0%
0$
1#
#145
1%
#150
0%
1$
#155
1%
#160
0!
0%
0$
0#
0"
0&
1'
#165
1%
#170
0%
1$
#175
1%
#180
1!
0%
0$
1#
#185
1%
#190
0%
1$
#195
1%
#200
0!
0%
0$
0#
1"
#205
1%
#210
0%
1$
#215
1%
#220
1!
0%
0$
1#
#225
1%
#230
0%
1$
#235
1%
#240
0!
0%
0$
0#
0"
1&
#245
1%
#250
0%
1$
#255
1%
#260
1!
0%
0$
1#
#265
1%
#270
0%
1$
#275
1%
#280
0!
0%
0$
0#
1"
#285
1%
#290
0%
1$
#295
1%
#300
1!
0%
0$
1#
#305
1%
#310
0%
1$
#315
1%
#320
0!
0%
0$
0#
0"
0&
0'
#325
1%
#330
0%
1$
#335
1%
#340
0%
0$
1#
#345
1%
#350
0%
1$
#355
1%
#360
1!
0%
0$
0#
1"
#365
1%
#370
0%
1$
#375
1%
#380
0%
0$
1#
#385
1%
#390
0%
1$
#395
1%
#400
0!
0%
0$
0#
0"
1&
#405
1%
#410
0%
1$
#415
1%
#420
1!
0%
0$
1#
#425
1%
#430
0%
1$
#435
1%
#440
0!
0%
0$
0#
1"
#445
1%
#450
0%
1$
#455
1%
#460
1!
0%
0$
1#
#465
1%
#470
0%
1$
#475
1%
#480
0!
0%
0$
0#
0"
0&
1'
#485
1%
#490
0%
1$
#495
1%
#500
1!
0%
0$
1#


5.NOW ADD SKY130_LIB FILE in your mux folder from my sky130 file from my sky reporitory and three file from it 1)sky130_fd_sc_hd__tt_025C_1v80 2)SKY130_FD_SC_HD 3)primitive

#### 6.now invoke YOSYS tool and start typing the comments and follow the step in my readme resporatory file 
 yosys read_liberty -lib sky130_fd_sc_hd__tt_025C_1v80.lib read_verilog encoder.v synth -top modulename dfflibmap -liberty sky130_fd_sc_hd__tt_025C_1v80.lib abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib show tee -o report.txt stat -liberty sky130_fd_sc_hd__tt_025C_1v80.lib write_verilog -noattr netlist.v exit 

7.after the completion of yosys type exit and leave yosys and then

8. go for gate level simulation using the command " iverilog netlist file + skyhd.v file + test bench file"

