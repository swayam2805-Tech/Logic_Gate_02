module OR_gate (
    output Y, // Output of the OR gate
    input A,  // First input
    input B   // Second input
);

// Instantiate the predefined 'or' gate primitive
// The first terminal is the output, followed by the inputs.
or (Y, A, B);

endmodule // End of module
