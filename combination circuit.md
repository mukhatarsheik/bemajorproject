

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

#### 3.A.OUT FILE this file appear compiling

4.VVP FILE to show the graphical wave of ckt as per the i/p and o/p 

5.NOW ADD SKY130_LIB FILE in your mux folder from my sky130 file from my sky reporitory and three file from it 1)sky130_fd_sc_hd__tt_025C_1v80 2)SKY130_FD_SC_HD 3)primitive

6.now invoke YOSYS tool and start typing the comments and follow the step in my readme resporatory file 

7.after the completion of yosys type exit and leave yosys and then

8. go for gate level simulation using the command " iverilog netlist file + skyhd.v file + test bench file"

