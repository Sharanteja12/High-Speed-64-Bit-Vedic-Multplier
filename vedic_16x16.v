module vedic_16x16(a,b,y);
input [15:0] a,b;
output [31:0] y;

wire [15:0] s1,s2,s3,s4,s5,s6,s7,s8,s9;

vedic_8x8 m1(a[7:0],b[7:0],s1);
vedic_8x8 m2(a[15:8],b[15:8],s4);
vedic_8x8 m3(a[7:0],b[15:8],s2);
vedic_8x8 m4(a[15:8],b[7:0],s3);

wire[15:0] k1,k2,k3;

assign k1 = {s4[7:0],s1[15:8]};
assign k2 = {s3[15:8],s2[7:0]};
assign k3 = {s2[15:8],s3[7:0]};

wire [16:0] cs;

csa_16 ff1(k1,k2,k3,cs,cout);
wire [7:0] m;
wire c9;

rca_8 ff2(s4[15:8],{6'b0,cout,cs[16]},m,0,c9);

assign y[7:0] = s1[7:0];
assign y[23:8] = cs[15:0];
assign y[31:24] = m[7:0];

endmodule
