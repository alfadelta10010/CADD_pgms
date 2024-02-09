module FA_32_tb();
reg [31:0] a,b;
reg ci;
wire [31:0] s;
wire co;

FA_32 dut(a,b,ci,s,co);

initial 
	begin
		a=32'b0; b=32'b1; ci=1'b0; #20;
		a=32'b1; ci=1'b1; #20;
	end 
endmodule