#!/bin/sh

# TEST02: Add a file to the index which has an invalid filename
# According to the reference implementation, girt-add should first check for the invalid filename
# even though the file would not exist in the working directory

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
./girt-add 'invalid;filename'
# girt-add: error: invalid filename 'invalid;filename'
./girt-add 'has white spaces'
# girt-add: error: invalid filename 'has white spaces'
ls .girt/index
