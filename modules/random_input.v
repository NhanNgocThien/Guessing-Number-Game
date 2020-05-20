module random_input(out, state, clk);
	output reg [15:0] out;
	input state;
	input clk;
	
	
	initial out = 16'b0;
	
	
	always@ (posedge clk) begin
		if (state != 0) begin
			out = 16'b0;
		end
		else
			if (out[ 3: 0] >= 4'b1001) begin out[ 3: 0] <= 1'b0;
				if (out[ 7: 4] >= 4'b1001) begin out[ 7: 4] <= 1'b0;
					if (out[11: 8] >= 4'b1001) begin out[11: 8] <= 1'b0;
						if (out[15: 12] >= 4'b1001) begin out[15: 12] <= 1'b0;
						end
						else out[15: 12] <= out[15: 12] + 1;
					end
					else out[11: 8] <= out[11: 8] + 1;
				end
				else out[ 7: 4] <= out[ 7: 4] + 1;
			end
			else out[ 3: 0] <= out[ 3: 0] + 1;
		end
endmodule


