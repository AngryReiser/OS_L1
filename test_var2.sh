#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 2.sh
	actual=`md5sum results.xml`
	expected="1920203ec62b675a81d7984fdbe199a1  results.xml"

  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2