#!/bin/bash
path=$1
ext=$2
pattern=\*.$ext
counts=$(find "$1" -type f -name $pattern | sed 's|.*\.$pattern||' | sort -u | wc -l)

LF() {
	echo ""
}

readInputInit() {
	echo "Press enter to convert $1 games *.$2 to *.7z..."
	read -rsp $''
	LF
}

readInputEnd() {
	read -rsp $'Press enter to exit...\n'
	LF
}

looper7z(){
	for i in "$path"*.$ext
	do 
		extFile=${i##*.}
		file="${i%.*}"
		./7z.exe a -t7z -mx9 "$file.7z" "$i"
		LF
	done
}

mainTrue() {
	readInputInit $counts $ext
	looper7z 
	readInputEnd
}

mainFalse() {
	man
}

man() {
	LF
	echo "Please, you specify the params to compress 7z ..."
	LF
	echo "Param 1 : path to find the files..    ej) ../myPath/roms/"
	echo "Param 2 : extension files..           ej) bin"
	LF
	echo "Command : ./to7z.sh ../myPath/roms/ bin"
	LF
}

main() {
	if [ 2 -eq $1 ]
	then
		mainTrue
	else
	 	mainFalse
	fi
}

main $#
exit 0