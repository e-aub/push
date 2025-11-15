#!/bin/bash
# Extensive test suite for all implemented shell features

echo "=========================================="
echo "EXTENSIVE SHELL FEATURE TEST SUITE"
echo "=========================================="
echo ""

# Test 1: Basic Built-in Commands
echo "=== TEST 1: Basic Built-in Commands ==="
echo "echo hello world"
echo "pwd"
echo "true"
echo "false"
echo ""

# Test 2: File Operations
echo "=== TEST 2: File Operations ==="
echo "mkdir -p /tmp/shell_extensive_test"
echo "cd /tmp/shell_extensive_test"
echo "echo 'test content' > test_file.txt"
echo "cat test_file.txt"
echo "cp test_file.txt test_file2.txt"
echo "ls -la"
echo "mv test_file2.txt renamed_file.txt"
echo "rm renamed_file.txt"
echo "cd -"
echo ""

# Test 3: Environment Variables
echo "=== TEST 3: Environment Variables ==="
echo "export TEST_VAR=hello"
echo "echo \$TEST_VAR"
echo "export VAR1=val1"
echo "export VAR2=val2"
echo "echo \$VAR1 \$VAR2"
echo ""

# Test 4: Command Sequences
echo "=== TEST 4: Command Sequences (;) ==="
echo "echo first; echo second; echo third; echo fourth; echo fifth"
echo ""

# Test 5: Logical Operators
echo "=== TEST 5: Logical Operators ==="
echo "true && echo AND_success"
echo "false && echo AND_failure"
echo "true || echo OR_success"
echo "false || echo OR_failure"
echo "! true && echo NOT_true"
echo "! false && echo NOT_false"
echo "echo cmd1 && echo cmd2 && echo cmd3"
echo "echo fail1 || echo fail2 || echo fail3"
echo ""

# Test 6: Pipelines
echo "=== TEST 6: Pipelines (|) ==="
echo "echo 'hello world' | cat"
echo "echo 'line1\nline2\nline3' | head -2"
echo "ls -la | head -5"
echo "echo test | cat | cat"
echo "echo multi | head -1 | wc -c"
echo ""

# Test 7: I/O Redirection
echo "=== TEST 7: I/O Redirection ==="
echo "echo 'redirected output' > /tmp/shell_extensive_test/redirect.txt"
echo "cat /tmp/shell_extensive_test/redirect.txt"
echo "echo 'appended output' >> /tmp/shell_extensive_test/redirect.txt"
echo "cat /tmp/shell_extensive_test/redirect.txt"
echo "echo 'test input' > /tmp/shell_extensive_test/input.txt"
echo "cat < /tmp/shell_extensive_test/input.txt"
echo ""

# Test 8: Command Grouping
echo "=== TEST 8: Command Grouping { } ==="
echo "{ echo 'group1'; echo 'group2'; }"
echo "{ cd /tmp; pwd; }"
echo "pwd"
echo "echo start && { echo group1; echo group2; } && echo end"
echo ""

# Test 9: If Statements
echo "=== TEST 9: If Statements ==="
echo "if true; then echo if_works; fi"
echo "if false; then echo then; else echo else_works; fi"
echo "if false; then echo then; elif true; then echo elif_works; else echo else; fi"
echo "if false; then echo if1; elif false; then echo elif1; else echo else1; fi"
echo "if true; then echo if1; echo if2; fi"
echo ""

# Test 10: For Loops
echo "=== TEST 10: For Loops ==="
echo "for i in 1 2 3; do echo for_\$i; done"
echo "for i in a b c d e; do echo letter_\$i; done"
echo "for file in /tmp/shell_extensive_test/*; do echo file: \$file; done"
echo ""

# Test 11: While Loops
echo "=== TEST 11: While Loops ==="
echo "i=0; while [ \$i -lt 3 ]; do echo while_\$i; i=\$((i+1)); done"
echo ""

# Test 12: Until Loops
echo "=== TEST 12: Until Loops ==="
echo "i=0; until [ \$i -ge 3 ]; do echo until_\$i; i=\$((i+1)); done"
echo ""

