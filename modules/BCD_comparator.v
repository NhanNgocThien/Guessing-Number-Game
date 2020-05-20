module BCD_comparator (eq, gt, sm, state,submit, A, B);
	output reg eq, gt, sm;		// eq equal, gt greater, sm smaller
	input submit, state;
	input [15:0] A, B;

	
	initial begin gt = 1'b0; eq = 1'b0; sm = 1'b0; end
	
	
	always @(negedge submit, negedge state ) begin
	if ( !state ) begin gt <= 1'b0; eq <= 1'b0; sm <= 1'b0; end
	else begin
		if ( A[15:12] != B[15:12] ) begin 
			gt <=  A[15:12] >  B[15:12];
			sm <=  A[15:12] <  B[15:12];
			eq <=  1'b0;
		end
		else if ( A[11: 8] != B[11: 8] ) begin
			gt <=  A[11: 8] >  B[11: 8];
			sm <=  A[11: 8] <  B[11: 8];
			eq <=  1'b0;
		end
		else if ( A[ 7: 4] != B[ 7: 4] ) begin
			gt <=  A[ 7: 4] >  B[ 7: 4];
			sm <=  A[ 7: 4] <  B[ 7: 4];
			eq <=  1'b0;
		end
		else if ( A[ 3: 0] != B[ 3: 0] ) begin
			gt <=  A[ 3: 0] >  B[ 3: 0];
			sm <=  A[ 3: 0] <  B[ 3: 0];
			eq <=  1'b0;
		end
		else begin eq <= 1'b1; sm <= 1'b0; gt <= 1'b0; end
	end
	end
endmodule
