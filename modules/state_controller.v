module state_controller (state, submit, over, master_reset);
	output reg state;
	input submit;
	input over;
	input master_reset; // Reset all
	
	initial state <= 0;
	
	
	always @(negedge submit, negedge master_reset ) begin 
		if ( !master_reset ) state<= 0; 
			else begin
				if (state == 0) begin						//State 1: Generate N
					state <= state + 1;
				end
					else if (state == 1) begin				//State 2: Guess N
						if (over) begin
						// Reset here
							state <= 0;
						end
					end
			end
	end
endmodule 