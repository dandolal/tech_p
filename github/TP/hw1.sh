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
		beg=${filename%.*}
		end=${filename##*.}
		#echo $filename
		#echo $PWD
		if [ -e $root/$filename ]
		then
			count=1
			newname=$beg'('$count')'.$end
			while [ -e $var/$newname ]
			do
				newname=$beg'('$count')'.$end
				count=$count+1
			done
			
			
			filename=$beg'('$count')'.$end
		fi
		cp $file $root/$filename
	done
done
tar -czf $arch.tar.gz $direct
echo done
