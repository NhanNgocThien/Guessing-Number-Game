module BCDto7LED_2(LED4, LED3, LED2, LED1, data, cnt, en, count_over, state, switch);
	output reg [6:0] LED4, LED3, LED2, LED1;
	input [15:0] data;
	input [3:0] cnt;
	input en, count_over, state, switch;
	
	reg [3:0] bcd1, bcd2;
	
	always@ ( * ) begin
		bcd1 = cnt / 10;
		bcd2 = cnt - ( bcd1 * 10 );
	end
	
	always @(*) begin
		if (!en && !count_over )    LED4 <= 7'b1111111; // No display 
		else begin
		if ( state == 1 ) begin
			if ( !count_over ) // en is active high
				case (data[15:12])
					4'b0000: LED4 <= 7'b0000001; // 0
					4'b0001: LED4 <= 7'b1001111; // 1
					4'b0010: LED4 <= 7'b0010010; // 2
					4'b0011: LED4 <= 7'b0000110; // 3
					4'b0100: LED4 <= 7'b1001100; // 4
					4'b0101: LED4 <= 7'b0100100; // 5
					4'b0110: LED4 <= 7'b0100000; // 6
					4'b0111: LED4 <= 7'b0001111; // 7
					4'b1000: LED4 <= 7'b0000000; // 8
					default: LED4 <= 7'b0000100; // 9
				endcase
					else  begin// Switch between the data and N when lose
						if ( !switch ) // Display the data
							case (data[15:12])
								4'b0000: LED4 <= 7'b0000001; // 0
								4'b0001: LED4 <= 7'b1001111; // 1
								4'b0010: LED4 <= 7'b0010010; // 2
								4'b0011: LED4 <= 7'b0000110; // 3
								4'b0100: LED4 <= 7'b1001100; // 4
								4'b0101: LED4 <= 7'b0100100; // 5
								4'b0110: LED4 <= 7'b0100000; // 6
								4'b0111: LED4 <= 7'b0001111; // 7
								4'b1000: LED4 <= 7'b0000000; // 8
								default: LED4 <= 7'b0000100; // 9
							endcase
								else LED4 <= 7'b1111111; // Display trials
					end
			end		else LED4 <= 7'b1111111; // State = 0 reset all
		end
		
		if (!en && !count_over )    LED3 <= 7'b1111111; // No display 
		else begin
		if ( state == 1 ) begin
			if ( !count_over )
				case (data[11:8])
					4'b0000: LED3 <= 7'b0000001; // 0
					4'b0001: LED3 <= 7'b1001111; // 1
					4'b0010: LED3 <= 7'b0010010; // 2
					4'b0011: LED3 <= 7'b0000110; // 3
					4'b0100: LED3 <= 7'b1001100; // 4
					4'b0101: LED3 <= 7'b0100100; // 5
					4'b0110: LED3 <= 7'b0100000; // 6
					4'b0111: LED3 <= 7'b0001111; // 7
					4'b1000: LED3 <= 7'b0000000; // 8
					default: LED3 <= 7'b0000100; // 9
				endcase
					else begin
						if ( !switch ) // Display the data
							case (data[11: 8])
								4'b0000: LED3 <= 7'b0000001; // 0
								4'b0001: LED3 <= 7'b1001111; // 1
								4'b0010: LED3 <= 7'b0010010; // 2
								4'b0011: LED3 <= 7'b0000110; // 3
								4'b0100: LED3 <= 7'b1001100; // 4
								4'b0101: LED3 <= 7'b0100100; // 5
								4'b0110: LED3 <= 7'b0100000; // 6
								4'b0111: LED3 <= 7'b0001111; // 7
								4'b1000: LED3 <= 7'b0000000; // 8
								default: LED3 <= 7'b0000100; // 9
							endcase
								else LED3 <= 7'b1111111; // Display the trials
					end
			end		else LED3 <= 7'b1111111; // State = 0 reset all 
		end
		
		if (!en && !count_over )    LED2 <= 7'b1111111; // No display 
		else begin
			if ( state == 1 ) begin
				if ( !count_over )
					case (data[7:4])
						4'b0000: LED2 <= 7'b0000001; // 0
						4'b0001: LED2 <= 7'b1001111; // 1
						4'b0010: LED2 <= 7'b0010010; // 2
						4'b0011: LED2 <= 7'b0000110; // 3
						4'b0100: LED2 <= 7'b1001100; // 4
						4'b0101: LED2 <= 7'b0100100; // 5
						4'b0110: LED2 <= 7'b0100000; // 6
						4'b0111: LED2 <= 7'b0001111; // 7
						4'b1000: LED2 <= 7'b0000000; // 8
						default: LED2 <= 7'b0000100; // 9
					endcase
						else begin
								if ( !switch ) 
									case (data[ 7: 4])
										4'b0000: LED2 <= 7'b0000001; // 0
										4'b0001: LED2 <= 7'b1001111; // 1
										4'b0010: LED2 <= 7'b0010010; // 2
										4'b0011: LED2 <= 7'b0000110; // 3
										4'b0100: LED2 <= 7'b1001100; // 4
										4'b0101: LED2 <= 7'b0100100; // 5
										4'b0110: LED2 <= 7'b0100000; // 6
										4'b0111: LED2 <= 7'b0001111; // 7
										4'b1000: LED2 <= 7'b0000000; // 8
										default: LED2 <= 7'b0000100; // 9
									endcase else 
												case (bcd1)
														4'b0000: LED2 <= 7'b0000001; // 0
														4'b0001: LED2 <= 7'b1001111; // 1
														4'b0010: LED2 <= 7'b0010010; // 2
														4'b0011: LED2 <= 7'b0000110; // 3
														4'b0100: LED2 <= 7'b1001100; // 4
														4'b0101: LED2 <= 7'b0100100; // 5
														4'b0110: LED2 <= 7'b0100000; // 6
														4'b0111: LED2 <= 7'b0001111; // 7
														4'b1000: LED2 <= 7'b0000000; // 8
														default: LED2 <= 7'b0000100; // 9
												endcase
								end
				end				
					else LED2 <= 7'b1111111; // State = 0 reset all
		end
		
		if (!en && !count_over)    LED1 <= 7'b1111111; // No display 
		else begin
		if ( state == 1 ) begin
			if ( !count_over )
				case (data[3:0])
					4'b0000: LED1 <= 7'b0000001; // 0
					4'b0001: LED1 <= 7'b1001111; // 1
					4'b0010: LED1 <= 7'b0010010; // 2
					4'b0011: LED1 <= 7'b0000110; // 3
					4'b0100: LED1 <= 7'b1001100; // 4
					4'b0101: LED1 <= 7'b0100100; // 5
					4'b0110: LED1 <= 7'b0100000; // 6
					4'b0111: LED1 <= 7'b0001111; // 7
					4'b1000: LED1 <= 7'b0000000; // 8
					default: LED1 <= 7'b0000100; // 9
				endcase
					else begin
						if ( !switch ) 
							case (data[ 3: 0])
								4'b0000: LED1 <= 7'b0000001; // 0
								4'b0001: LED1 <= 7'b1001111; // 1
								4'b0010: LED1 <= 7'b0010010; // 2
								4'b0011: LED1 <= 7'b0000110; // 3
								4'b0100: LED1 <= 7'b1001100; // 4
								4'b0101: LED1 <= 7'b0100100; // 5
								4'b0110: LED1 <= 7'b0100000; // 6
								4'b0111: LED1 <= 7'b0001111; // 7
								4'b1000: LED1 <= 7'b0000000; // 8
								default: LED1 <= 7'b0000100; // 9
							endcase else
									case ( bcd2 )
										4'b0000: LED1 <= 7'b0000001; // 0
										4'b0001: LED1 <= 7'b1001111; // 1
										4'b0010: LED1 <= 7'b0010010; // 2
										4'b0011: LED1 <= 7'b0000110; // 3
										4'b0100: LED1 <= 7'b1001100; // 4
										4'b0101: LED1 <= 7'b0100100; // 5
										4'b0110: LED1 <= 7'b0100000; // 6
										4'b0111: LED1 <= 7'b0001111; // 7
										4'b1000: LED1 <= 7'b0000000; // 8
										default: LED1 <= 7'b0000100; // 9
									endcase
					end
				end	else LED1 <= 7'b1111111; // State = 0 reset all
			end
	end
endmodule
