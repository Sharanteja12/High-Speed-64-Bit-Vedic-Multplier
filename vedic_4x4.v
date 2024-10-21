module vedic_4x4(a, b, y);

input [3:0] a, b;
output [7:0] y;

wire [3:0] s1, s2, s3, s4;
wire [4:0] cs;
wire cout;
wire [2:0] m;

vedic_2x2 v1(a[1:0], b[1:0], s1);
vedic_2x2 v2(a[3:2], b[3:2], s4);
vedic_2x2 v3(a[1:0], b[3:2], s2);
vedic_2x2 v4(a[3:2], b[1:0], s3);

csa cs({s4[1], s4[0], s1[3], s1[2]}, {s3[3], s3[2], s2[1], s2[0]}, {s2[3], s2[2], s3[1], s3[0]}, cs, cout);

adder_2 ad2(s4[3:2], {cout, cs[4]}, m);

assign y[1:0] = s1[1:0];
assign y[5:2] = cs[3:0];
assign y[7:6] = m[1:0];
endmodule
