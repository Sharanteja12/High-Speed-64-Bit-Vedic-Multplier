module rca(a, b, s, cin, cout); // 4 Bit Ripple Carry Adder

input [3:0] a, b;
input cin;
output [3:0] s;
output cout;

wire [3:0] c;

fa fa1(a[0], b[0], cin, s[0], c[0]);
fa fa2(a[1], b[1], c[0], s[1], c[1]);
fa fa3(a[2], b[2], c[1], s[2], c[2]);
fa fa4(a[3], b[3], c[2], s[3], cout);
  
endmodule
