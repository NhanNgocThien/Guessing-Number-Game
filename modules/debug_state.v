module debug_state(input state, output out2, out1);
	assign out2 =  state ? 1'b1: 1'b0;
	assign out1 = !state ? 1'b1 : 1'b0;
endmodule 