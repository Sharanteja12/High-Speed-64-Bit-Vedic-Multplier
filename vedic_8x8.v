module vedic_8x8(a,b,y);
input [7:0] a,b;
output [15:0] y;

wire [7:0] s1,s2,s3,s4,s5,s6,s7,s8,s9;
  
vedic_4x4 v41(a[3:0],b[3:0],s1);
vedic_4x4 v42(a[7:4],b[7:4],s4);
vedic_4x4 v43(a[3:0],b[7:4],s2);
vedic_4x4 v44(a[7:4],b[3:0],s3);
  
wire[7:0] k1,k2,k3;

assign k1 = {s4[3:0],s1[7:4]};
assign k2 = {s3[7:4],s2[3:0]};
assign k3 = {s2[7:4],s3[3:0]};
wire [8:0] cs;

  csa_8 ff1(k1,k2,k3,cs,cout); // 8 Bit Carry Save Adder 
wire [3:0] m;
wire c9;

rca ff2(s4[7:4],{2'b00,cout,cs[8]},m,0,c9);

assign y[3:0] = s1[3:0];
assign y[11:4] = cs[7:0];
assign y[15:12] = m[3:0];

endmodule
