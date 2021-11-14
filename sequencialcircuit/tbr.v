module test_rsr; reg clk,rst,r_in; wire r_out;
rsr rsr1(clk,rst,l_in,l_out); /* instantiate rsr, and the instantiation name is rsr1 */ initial
begin rst=0; clk=0; #5
rst=1; #5
rst=0; end always
#5
clk=~clk;
initial
    begin
      $dumpfile("register.vcd");
      $dumpvars(1);
    end

initial begin

#25
r_in=1; #10
r_in=0; #10
r_in=1; #10
r_in=0; end initial #900
$finish;
endmodule