# Test 13: Break and Continue
echo "=== TEST 13: Break and Continue ==="
echo "for i in 1 2 3 4 5; do if [ \$i -eq 3 ]; then break; fi; echo break_test_\$i; done"
echo "for i in 1 2 3 4 5; do if [ \$i -eq 2 ]; then continue; fi; echo continue_test_\$i; done"
echo ""

# Test 14: Functions
echo "=== TEST 14: Functions ==="
echo "myfunc() { echo function_works; }"
echo "myfunc"
echo "greet() { echo hello \$1; }"
echo "greet world"
echo "greet shell"
echo "multi() { echo arg1: \$1 arg2: \$2 arg3: \$3; }"
echo "multi one two three"
echo "func1() { echo func1_body; func2; }"
echo "func2() { echo func2_body; }"
echo "func1"
echo ""

# Test 15: Test Command
echo "=== TEST 15: Test Command ==="
echo "test -f /tmp/shell_extensive_test/test_file.txt && echo file_exists"
echo "test -d /tmp/shell_extensive_test && echo directory_exists"
echo "[ -f /tmp/shell_extensive_test/test_file.txt ] && echo bracket_test_works"
echo "[ -d /tmp/shell_extensive_test ] && echo bracket_dir_works"
echo ""

# Test 16: Type Command
echo "=== TEST 16: Type Command ==="
echo "type echo"
echo "type cd"
echo "type ls"
echo "type true"
echo "type false"
echo ""

# Test 17: Complex Combinations
echo "=== TEST 17: Complex Combinations ==="
echo "echo start && (echo nested1 && echo nested2) && echo end"
echo "if true; then echo then1; echo then2; fi | cat"
echo "for i in a b c; do echo \$i; done | head -2"
echo "echo test1; echo test2 && echo test3; echo test4"
echo ""

# Test 18: Variable Expansion
echo "=== TEST 18: Variable Expansion ==="
echo "VAR=test_value"
echo "echo \$VAR"
echo "echo \${VAR}"
echo "export EXPORTED_VAR=exported"
echo "echo \$EXPORTED_VAR"
echo ""

# Test 19: Nested Control Structures
echo "=== TEST 19: Nested Control Structures ==="
echo "for i in 1 2; do for j in a b; do echo nested_\$i_\$j; done; done"
echo "if true; then for i in 1 2; do echo if_for_\$i; done; fi"
echo ""

# Test 20: Function with Control Structures
echo "=== TEST 20: Functions with Control Structures ==="
echo "check() { if [ -f \$1 ]; then echo file_exists; else echo file_not_found; fi; }"
echo "check /tmp/shell_extensive_test/test_file.txt"
echo "print_args() { for i in \$1 \$2 \$3; do echo arg: \$i; done; }"
echo "print_args one two three"
echo ""

# Test 21: Positional Parameters in Functions
echo "=== TEST 21: Function Positional Parameters ==="
echo "echo before: \$1 \$2"
echo "preserve_test() { echo inside: \$1 \$2; }"
echo "preserve_test inner1 inner2"
echo "echo after: \$1 \$2"
echo ""

# Test 22: $0 Preservation
echo "=== TEST 22: \$0 Preservation ==="
echo "echo \$0"
echo "check_zero() { echo inside_func: \$0; }"
echo "check_zero"
echo "echo \$0"
echo ""

# Test 23: Multiple Function Calls
echo "=== TEST 23: Multiple Function Calls ==="
echo "func_a() { echo A; }"
echo "func_b() { echo B; }"
echo "func_c() { echo C; }"
echo "func_a"
echo "func_b"
echo "func_c"
echo ""

# Test 24: Function Redefinition
echo "=== TEST 24: Function Redefinition ==="
echo "myfunc() { echo first; }"
echo "myfunc"
echo "myfunc() { echo second; }"
echo "myfunc"
echo ""

# Test 25: Empty Arguments in Functions
echo "=== TEST 25: Empty Arguments in Functions ==="
echo "empty() { echo arg1: [\$1] arg2: [\$2]; }"
echo "empty"
echo "empty one"
echo "empty one two"
echo ""

