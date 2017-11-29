#!/bin/bash
cat dns-tunneling.log | awk '{print $15}' | awk -F "." {'if (NF>2) print $(NF-2)"."$(NF-1)"."'}| sort | uniq > results.txt
