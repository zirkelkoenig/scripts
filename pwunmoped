#!/bin/sh
#
# Deletes a file "~/keys.txt", if it is already encrypted in a file called
# "~/.keys.txt.gpg".

if [ ! -e ~/keys.txt ]
then
    echo "Nothing to wipe!"
    exit
fi

if [ ! -e ~/.keys.txt.gpg ]
then
    echo "Password file not encrypted yet!"
    exit
fi

cd ~
KEYPATH=`pwd`
SIZEEXT=`du -b ~/keys.txt`
SIZE=`expr "$SIZEEXT" : '\([0-9]*\)'`

dd if=/dev/zero of=$KEYPATH/keys.txt bs=$SIZE count=1
rm -f ~/keys.txt
