module comp2_tb();
reg [1:0] a; 
reg [1:0] b;
wire g;
wire e;
wire l;
comp2w uut(.a(a), .b(b), .g(g), .e(e), .l(l));
initial
	begin
		a = 2'b00; b = 2'b00; #30;
		assert (g === 0) $display("a !> b for 00, 00");
			else $error("a > b failed for 00, 00");
		b = 2'b01; #30; 
		assert (g === 0) $display("a !> b for 00, 01");
			else $error("a > b failed for 00, 01");
		b = 2'b10; #30;
		assert (g === 0) $display("a !> b for 00, 10");
			else $error("a > b failed for 00, 10");
		b = 2'b11; #30;
		assert (g === 0) $display("a !> b for 00, 11");
			else $error("a > b failed for 00, 11");
		a = 2'b11; b = 2'b00; #30;
		assert (g === 1) $display("a > b for 11, 00");
			else $error("a > b failed for 11, 00");
		b = 2'b01; #30;
		assert (g === 1) $display("a > b for 11, 01");
			else $error("a > b failed for 11, 01");
		b = 2'b10; #30;
		assert (g === 1) $display("a > b for 11, 10");
			else $error("a > b failed for 11, 10");
		b = 2'b11; #30;
		assert (g === 0) $display("a !> b for 11, 11");
			else $error("a > b failed for 11, 11");
	end
endmodule
