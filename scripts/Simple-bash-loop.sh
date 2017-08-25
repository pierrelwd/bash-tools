#!/bin/bash

COUNTER="0"
LIMIT="100"

while [ $COUNTER -lt $LIMIT ];
do 
	echo "$COUNTER"
	COUNTER=$[$COUNTER+1]
done
