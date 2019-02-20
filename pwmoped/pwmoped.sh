#!/bin/sh
#
# Tries to decrypt a file called "~/.keys.txt.gpg" to "~/keys.txt" using GPG.

if [ ! -e ~/.keys.txt.gpg ]
then
    echo "Encrypted password file does not exist!"
    exit
fi

if [ -e ~/keys.txt ]
then
    echo "Password file already decrypted!"
    exit
fi

if ! gpg -do ~/keys.txt ~/.keys.txt.gpg
then
    echo "Password file decryption failed!"
fi
