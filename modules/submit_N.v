module submit_N (N, count_trials, state, submit, select, R, M, trials);
	output reg [15:0] N;
	output reg [3:0] count_trials;
	input state;
	input submit;
	input select;
	input [15:0] R, M;
	input [3:0] trials;
	
	
	always @(negedge submit) if (state == 0) begin N <= (select ? M : R); count_trials <= trials; end
endmodule 