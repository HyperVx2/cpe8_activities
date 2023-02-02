module q1 (input w, x, y, z,
	output w_not, y_not, x_not, f);
	
	wire w0, w1, w2, w3, w4;

	not (w_not, w), (y_not, y), (x_not, x); // create inverted inputs
	and (w0, x, y_not, z), (w1, x_not, y_not, z),
		(w2, w_not, x, y), (w3, w, x_not, y), (w4, w, x, y); // all AND operator in all terms

	or (f, w0, w1, w2, w3, w4); 
endmodule
