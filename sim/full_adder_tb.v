`timescale 1ns/1ps

module full_adder_tb();

    reg a, b, cin;
    wire sum, cout;
    integer i, j, k, total_tests, pass_count, fail_count;
    reg [1:0] expected;
    parameter LOOP_LIMIT = 2;

    full_adder dut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        total_tests = 0;
        pass_count = 0;
        fail_count = 0;

        $display("Time | A B CIN | COUT SUM | EXPECTED | RESULT");

        for(i = 0; i < LOOP_LIMIT; i = i + 1) begin
            for(j = 0; j < LOOP_LIMIT; j = j + 1) begin
                for(k = 0; k < LOOP_LIMIT; k = k + 1) begin
                    a = i; b = j; cin = k;
                    #2;
                    expected = a + b + cin;
                    #1; total_tests = total_tests + 1;

                    if({cout, sum} === expected) begin
                        pass_count = pass_count + 1;
                        $display("%4t | %b %b %b | %b %b | %b | PASS", $time, a, b, cin, cout, sum, expected);
                    end
                    else begin
                        fail_count = fail_count + 1;
                        $display("%4t | %b %b %b | %b %b | %b | FAIL", $time, a, b, cin, cout, sum, expected);
                    end
                    #5;
                end
            end
        end

        $display("----------------------------------------------------------");
        $display("Total tests: %0d | Passed: %0d | Failed: %0d", total_tests, pass_count, fail_count);
        $display("----------------------------------------------------------");

        if (fail_count == 0)
            $display("ALL TESTS PASSED SUCCESSFULLY!");
        else
            $display("SOME TESTS FAILED. PLEASE CHECK LOG ABOVE.");

        $finish;   
    end

endmodule
