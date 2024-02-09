module FA_4(a, b, cin, s, cout);
input logic [3:0] a, b;
input logic cin;
output logic [3:0] s;
output logic cout;
logic [2:0] c;
FA_1 fa1(a[0], b[0], cin, s[0], c[0]);
FA_1 fa2(a[1], b[1], c[0], s[1], c[1]);
FA_1 fa3(a[2], b[2], c[1], s[2], c[2]);
FA_1 fa4(a[3], b[3], c[2], s[3], cout);
endmodule
