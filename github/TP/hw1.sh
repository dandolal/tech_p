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
		#echo $PWD
		if [ -e $root/$filename ]
		then
			count=1
			while [ -e $var/$fiename$count ]
			do
				count=$count+1
			done
			newname=$filename$count
			#echo $newname
			filename=$newname
		fi
		cp $file $root/$filename
	done
done
tar -cf $arch.tar $direct
echo done
