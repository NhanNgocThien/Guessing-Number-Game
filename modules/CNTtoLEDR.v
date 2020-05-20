module CNTtoLEDR (out, cnt, over, state );
	output reg [15:1] out;
	input [3:0] cnt;
	input over, state;
	
	reg [4:0] i;
	
	always@(*)begin
	if ( state == 1 ) begin
		if ( over ) out <= 15'b0;
			else for (i = 1 ; i < 16 ; i = i + 1) out[i] = cnt >= i;	
		end else out <= 15'b0;
	end
endmodule

