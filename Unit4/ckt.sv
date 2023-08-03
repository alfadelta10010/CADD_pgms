//Write a program for the schematic of 2 flip flops connected back to back

module ckt(d, q, clk);
input logic d, clk;
output logic q;
logic n1;
always_ff @ (posedge clk)
	begin
	n1 <= d;
	q <= n1;
	end
endmodule