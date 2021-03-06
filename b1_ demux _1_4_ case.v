module b1_demux_1_4_case
(
	input din ,
	input [1:0] sel ,
	output reg dout 0,
	output reg dout 1,
	output reg dout 2,
	output reg dout 3
);
	always @ (*)
		case (sel)
			2’b00:
			begin
				dout 0 = din;
				dout 1 = 0;
				dout 2 = 0;
				dout 3 = 0;
			end
			2’b01:
			begin
				dout 0 = 0;
				dout 1 = din;
				dout 2 = 0;
				dout 3 = 0;
			end
			2’b10:
			begin
				dout 0 = 0;
				dout 1 = 0;
				dout 2 = din ;
				dout 3 = 0;
			end
			2’b11:
			begin
				dout 0 = 0;
				dout 1 = 0;
				dout 2 = 0;
				dout 3 = din ;
			end
		endcase
endmodule