# Test 26: Functions Calling Functions
echo "=== TEST 26: Functions Calling Functions ==="
echo "caller() { echo calling; callee \$1; }"
echo "callee() { echo received: \$1; }"
echo "caller hello"
echo ""

# Test 27: Functions with Multiple Statements
echo "=== TEST 27: Functions with Multiple Statements ==="
echo "complex() { echo step1; echo step2: \$1; echo step3; }"
echo "complex test_arg"
echo ""

# Test 28: Functions with Pipelines
echo "=== TEST 28: Functions with Pipelines ==="
echo "pipe_func() { echo \$1 \$2 | cat; }"
echo "pipe_func hello world"
echo ""

# Test 29: Functions with Redirection
echo "=== TEST 29: Functions with Redirection ==="
echo "write_func() { echo \$1 > /tmp/shell_extensive_test/func_output.txt; }"
echo "write_func test_content"
echo "cat /tmp/shell_extensive_test/func_output.txt"
echo ""

# Test 30: Functions with Variable Assignment
echo "=== TEST 30: Functions with Variable Assignment ==="
echo "set_var() { export FUNC_VAR=\$1; }"
echo "set_var test_value"
echo "echo \$FUNC_VAR"
echo ""

# Test 31: Long Sequences
echo "=== TEST 31: Long Command Sequences ==="
echo "echo cmd1; echo cmd2; echo cmd3; echo cmd4; echo cmd5; echo cmd6; echo cmd7; echo cmd8"
echo ""

# Test 32: Multiple Logical Chains
echo "=== TEST 32: Multiple Logical Chains ==="
echo "echo multi1 && echo multi2 && echo multi3 && echo multi4"
echo "echo fail1 || echo fail2 || echo fail3 || echo fail4"
echo ""

# Test 33: Complex If-Elif-Else
echo "=== TEST 33: Complex If-Elif-Else ==="
echo "if true; then echo if1; elif false; then echo elif1; else echo else1; fi"
echo "if false; then echo if2; elif true; then echo elif2; else echo else2; fi"
echo "if false; then echo if3; elif false; then echo elif3; else echo else3; fi"
echo ""

# Test 34: Nested Loops
echo "=== TEST 34: Nested Loops ==="
echo "for outer in 1 2; do for inner in a b; do echo nested_\$outer_\$inner; done; done"
echo ""

# Test 35: Break/Continue with Levels
echo "=== TEST 35: Break/Continue with Levels ==="
echo "for i in 1 2 3 4 5; do if [ \$i -eq 3 ]; then break 1; fi; echo break_level1_\$i; done"
echo "for i in 1 2 3 4; do if [ \$i -eq 2 ]; then continue 1; fi; echo continue_level1_\$i; done"
echo ""

# Test 36: Subshell Variable Isolation
echo "=== TEST 36: Subshell Variable Isolation ==="
echo "VAR=before; (VAR=inside; echo \$VAR); echo \$VAR"
echo ""

# Test 37: Multiple Redirections
echo "=== TEST 37: Multiple Redirections ==="
echo "echo test1 > /tmp/shell_extensive_test/out1.txt && echo test2 > /tmp/shell_extensive_test/out2.txt && cat /tmp/shell_extensive_test/out1.txt /tmp/shell_extensive_test/out2.txt"
echo ""

# Test 38: Complex Pipeline Combinations
echo "=== TEST 38: Complex Pipeline Combinations ==="
echo "ls /tmp | head -5 | wc -l"
echo "echo line1 | cat && echo line2 | cat && echo line3"
echo ""

# Test 39: Functions in Sequences
echo "=== TEST 39: Functions in Sequences ==="
echo "setup() { echo setup_done; }"
echo "setup"
echo "echo after_setup"
echo ""

# Test 40: Cleanup
echo "=== TEST 40: Cleanup ==="
echo "rm -rf /tmp/shell_extensive_test"
echo "echo All tests completed!"

