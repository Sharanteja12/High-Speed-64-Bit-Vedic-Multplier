module vedic_32x32(a,b,y);
input [31:0] a,b;
output [63:0] y;

wire [31:0] s1,s2,s3,s4,s5,s6,s7,s8,s9;
  
vedic_16x16 v161(a[15:0],b[15:0],s1);
vedic_16x16 v162(a[15:0],b[31:16],s2);
vedic_16x16 v163(a[31:16],b[15:0],s3);
vedic_16x16 v164(a[31:16],b[31:16],s4);

wire[31:0] k1,k2,k3;

assign k1 = {s4[15:0],s1[31:16]};
assign k2 = {s3[31:16],s2[15:0]};
assign k3 = {s2[31:16],s3[15:0]};

wire [32:0] cs;

csa_32 v32cs(k1,k2,k3,cs,cout);
wire [15:0] m;
wire c9;
rca_16 r1(s4[31:16],{14'b0,cout,cs[32]},m,0,c9);

assign y[15:0] = s1[15:0];
assign y[47:16] = cs[31:0];
assign y[63:48] = m[15:0];
endmodule
