
module RegFileUW(clk,reset,WE,DataIN,DataOUT,R_ROW,R_COL);
    input clk,reset,WE;
    input [63:0] DataIN;
    output [(16*16*8)-1:0] DataOUT;
    //reg [0:(22*22*8)-1] UWreg;
	reg [6:0] write_count;
    input [2:0] R_ROW, R_COL;
	wire [15:0] inputpart1,inputpart2,inputpart3,inputpart4;
    reg [2:0] row;
reg [0:175] preOut1,preOut2,preOut3,preOut4,preOut5,preOut6,preOut7,preOut8,preOut9,preOut10,preOut11,preOut12,preOut13,preOut14,preOut15,preOut16;
reg [0:((8*22)-1)] search_array1;
reg [0:((8*22)-1)] search_array2;
reg [0:((8*22)-1)] search_array3;
reg [0:((8*22)-1)] search_array4;
reg [0:((8*22)-1)] search_array5;
reg [0:((8*22)-1)] search_array6;
reg [0:((8*22)-1)] search_array7;
reg [0:((8*22)-1)] search_array8;
reg [0:((8*22)-1)] search_array9;
reg [0:((8*22)-1)] search_array10;
reg [0:((8*22)-1)] search_array11;
reg [0:((8*22)-1)] search_array12;
reg [0:((8*22)-1)] search_array13;
reg [0:((8*22)-1)] search_array14;
reg [0:((8*22)-1)] search_array15;
reg [0:((8*22)-1)] search_array16;
reg [0:((8*22)-1)] search_array17;
reg [0:((8*22)-1)] search_array18;
reg [0:((8*22)-1)] search_array19;
reg [0:((8*22)-1)] search_array20;
reg [0:((8*22)-1)] search_array21;
reg [0:((8*22)-1)] search_array22;


wire [5:0] rowbyte;

assign rowbyte = row * 8;

    always @(posedge clk, posedge reset)
	begin
	    if (reset)
		begin
			//UWreg <= 3872'b0;
		   search_array1 <= 0;
		   search_array2 <= 0;
		   search_array3 <= 0;
		   search_array4 <= 0;
		   search_array5 <= 0;
		   search_array6 <= 0;
		   search_array7 <= 0;
		   search_array8 <= 0;
		   search_array9 <= 0;
		   search_array10 <= 0;
		   search_array11 <= 0;
		   search_array12 <= 0;
		   search_array13 <= 0;
		   search_array14 <= 0;
	       search_array15 <= 0;
		   search_array16 <= 0;
		   search_array17 <= 0;
		   search_array18 <= 0;
		   search_array19 <= 0;
		   search_array20 <= 0;
		   search_array21 <= 0;
		   search_array22 <= 0;
			write_count <= 0;
		end
	   else if (WE)
		begin
			case (write_count)
			0: search_array1[0:63] <= DataIN;
			1: search_array1[64:127] <= DataIN;
			2: search_array1[128:175] <= DataIN;
			3: search_array2[0:63] <= DataIN;
			4: search_array2[64:127] <= DataIN;
			5: search_array2[128:175] <= DataIN;
			6: search_array3[0:63] <= DataIN;
			7: search_array3[64:127] <= DataIN;
			8: search_array3[128:175] <= DataIN;
			9: search_array4[0:63] <= DataIN;
			10: search_array4[64:127] <= DataIN;
			11: search_array4[128:175] <= DataIN;
			12: search_array5[0:63] <= DataIN;
			13: search_array5[64:127] <= DataIN;
			14: search_array5[128:175] <= DataIN;
			15: search_array6[0:63] <= DataIN;
			16: search_array6[64:127] <= DataIN;
			17: search_array6[128:175] <= DataIN;
			18: search_array7[0:63] <= DataIN;
			19: search_array7[64:127] <= DataIN;
			20: search_array7[128:175] <= DataIN;
			21: search_array8[0:63] <= DataIN;
			22: search_array8[64:127] <= DataIN;
			23: search_array8[128:175] <= DataIN;
			24: search_array9[0:63] <= DataIN;
			25: search_array9[64:127] <= DataIN;
			26: search_array9[128:175] <= DataIN;
			27: search_array10[0:63] <= DataIN;
			28: search_array10[64:127] <= DataIN;
			29: search_array10[128:175] <= DataIN;
			30: search_array11[0:63] <= DataIN;
			31: search_array11[64:127] <= DataIN;
			32: search_array11[128:175] <= DataIN;
			33: search_array12[0:63] <= DataIN;
			34: search_array12[64:127] <= DataIN;
			35: search_array12[128:175] <= DataIN;
			36: search_array13[0:63] <= DataIN;
			37: search_array13[64:127] <= DataIN;
			38: search_array13[128:175] <= DataIN;
			39: search_array14[0:63] <= DataIN;
			40: search_array14[64:127] <= DataIN;
			41: search_array14[128:175] <= DataIN;
			42: search_array15[0:63] <= DataIN;
			43: search_array15[64:127] <= DataIN;
			44: search_array15[128:175] <= DataIN;
			45: search_array16[0:63] <= DataIN;
			46: search_array16[64:127] <= DataIN;
			47: search_array16[128:175] <= DataIN;
			48: search_array17[0:63] <= DataIN;
			49: search_array17[64:127] <= DataIN;
			50: search_array17[128:175] <= DataIN;
			51: search_array18[0:63] <= DataIN;
			52: search_array18[64:127] <= DataIN;
			53: search_array18[128:175] <= DataIN;
			54: search_array19[0:63] <= DataIN;
			55: search_array19[64:127] <= DataIN;
			56: search_array19[128:175] <= DataIN;
			57: search_array20[0:63] <= DataIN;
			58: search_array20[64:127] <= DataIN;
			59: search_array20[128:175] <= DataIN;
			60: search_array21[0:63] <= DataIN;
			61: search_array21[64:127] <= DataIN;
			62: search_array21[128:175] <= DataIN;
			63: search_array22[0:63] <= DataIN;
			64: search_array22[64:127] <= DataIN;
			65: search_array22[128:175] <= DataIN;
			
		//default: search_array <= search_array;
		endcase
			write_count <= write_count + 1;
			//UWreg[(write_count*8*8) +: 64] <= DataIN;
		end
		else
			write_count <= 0;
	end
    
    always @(*)
     begin
	     case(R_ROW)
	     0: row = 3;
	     1: row = 4;
	     2: row = 5;
	     3: row = 6;
	     4: row = 2;
	     5: row = 1;
	     6: row = 0;
	     default: row = 3;
	     endcase
     end
     
     /*always @(*)
     begin
	     case(R_COL)
	     0: col = 3;
	     1: col = 4;
	     2: col = 5;
	     3: col = 6;
	     4: col = 2;
	     5: col = 1;
	     6: col = 0;
	     default: col = 3;
	     endcase
     end
     */
