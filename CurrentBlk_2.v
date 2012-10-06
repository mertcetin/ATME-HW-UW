module RegFileCur(clk,reset,WE,DataIN,DataOUT);
    input clk,reset,WE;
    input [63:0] DataIN;
    output [(16*16*8)-1:0] DataOUT;
    reg [0:(16*16*8)-1] CurrentBlock;
	reg [4:0] write_count;
    
    always @(posedge clk, posedge reset)
	begin
	    if (reset)
		begin
			CurrentBlock <= 2048'b0;
			write_count <= 0;
		end
	    else if (WE)
		begin
			write_count <= write_count + 1;
			CurrentBlock[(write_count*8*8) +: 64] <= DataIN;
		end
		else
			write_count <= 0;
	end
              
       
	assign DataOUT = CurrentBlock;
       
endmodule
