#!/bin/bash
direct=$1
arch=$2
shift
shift

if ! [ -d $direct/ ]
then
	mkdir $direct
fi
for i in $@
do 
	files=$(find /home -name "*.$i")
	for file in $files
	do 
		root=/home/daniil/Документы/$direct
		filename=$(basename $file)
		#echo $filename
		echo $PWD
		if [ -f $root/$filename ]
		then
			count=1
			while [ -f $var/$fiename$count ]
			do
				((count++))
			done
			newname=$fiename$count
			#echo $newname
		fi
		cp $file $root/$newname
	done
done
tar -cf $arch.tar $direct
echo done