always @(*)
begin
	case(R_COL)
	6:
	begin
		preOut1 = search_array1;
		preOut2 = search_array2;
		preOut3 = search_array3;
		preOut4 = search_array4;
		preOut5 = search_array5;
		preOut6 = search_array6;
		preOut7 = search_array7;
		preOut8 = search_array8;
		preOut9 = search_array9;
		preOut10 = search_array10;
		preOut11 = search_array11;
		preOut12 = search_array12;
		preOut13 = search_array13;
		preOut14 = search_array14;
		preOut15 = search_array15;
		preOut16 = search_array16;
	end
	5:
	begin
		preOut1 = search_array2;
		preOut2 = search_array3;
		preOut3 = search_array4;
		preOut4 = search_array5;
		preOut5 = search_array6;
		preOut6 = search_array7;
		preOut7 = search_array8;
		preOut8 = search_array9;
		preOut9 = search_array10;
		preOut10 = search_array11;
		preOut11 = search_array12;
		preOut12 = search_array13;
		preOut13 = search_array14;
		preOut14 = search_array15;
		preOut15 = search_array16;
		preOut16 = search_array17;
	end
	4:
	begin
		preOut1 = search_array3;
		preOut2 = search_array4;
		preOut3 = search_array5;
		preOut4 = search_array6;
		preOut5 = search_array7;
		preOut6 = search_array8;
		preOut7 = search_array9;
		preOut8 = search_array10;
		preOut9 = search_array11;
		preOut10 = search_array12;
		preOut11 = search_array13;
		preOut12 = search_array14;
		preOut13 = search_array15;
		preOut14 = search_array16;
		preOut15 = search_array17;
		preOut16 = search_array18;
	end
	0:
	begin
		preOut1 = search_array4;
		preOut2 = search_array5;
		preOut3 = search_array6;
		preOut4 = search_array7;
		preOut5 = search_array8;
		preOut6 = search_array9;
		preOut7 = search_array10;
		preOut8 = search_array11;
		preOut9 = search_array12;
		preOut10 = search_array13;
		preOut11 = search_array14;
		preOut12 = search_array15;
		preOut13 = search_array16;
		preOut14 = search_array17;
		preOut15 = search_array18;
		preOut16 = search_array19;
	end
	1:
	begin
		preOut1 = search_array5;
		preOut2 = search_array6;
		preOut3 = search_array7;
		preOut4 = search_array8;
		preOut5 = search_array9;
		preOut6 = search_array10;
		preOut7 = search_array11;
		preOut8 = search_array12;
		preOut9 = search_array13;
		preOut10 = search_array14;
		preOut11 = search_array15;
		preOut12 = search_array16;
		preOut13 = search_array17;
		preOut14 = search_array18;
		preOut15 = search_array19;
		preOut16 = search_array20;
	end
	2:
	begin
		preOut1 = search_array6;
		preOut2 = search_array7;
		preOut3 = search_array8;
		preOut4 = search_array9;
		preOut5 = search_array10;
		preOut6 = search_array11;
		preOut7 = search_array12;
		preOut8 = search_array13;
		preOut9 = search_array14;
		preOut10 = search_array15;
		preOut11 = search_array16;
		preOut12 = search_array17;
		preOut13 = search_array18;
		preOut14 = search_array19;
		preOut15 = search_array20;
		preOut16 = search_array21;
	end
	3:
	begin
		preOut1 = search_array7;
		preOut2 = search_array8;
		preOut3 = search_array9;
		preOut4 = search_array10;
		preOut5 = search_array11;
		preOut6 = search_array12;
		preOut7 = search_array13;
		preOut8 = search_array14;
		preOut9 = search_array15;
		preOut10 = search_array16;
		preOut11 = search_array17;
		preOut12 = search_array18;
		preOut13 = search_array19;
		preOut14 = search_array20;
		preOut15 = search_array21;
		preOut16 = search_array22;
	end
	default:
	begin
		preOut1 = search_array4;
		preOut2 = search_array5;
		preOut3 = search_array6;
		preOut4 = search_array7;
		preOut5 = search_array8;
		preOut6 = search_array9;
		preOut7 = search_array10;
		preOut8 = search_array11;
		preOut9 = search_array12;
		preOut10 = search_array13;
		preOut11 = search_array14;
		preOut12 = search_array15;
		preOut13 = search_array16;
		preOut14 = search_array17;
		preOut15 = search_array18;
		preOut16 = search_array19;
	end
	endcase
