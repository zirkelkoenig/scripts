#!/bin/sh
#
# Ecrypts a file called "~/keys.txt" using GPG, overwriting an existing
# "~/.keys.txt.gpg" file.

if [ ! -e ~/keys.txt ]
then
    echo "Nothing to encrypt!"
    exit
fi

if [ -e ~/.keys.txt.gpg ]
then
    if ! rm -f ~/.keys.txt.gpg
    then
        echo "Old encrypted file could not be deleted!"
        exit
    fi
fi

if ! gpg -c --cipher-algo TWOFISH -o ~/.keys.txt.gpg ~/keys.txt
then
    echo "Password file encryption failed!"
fi
