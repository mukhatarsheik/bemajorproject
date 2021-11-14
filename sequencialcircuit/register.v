module rsr(clk,rst,r_in,r_out); input clk,rst,r_in;
output r_out; reg [3:0]q;
always@(posedge clk) begin
if(rst)
q<=0; else
q<={r_in,q[3:1]};  
end
endmodule
