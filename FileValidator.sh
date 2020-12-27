#!/bin/bash

#File location:
# @Current File and New File
current_dir='/home/sid/lin_Learning'
current_file='check1.txt'
ftp_dir='/home/ftp_user'
ftp_file='check1.txt'
dummy_file1_loc='file1.txt'
dummy_file2_loc='file2.txt'

function dummyFileCleanUp(){
  cd $current_dir
  sudo rm -rf $dummy_file1_loc
  sudo rm -rf $dummy_file2_loc
}

function invalid_selection(){
  echo -e "\e[1;31mInvalid\e[0m option selected"
  abort_selection
}

function abort_selection(){
  echo -e "User Action - \e[1;31m ABORTED \e[0m"
}

function override_remote() {
  echo -e "User Operation: - \e[1;31m Over riding the remote repository \e[0m"
  cp $current_dir/$current_file $ftp_dir/$ftp_file
  echo -e "\e[1;31m1 Commit made\e[0m"
  cd $ftp_dir
  cat $ftp_file
  checkSyncStatus
}
function sync_to_latest(){
    echo -e "User Operation: - \e[1;31m Syncing the local with repository \e[0m"
    cp $ftp_dir/$ftp_file $current_dir/$current_file
    echo -e "\e[1;31mLocal repository synced with Remote\e[0m"
    cd $current_dir
    cat $current_file
    checkSyncStatus
}

function userSelection(){
    echo "Please enter the operation forward - Sync Loal(s)/Abort(a)/Commit(c)?"
    read user_selection
    case "$user_selection" in
        "s")
        sync_to_latest
        ;;
        "a")
        abort_selection
        ;;
        "c")
        override_remote
        ;;
        "k")
        invalid_selection
        ;;
    esac
}

function checkSyncStatus(){

#Checksum storage
sudo cksum $current_dir/$current_file > file1.txt
sudo cksum $ftp_dir/$ftp_file > file2.txt

cksum1=`awk '{print $1}' file1.txt`
cksum2=`awk '{print $1}' file2.txt`

if [ $cksum1 == $cksum2 ]
then
    echo "--------------------------------------------------------"
    echo -e "\e[1;36mFile: $ftp_file \e[0mis in sync with remote"
    echo "--------------------------------------------------------"
    echo -e "\e[1;36mYou are in sync with the latest code\e[0m"
    dummyFileCleanUp
  else
    echo "--------------------------------------------------------"
    echo -e "\e[1;31mFile: $ftp_file \e[0mis out of sync wih remote"
    echo "--------------------------------------------------------"
    echo "The difference in Files FTP(<) | Current(>) : are below:"
    diff $ftp_dir/$ftp_file $current_dir/$current_file
    dummyFileCleanUp
    userSelection
fi
}
checkSyncStatus
