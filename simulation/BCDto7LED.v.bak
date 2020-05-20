module BCDto7LED(LED4, LED3, LED2, LED1, data, en);
	output reg [6:0] LED4, LED3, LED2, LED1;
	input [15:0] data;
	input en;
	
	
	reg [4:0] i;
	
	always @(*) begin
		if (!en)    LED4 <= 7'b1111111; // No display 
		else case (data[15:12])
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
		if (!en)    LED3 <= 7'b1111111; // No display 
		else case (data[11: 8])
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
		if (!en)    LED2 <= 7'b1111111; // No display 
		else case (data[ 7: 4])
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
		if (!en)    LED1 <= 7'b1111111; // No display 
		else case (data[ 3: 0])
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
endmodule
