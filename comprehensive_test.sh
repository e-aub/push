#!/bin/bash
# Comprehensive test suite for the shell - ALL FEATURES

echo "=========================================="
echo "COMPREHENSIVE SHELL FEATURE TEST SUITE"
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
echo "mkdir -p /tmp/shell_test"
echo "cd /tmp/shell_test"
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
echo "export PATH=/usr/bin:\$PATH"
echo "echo \$PATH"
echo ""

# Test 4: Command Sequences
echo "=== TEST 4: Command Sequences (;) ==="
echo "echo first; echo second; echo third"
echo ""

# Test 5: Logical Operators
echo "=== TEST 5: Logical Operators ==="
echo "true && echo 'AND success'"
echo "false && echo 'AND failure'"
echo "true || echo 'OR success'"
echo "false || echo 'OR failure'"
echo "! true && echo 'NOT true'"
echo "! false && echo 'NOT false'"
echo ""

# Test 6: Pipelines
echo "=== TEST 6: Pipelines (|) ==="
echo "echo 'hello world' | cat"
echo "echo 'line1\nline2\nline3' | head -2"
echo "ls -la | head -5"
echo ""

# Test 7: I/O Redirection
echo "=== TEST 7: I/O Redirection ==="
echo "echo 'redirected output' > /tmp/shell_test/redirect.txt"
echo "cat /tmp/shell_test/redirect.txt"
echo "echo 'appended output' >> /tmp/shell_test/redirect.txt"
echo "cat /tmp/shell_test/redirect.txt"
echo "echo 'test' > /tmp/shell_test/input.txt"
echo "cat < /tmp/shell_test/input.txt"
echo ""

# Test 8: Background Jobs
echo "=== TEST 8: Background Jobs (&) ==="
echo "sleep 0.1 &"
echo "jobs"
echo ""

# Test 9: Command Grouping
echo "=== TEST 9: Command Grouping { } ==="
echo "{ echo 'group1'; echo 'group2'; }"
echo "{ cd /tmp; pwd; }"
echo "pwd"
echo ""

# Test 10: Subshells
echo "=== TEST 10: Subshells ( ) ==="
echo "(echo 'subshell1'; echo 'subshell2')"
echo "(cd /tmp; pwd)"
echo "pwd"
echo ""

# Test 11: If Statements
echo "=== TEST 11: If Statements ==="
echo "if true; then echo 'if true works'; fi"
echo "if false; then echo 'if false works'; else echo 'else works'; fi"
echo "if false; then echo 'then'; elif true; then echo 'elif works'; else echo 'else'; fi"
echo ""

# Test 12: While Loops
echo "=== TEST 12: While Loops ==="
echo "i=0; while [ \$i -lt 3 ]; do echo \"while \$i\"; i=\$((i+1)); done"
echo ""

# Test 13: Until Loops
echo "=== TEST 13: Until Loops ==="
echo "i=0; until [ \$i -ge 3 ]; do echo \"until \$i\"; i=\$((i+1)); done"
echo ""

# Test 14: For Loops
echo "=== TEST 14: For Loops ==="
echo "for i in 1 2 3; do echo \"for \$i\"; done"
echo "for file in /tmp/shell_test/*; do echo \"file: \$file\"; done"
echo ""

# Test 15: Break and Continue
echo "=== TEST 15: Break and Continue ==="
echo "for i in 1 2 3 4 5; do if [ \$i -eq 3 ]; then break; fi; echo \"break test \$i\"; done"
echo "for i in 1 2 3 4 5; do if [ \$i -eq 3 ]; then continue; fi; echo \"continue test \$i\"; done"
echo ""

# Test 16: Functions
echo "=== TEST 16: Functions ==="
echo "myfunc() { echo 'function called'; echo 'arg1:' \$1; }"
echo "myfunc hello"
echo ""

# Test 17: Test Command
echo "=== TEST 17: Test Command ==="
echo "test -f /tmp/shell_test/test_file.txt && echo 'file exists'"
echo "test -d /tmp/shell_test && echo 'directory exists'"
echo "[ -f /tmp/shell_test/test_file.txt ] && echo 'bracket test works'"
echo ""

# Test 18: Type Command
echo "=== TEST 18: Type Command ==="
echo "type echo"
echo "type cd"
echo "type ls"
echo ""

# Test 19: Jobs Control
echo "=== TEST 19: Jobs Control ==="
echo "sleep 0.2 &"
echo "jobs"
echo ""

# Test 20: Complex Combinations
echo "=== TEST 20: Complex Combinations ==="
echo "echo 'start' && (echo 'subshell' && echo 'nested') && echo 'end'"
echo "if true; then echo 'then'; echo 'multiple'; fi | cat"
echo "for i in a b c; do echo \"\$i\"; done | head -2"
echo ""

# Test 21: Variable Expansion
echo "=== TEST 21: Variable Expansion ==="
echo "VAR=test"
echo "echo \$VAR"
echo "echo \${VAR}"
echo "echo \$VAR_expanded"
echo ""

# Test 22: Exit Command
echo "=== TEST 22: Exit Command ==="
echo "echo 'before exit'"
echo "exit 0"
echo "echo 'after exit (should not print)'"

