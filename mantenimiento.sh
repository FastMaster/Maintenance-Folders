#!/bin/bash
pause(){

	echo "Press Enter to continue ..."
	read pause

}

menu(){
	echo -e "Choose any option:\na)Auto\nd)Downloads\nt)Trash\ne)Exit"
}

Trash(){
	echo "Im looking the Trash:"
	sleep 1
	cd ~/.local/share/Trash/files
	count=`ls | wc -l`

	if [[ $count -ne 0 ]]; then
		echo "Are many file in the Trash..."
		rm -r *
		echo "clear !!"
		pause
	else
		echo "Folder is empty"
		pause
	fi
}

Downloads(){

	echo "Im looking your Downloads.."
	sleep 1
	cd ~/Downloads/
	count=`ls | wc -l`
	if [[ $count -ne 0 ]]; then
		echo "Are many file in the Downloads..."
		rm -ir *
		clear
		echo "clear !!"
		pause
	else
		echo "Folder is empty"
		pause
	fi
}

Auto(){
	clear
	echo "Automatic: Mode ON"
	sleep 2
	cd ~/Downloads/
	rm -rf *
	cd ~/.local/share/Trash/files
	rm -rf *
	clear
	echo "clear !!"
	pause
}

clear
echo "================================="
echo "Script to maintenance folders"
echo -e "=================================\n"
sleep 3
menu
read opt
until [[ $opt == e ]]; do
	if [[ $opt == a ]]; then
		Auto
	elif [[ $opt == d ]]; then
			Downloads
	elif [[ $opt == t ]]; then
			Trash
	else
		echo "Invalid option"
		pause
	fi

	clear
	menu
	read opt
done
clear
echo "Thanks for using my program"
echo "Author:FastMaster"
sleep 3
clear