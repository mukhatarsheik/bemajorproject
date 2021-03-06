

# i am an engineering student of ece 4th year student

my  major project name is **implementation and physical design of 8/4-bit signed divider**

This Repository file is all about my B.E. final year Project.

This Repository created on date:03-11-2021.

In This I am going to explain how to use Iverilog and Gtkwave for verification and simulation of verilog modules using VScode as IDE. As we know Iverilog and gtkwave are opensource EDA tools it only runs on command prompt to make it simpler i am using vscode which provide a compact view for dealing with this kind of Opensource tools .

Before getting start plz do install:

1.icarus verilog (for windows download link:https://bleyer.org/icarus/ ).

2.vscode download link-https://code.visualstudio.com/download (also extentions i.Verilog-HDL/SystemVerilog/Bluespec SystemVerilog and ii.Graphviz Preview).

Lets Get Started

Step-1

open vscode and in vscode click openfolder using any of the two methods

![image](https://user-images.githubusercontent.com/93753343/140521231-c3797960-6719-4e8b-9aaf-94003ac11ef2.png)

![image](https://user-images.githubusercontent.com/93753343/140521597-593760df-8d34-4853-8935-26d099963ef3.png)



Step-2 Creat New Folder as shown and name it. In my case demux14

![image](https://user-images.githubusercontent.com/93753343/140522092-f34f18d7-5c53-409f-8fc1-0338c2456269.png)


after this select the created folder and click selectfolder button as shown

![image](https://user-images.githubusercontent.com/93753343/140522592-8054edd4-4538-42f3-b234-708b7bc4f766.png)


Step-3

creat new file with .v extension for example (demux14.v), by clicking the shown button

![image](https://user-images.githubusercontent.com/93753343/140523061-892fc9ed-38ba-445d-8605-7893062ea4bc.png)


write the verilog code for demux directory in that folder

![image](https://user-images.githubusercontent.com/93753343/140523462-7b0b8f07-ae5a-4db4-8f6b-3dbc1ada3b3a.png)


(i will update a repository for various verilog modules, for now get verilog codes here : https://github.com/vision-vlsi/verilog/tree/main/Combinational_circuits )

Step-4 Creat a TestBench file for the written verilog module. the main key point to take care while writing testbench is as followes

1.include "$dumpfile"

2.include "$monitor"

![image](https://user-images.githubusercontent.com/93753343/140523783-b9f2bf50-1d07-4b0a-a733-a35495d0286d.png)


Step-5 Now open a new terminal as shown

![image](https://user-images.githubusercontent.com/93753343/140525701-8eb0527b-27ad-47f0-ae92-0a6f7153fc15.png)


In terminal type the following commands

iverilog modulename testbenchname in my case => iverilog demux14.v tb.v 10
after this a new file "a.out" is generated use following command 11

![image](https://user-images.githubusercontent.com/93753343/140526249-59d78a17-502b-49a5-86bf-ae41a4227945.png)


Step-6

2.vvp a.out 12

![image](https://user-images.githubusercontent.com/93753343/140526937-f84e8301-0628-4e97-89be-22ed7fc26011.png)

you will be able to see resut in terminal as well as a new file with .vcd extention which is further use for generating waveforms13

![image](https://user-images.githubusercontent.com/93753343/140528704-2466860a-adeb-4b1d-ab96-d60d2f1c0b7d.png)


Step-7

![image](https://user-images.githubusercontent.com/93753343/140535717-1f53016f-2387-484a-b361-da69fd45af99.png)


for generating waveforms we are using gtkwave EDA Tool for waveform representation. use the following command for opening .vcd file in gtkwave

3.gtkwave modulename.vcd in my case => gtkwave encoder8to3.vcd 

the following window pop's up click the testbench as shown and append ports.after that click zoom fit butten to observe all changing waveforms in a single window use mouse and click on the various points on waves to observe the values on left signals window. 


![image](https://user-images.githubusercontent.com/93753343/174350449-9c860f4a-1bbf-4212-9482-ec1d8fcff340.png)


![image](https://user-images.githubusercontent.com/93753343/174350634-a6169ae1-a656-4fbc-a90e-d25e0c1a54dc.png)



all Required Codes for Simulation

iverilog modulename.v testbenchname.v
vvp a.out



gtkwave name.vcd
#Module-2

Now Lets start the synthesys Process

The main tool which we are using for now for synthesys process is YOSYS(Download link:http://www.clifford.at/yosys/download.html )

Please do the basic requirements before starting for that follow this repository(https://github.com/mukhatarsheik/bemajorproject/edit/main/README.md)

in this synthesys process we are using SKY130 liberary File. all the required files will be provided above. after downloading all the required files you will se a folder like this

![image](https://user-images.githubusercontent.com/93753343/140537429-cd6cd6e2-186b-479f-96c1-94e707f1d6af.png)


open that highlited folder in which you will find another two more folders open simultaneously this two folders and copy all the files from it and paste it in the main module folder which we have created in the begining.(total 3 files you have to copy and paste names are as followes

![image](https://user-images.githubusercontent.com/93753343/140537707-af94897c-354c-4cf4-9b35-a443c259ed57.png)



sky130_fd_sc_hd__tt_025C_1v80.lib
sky130_fd_sc_hd.v
primitives.v 20

![image](https://user-images.githubusercontent.com/93753343/140538489-f3b201c5-b00f-4919-8313-33100230667b.png)

now come back to VScode Terminal and follow the below given steps for simulation.

Step-1

In terminal Type yosys to open yosys tool 21

![image](https://user-images.githubusercontent.com/93753343/140539273-367d6dba-a6f1-48a7-b6c0-55f664bada21.png)


Step-2

if no errors come then follow the next command Type: read_liberty -lib sky130_fd_sc_hd__tt_025C_1v80.lib

![image](https://user-images.githubusercontent.com/93753343/140539772-0a51c4b9-112c-4960-aea4-ae53f144d1a4.png)


22

Step-3

after that type : read_verilog encoder.v // this command is use for reading module wirtten in verilog 23

![image](https://user-images.githubusercontent.com/93753343/140540295-44683703-6ba6-443d-b72f-de84094c31f2.png)


Step-4

after that use syntax for synthesys process : synth -top modulename // modulename means the name given in the main verilog code file for example "module modulename(i,o)" 24

![image](https://user-images.githubusercontent.com/93753343/140540988-79c6f58e-da67-4943-8a35-30b6e9df83b4.png)


Step-5
![image](https://user-images.githubusercontent.com/93753343/140542145-1d07e26f-4313-4a70-bd71-f952a8f2380e.png)

For mapping flip-flops to library use following command : dfflibmap -liberty sky130_fd_sc_hd__tt_025C_1v80.lib 25



Step-6

For mapping logic to library file use following command : abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib 

![image](https://user-images.githubusercontent.com/93753343/140544371-2adfd8ae-5a6f-4e06-a6f3-d3232aeb659f.png)


Step-7



for downloading netlist file type : show 35 34

Step-8

![image](https://user-images.githubusercontent.com/93753343/140544970-9a7d67e6-22b4-4d96-8ade-5f5e5af7e4f2.png)
type this following command tee -o report.txt stat skyfile full name

now use following command : tee -o report.txt stat -liberty sky130_fd_sc_hd__tt_025C_1v80.lib 27

Step-9

![image](https://user-images.githubusercontent.com/93753343/174354283-7350cc3f-1b99-4282-aba5-a11cfcde01c2.png)


![image](https://user-images.githubusercontent.com/93753343/174354823-7111368c-4513-41b2-a89f-e0c919223895.png)


follow as per the given instruction shown


![image](https://user-images.githubusercontent.com/93753343/140548335-4a430e70-1a37-4198-a86b-f63b907222ac.png)

we are done with synthesys now we need to download or write the synthesys file into some sort of file mainly in verilog formate for this use : write_verilog -noattr netlist.v 28


Step-10

![image](https://user-images.githubusercontent.com/93753343/140547059-7c698b14-8a0f-4843-b223-203f1dace985.png)


now we can exit for yosys tool for tha simply type "exit" and hit enter 29

at the end you will report.txt file and netlist.v

in which report.txt file shows the statistical data of the design made 32

![image](https://user-images.githubusercontent.com/93753343/140547456-3cc8e137-9e2b-496c-b8c0-bc79d0f12555.png)


and netlist.v file shows the all the detailed information which requred to make a intigrated Circuit. This is the file we give to foundry for making a physical copy. 33

![image](https://user-images.githubusercontent.com/93753343/140549504-fe43cb15-69d7-4584-af4b-ec816785360f.png)


all required module-2 commands

yosys
read_liberty -lib sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog encoder.v
synth -top modulename
dfflibmap -liberty sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib
show
tee -o report.txt stat -liberty sky130_fd_sc_hd__tt_025C_1v80.lib
write_verilog -noattr netlist.v
exit
#Module 3

In this we are going to do Gatelevel simulation. for that we are going to use following files 1.netlist.v 2.sky130_fd_sc_hd.v 3.testbench.v use the following code for gatelevel simulation : iverilog netlist.v sky130_fd_sc_hd.v tb.v 30

