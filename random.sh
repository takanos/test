#!/bin/bash

#echo -e "Number of member => \c"
echo -e "参加者の人数を入力してください => \c"
read number
#echo -e "Group making = 0 , One election = 1  => \c"
echo -e "グループを作る場合 = 0 , 代表者を決める場合 = 1  => \c"
read ver

	for i in `seq $number`
	do 
#	echo -e "Name of members ($i) => \c"
	echo -e "お名前をどうぞ ($i) => \c"
	read name
	a+=("$name")
	done

	b=(`shuf -e ${a[@]}`)

case $ver in
"0" )
	echo ""
#	echo  -e "Number of people of the group => \c"
	echo  -e "何人グループを作りますか => \c"
	read N
	
	for i in `seq 0 1 $number`
	do
		if [ `expr $i % $N` -eq 0 ]
		then
			if [ $i != $number ]
			then
			echo ""
			echo "group `expr $i / $N + 1`"
			fi
		fi
		echo ${b[$i]}

	done
;;

"1" )
#	echo -e "howmany => \c"
	echo -e "代表者は何人ですか => \c"
	read ho
	echo ""
	echo "Congratulations!!"
	o=`expr $ho -1 `
	for d in `seq 0 1 $o`
	do
	eval echo "${a[$d]}"
	done
;;
esac
