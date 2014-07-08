#!/bin/sh


for i in `seq 10000`
do 

j=`expr 10000 / 20`
k=`expr 10000 / 100`

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

echo -e "[=====================]$f%"

