module vedic_64x64(a,b,y);
input [63:0] a,b;
output [127:0] y;

wire [63:0] s1,s2,s3,s4,s5,s6,s7,s8,s9;
vedic_32x32 m1(a[31:0],b[31:0],s1);
vedic_32x32 m2(a[63:32],b[63:32],s4);
vedic_32x32 m3(a[31:0],b[63:32],s2);
vedic_32x32 m4(a[63:32],b[31:0],s3);

wire[63:0] k1,k2,k3;

assign k1 = {s4[31:0],s1[63:32]};
assign k2 = {s3[63:32],s2[31:0]};
assign k3 = {s2[63:32],s3[31:0]};

wire [64:0] cs;

csa_64 ff1(k1,k2,k3,cs,cout);
  
wire [31:0] m;
wire c9;
  
rca_32 ff2(s4[63:32],{30'b0,cout,cs[64]},m,0,c9);

assign y[31:0] = s1[31:0];
assign y[95:32] = cs[63:0];
assign y[127:96] = m[31:0];
endmodule 
