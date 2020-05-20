module manual_input (SW, select, state, set_trials, manual_data, trials,out);
	output reg [3:0] trials; // trials is transfered to the submit_N
	output reg [15:0] out; // out to show on LED
	output reg [15:0] manual_data; // manual_data is transfered to the submit_N
	reg [3:0] dig1, dig2;	// dig1, dig2 used to display the set_trials from binary to BCD
	input [1:0] select;
	input [3:0] SW;
	input set_trials;
	input state;
	
	always@(*) begin
		if ( state == 1 )
			case ( select ) 
				2'b00: begin out[3:0]   <= SW[3:0]; manual_data[3:0] <= (SW > 9) ? 9:SW[3:0];  end
				2'b01: begin out[7:4]   <= SW[3:0]; manual_data[7:4] <= (SW > 9) ? 9:SW[3:0];  end
				2'b11: begin out[11:8]  <= SW[3:0]; manual_data[11:8] <= (SW > 9) ? 9:SW[3:0]; end
				2'b10: begin out[15:12] <= SW[3:0]; manual_data[15:12] <= (SW > 9) ? 9: SW[3:0];end
			endcase
				else begin
					if ( set_trials == 0 ) 
							case ( select ) 
								2'b00: begin out[3:0]   <= SW[3:0]; manual_data[3:0] <= (SW > 9) ? 9:SW[3:0];  end
								2'b01: begin out[7:4]   <= SW[3:0]; manual_data[7:4] <= (SW > 9) ? 9:SW[3:0];  end
								2'b11: begin out[11:8]  <= SW[3:0]; manual_data[11:8] <= (SW > 9) ? 9:SW[3:0]; end
								2'b10: begin out[15:12] <= SW[3:0]; manual_data[15:12] <= (SW > 9) ? 9:SW[3:0];end
							endcase
						else begin
							trials <= SW[3:0];
							dig1 = SW / 10;
							dig2 = SW - ( 10 * dig1 );
							out[3:0] <= dig2;
							out[7:4] <= dig1;
							out[11:8] <= 4'd0;
							out[15:12] <= 4'd0;
							
						end
				end
		end
endmodule 