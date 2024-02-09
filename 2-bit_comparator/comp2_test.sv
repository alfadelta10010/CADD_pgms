module comp2_test();
reg [1:0] a; 
reg [1:0] b;
wire g;
wire e;
wire l;
comp2w uut(.a(a), .b(b), .g(g), .e(e), .l(l));
initial
	begin
		a = 2'b00; b = 2'b00; #30;
		b = 2'b01; #30;
		b = 2'b10; #30;
		b = 2'b11; #30;
		a = 2'b01; b = 2'b00; #30;
		b = 2'b01; #30;
		b = 2'b10; #30;
		b = 2'b11; #30;
		a = 2'b10; b = 2'b00; #30;
		b = 2'b01; #30;
		b = 2'b10; #30;
		b = 2'b11; #30;
		a = 2'b11; b = 2'b00; #30;
		b = 2'b01; #30;
		b = 2'b10; #30;
		b = 2'b11; #30;
	end
endmodule
