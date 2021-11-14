

# IN sequencial circuit

## **we will perform the stimulation and synthese of 4bit register(reg) bys using opensource tool as iverilog,gtkwave and visual studio code for stimulation as i had mention in my readme file in the same repository**

in this is file i am going to upload the code file for stimulation of 4bit register ckt by using the step one by one which i had mention already in my readme.md file in this same repository before going to my verilog code file please check my readme.md file for understanding the basic modal of stimulation of any circuit which i had given in the readme file and then you can perform the stimulation for this mux ckt in the same way as it was given there

### HERE I AM JUST PROVIDING YOU THE CODE FILE AND YOU NEED TO UNDERSTAND THEM PERFORM THE STIMULATION

#### 1.file will be the module code file of reg 

#### 2.this will be our testbench for the reg ckt
 

#### 3.A.OUT FILE this file appear after compiling

    
#### 4.VVP FILE to show the graphical wave of ckt as per the i/p and o/p 


#### 6.now invoke YOSYS tool and start typing the comments and follow the step in my readme resporatory file 
 yosys read_liberty -lib sky130_fd_sc_hd__tt_025C_1v80.lib read_verilog encoder.v synth -top modulename dfflibmap -liberty sky130_fd_sc_hd__tt_025C_1v80.lib abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib show tee -o report.txt stat -liberty sky130_fd_sc_hd__tt_025C_1v80.lib write_verilog -noattr netlist.v exit 

7.after the completion of yosys type exit and leave yosys and then

8. go for gate level simulation using the command " iverilog netlist file + skyhd.v file + test bench file"


