#!/bin/bash
# Test commands for the shell
echo "=== Test 1: Basic echo commands ==="
echo hello world
echo test1
echo test2

echo ""
echo "=== Test 2: Multiple commands ==="
pwd
echo hello
echo world

echo ""
echo "=== Test 3: Logical operators ==="
echo first && echo second
echo third || echo fourth
true && echo success
false || echo failure

echo ""
echo "=== Test 4: Pipeline ==="
ls -la | head -3
echo pipeline test

echo ""
echo "=== Test 5: Directory change ==="
cd /tmp
echo changed dir
echo done

echo ""
echo "=== Test 6: Environment variables ==="
export TEST_VAR=hello
echo $TEST_VAR
echo test complete

echo ""
echo "=== Test 7: Sequence of commands ==="
echo one
echo two
echo three
echo four
echo five

echo ""
echo "=== Test 8: Exit ==="
echo exiting
exit

