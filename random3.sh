#!/bin/bash

for s in `seq 10000`
do
c=`expr $RANDOM % 4 + 1`
echo $c >> c.txt
done

for i in `seq 10000`
do 


	a=`expr $RANDOM % 4 + 1`
	b=`expr $RANDOM % 4 + 1`

	echo $a >> a.txt
	echo $b >> b.txt

done

