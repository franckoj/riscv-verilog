

module ram(rData,wAddr,wEn,wData,rAddr,clk);
input [1:0]wAddr;
input [2:0]wData;
input wEn;
input [1:0]rAddr;
input clk;
output reg [2:0]rData;

reg[2:0]mem[1:0];

always@(posedge clk)
begin
if(wEn)
     mem[wAddr] <= wData;
     end
always@(posedge clk)
    rData <= mem[rAddr] ;
endmodule