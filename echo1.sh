#/bin/bash

st=(`stty -a | grep  columns  | cut -d';' -f3 | cut -d' ' -f3`)
sst=`expr $st / 2`
ssst=`expr $sst - 2`
stt=`expr $st - 4`
for s in `seq  1 1 $stt`
do
if [ $s -eq $ssst ]
then
echo -e "start\c"
else
echo -e "#\c"
fi
done

echo "extract data"
echo -e  "[　　　　　　　　　　　　　　　　　　　　]0%\r\c"

for i in `seq 1 1 10000`
do

te=`expr 10000 / 100`
tt=`expr 10000 / 20`
c="＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊"
#p="####################"
p="　　　　　　　　　　　　　　　　　　　　"
	if [ `expr $i % $te` -eq 0 ] 
	then
	tw=`expr $i / $te`

		if [ `expr $i % $tt` -eq 0 ]
		then

		dw=`expr $i / $tt`
		wd=`expr 20 - $dw`
		cc=`echo $c | cut -c 1-$dw`
			if [ $wd -gt 0 ]
			then
			pp=`echo "$p" | cut -c 1-$wd`
			echo -e "[$cc"$pp"]$tw%\r\c"
			else
			pp=""
			fi
		else
			if [ `expr $i / $te` -lt 5 ]
			then
			#echo -e "[####################]$tw%\r\c"
			echo -e "[　　　　　　　　　　　　　　　　　　　　]$tw%\r\c"
			else
			echo -e "[$cc"$pp"]$tw%\r\c"
			fi
		fi
	fi
done

echo "[$cc]$tw%"

ad=`expr $st - 5`
aad=`expr $sst - 3`
for s in `seq  1 1 $ad`
do
if [ $s -eq $aad ]
then
echo -e "finish\c"
else
echo -e "#\c"
fi
done