end
         
assign DataOUT[16*16*8-1 -: 128] = preOut1[rowbyte +: 128];
assign DataOUT[15*16*8-1 -: 128] = preOut2[rowbyte +: 128];
assign DataOUT[14*16*8-1 -: 128] = preOut3[rowbyte +: 128];
assign DataOUT[13*16*8-1 -: 128] = preOut4[rowbyte +: 128];
assign DataOUT[12*16*8-1 -: 128] = preOut5[rowbyte +: 128];
assign DataOUT[11*16*8-1 -: 128] = preOut6[rowbyte +: 128];
assign DataOUT[10*16*8-1 -: 128] = preOut7[rowbyte +: 128];
assign DataOUT[9*16*8-1 -: 128] = preOut8[rowbyte +: 128];
assign DataOUT[8*16*8-1 -: 128] = preOut9[rowbyte +: 128];
assign DataOUT[7*16*8-1 -: 128] = preOut10[rowbyte +: 128];
assign DataOUT[6*16*8-1 -: 128] = preOut11[rowbyte +: 128];
assign DataOUT[5*16*8-1 -: 128] = preOut12[rowbyte +: 128];
assign DataOUT[4*16*8-1 -: 128] = preOut13[rowbyte +: 128];
assign DataOUT[3*16*8-1 -: 128] = preOut14[rowbyte +: 128];
assign DataOUT[2*16*8-1 -: 128] = preOut15[rowbyte +: 128];
assign DataOUT[1*16*8-1 -: 128] = preOut16[rowbyte +: 128]; 
	/*assign DataOUT = {UWreg[col*22*8+row*8 +: 128], UWreg[(col+1)*22*8+row*8 +: 128],
	               UWreg[(col+2)*22*8+row*8 +: 128],UWreg[(col+3)*22*8+row*8 +: 128],
	               UWreg[(col+4)*22*8+row*8 +: 128],UWreg[(col+5)*22*8+row*8 +: 128],
	               UWreg[(col+6)*22*8+row*8 +: 128],UWreg[(col+7)*22*8+row*8 +: 128],
	               UWreg[(col+8)*22*8+row*8 +: 128],UWreg[(col+9)*22*8+row*8 +: 128],
	               UWreg[(col+10)*22*8+row*8 +: 128],UWreg[(col+11)*22*8+row*8 +: 128],
	               UWreg[(col+12)*22*8+row*8 +: 128],UWreg[(col+13)*22*8+row*8 +: 128],
	               UWreg[(col+14)*22*8+row*8 +: 128],UWreg[(col+15)*22*8+row*8 +: 128]} ;
       */
endmodule
