#!/bin/sh

# TEST01: Add a file to the index which does not exist in the working directory
# Here, none of the files should be inserted into the index
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
./girt-add a b c
# girt-add: error: can not open 'c'
ls ".girt/index"
