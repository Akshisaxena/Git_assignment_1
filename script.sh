#! /bin/bash  
echo "select an option:
press 1- to generate a new key
press 2- to use an existing key"
read selected

if [[ $selected -eq 1 ]]
then 
gpg --full-generate-key
    echo "your key has been generated"
    
fi


if [[ $selected -eq 2 ]]
then 
gpg --list-secret-keys --keyid-format=long

echo "enter the key you want to use:"
read a

git config --global user.signingkey $a

echo "congo your key has been setup"







