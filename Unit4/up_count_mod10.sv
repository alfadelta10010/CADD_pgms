// MOD-10 Up counter
module up_count_mod10(clk, q);
input logic clk;
output logic q[3:0];
logic reset;
always_ff @(posedge clk)
	begin
		q <= (reset == 1'b1 or q == 4'b1001)?4'b0:q + 1;
	end
endmodule