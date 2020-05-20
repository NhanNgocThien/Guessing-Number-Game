module trial_counter (count, over, state, submit, trials);
	output reg [3:0] count;
	output reg over;
	input state;
	input submit;
	input [3:0] trials;
	
	initial begin over = 1'b0; count = 1'b0; end
	always @(negedge submit) begin
		if (state != 1) begin
			over <= 1'b0;
			count <= 1'b0;
		end
		else begin
			if (count == trials -1) begin
				over <= 1'b1;
				count <= trials;
			end
				else count <= count + 1;
		end
	end
endmodule 