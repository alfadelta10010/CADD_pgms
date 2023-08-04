module jk_ff(j, k, clk, q);
input logic j, k, clk;
output logic q;
always_ff @ (posedge clk)
case({j, k})
	2'b00: q <= q;
	2'b01: q <= 1'b0;
	2'b10: q <= 1'b1;
	2'b11: q <= ~q;
	endcase
endmodule