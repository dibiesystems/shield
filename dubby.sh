#!/bin/bash
usermgt() {
echo enter the name you want to add
read username
sudo useradd $username
sleep 1
echo $username has been added successfully!
echo enter password
read -s password
echo $password | sudo passwd $username --stdin
echo To exit type ctrl+C
}


movefile() {
echo enter the name of the file or directory you want to move
read Name
echo where you want to move the file or directory to?
read where
mv $Name $where
echo $Name is now in $where
}

sendfile() {
echo enter name of file to be sent
read name_file
echo enter the user you are sending the file to?
read touser
echo enter the ip of $touser
read desiredip
echo enter in which directory of $touser you want the file to be sent
read destination
sudo scp $name_file $touser@$desiredip:$destination
echo $name_file has been sent to $destination successfully
}

usergroup() {
echo The name of the group you want to a user to?
read grpname
echo The name of the user you want to add to $grpname
read grpuser
sudo usermod -G $grpname $grpuser
echo $grpuser added to $grpname
}

modfile() {
echo The name of file or directory you want to modify permission for?
read fileN
echo the permission attribute to you to give for $fileN
read perm
sudo chmod $perm $fileN
echo $fileN has been modified
}

echo if you want to add user type A, move file B, send file C, add user to a group D, modify permission E
read answer

case $answer in
	A)
		for (( a=1; a>=1;a++))
		do
			usermgt
		done
		;;
	B)
		movefile;;
	C)
		sendfile;;
	D)
		usergroup;;
	E)
		modfile;;
	*)
		echo you have enter an invalid option, you have coconut head
esac
