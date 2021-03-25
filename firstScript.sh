#!/bin/bash
vers2=$(python2 -V 2>&1)
vers3=$(python3 -V 2>&1)
echo "Current version of Python3 = $vers3"
echo "Current version of Python2 = $vers2"
if [ "$vers2" \> "$vers3" ]
then
echo "We recommend using $vers2"
else
echo "We recommend using $vers3"
fi
