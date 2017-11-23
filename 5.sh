#!/bin/bash
FS=`cat dns-tunneling.log | awk ' {print $4} ' | sort -nk 1 |  awk -F'.' '{print $1}' | head -n 1`;
SS=$(($FS+1));
TS=$(($SS+1));
echo `cat dns-tunneling.log | awk ' {print $4} ' |  awk -F'.' '{print $1}' | grep -c $FS`>>results.txt;
echo `cat dns-tunneling.log | awk ' {print $4} ' |  awk -F'.' '{print $1}' | grep -c $SS`>>results.txt;
echo `cat dns-tunneling.log | awk ' {print $4} ' |  awk -F'.' '{print $1}' | grep -c $TS`>>results.txt;
