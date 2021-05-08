#!/bin/sh

# TEST04: Try to remove 3 files at once but one of the files does not exist
# Here, none of the files should be deleted

# Note, you should remove any non-girt files in the working directory before running this test

if test ! -d ".girt"
then
    ./girt-init
else
    rm -r ".girt"
    ./girt-init
fi
# Initialized empty girt repository in .girt
touch a b
./girt-add a b
./girt-rm a b c
# girt-rm: error: 'a' has staged changes in the index