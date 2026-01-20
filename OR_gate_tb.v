module OR_gate_tb;

    // Testbench signals
    reg A, B;
    wire Y;

    // Instantiate the DUT (Device Under Test)
    OR_gate uut (
        .Y(Y),
        .A(A),
        .B(B)
    );

    initial begin
        // Display header
        $display("A B | Y");
        $display("---------");
        $monitor("%b %b | %b", A, B, Y);

        // Apply test vectors
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        // End simulation
        $finish;
    end

endmodule
