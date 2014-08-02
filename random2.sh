#!/bin/bash

for s in `seq 30`
do
a=`expr $RANDOM % 4 + 1`
echo $a >> a.txt
done

for i in `seq 10000`
do 

	for j in `seq 30`
	do

#	a=`expr $RANDOM % 4 + 1`
	b=`expr $RANDOM % 4 + 1`

#	echo $a >> a.txt
	echo $b >> b.txt

	done

c=(`diff a.txt b.txt | grep -c -e "^<"`)
e=(`diff a.txt b.txt | grep -c -e "^>"`)
d=`expr 30 - $c - $e`
echo $d >> diff_const.txt
#rm a.txt b.txt
rm b.txt
  j=`expr 100000 / 20`
  k=`expr 100000 / 100`
 
  if [ `expr $i % $k` -eq 0 ]
    then
    echo -e "[\c"
 
    g=`expr $i / $j`
    p=`expr 20 - $g`
 
      for h in `seq $g`
      do
      echo -e "=\c"
      done
 
      for d in `seq $p`
      do
      echo -e " \c"
      done
 
    f=`expr $i / $k`
    echo -e "]$f%\r\c"
 
  fi
done
echo -e "[====================]$f%"
rm a.txt
