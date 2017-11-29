#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 6.sh
	actual=`md5sum results.txt`
	expected="a4b1a52e0e68f801eb88e2fa75a647e2  results.txt"
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
