#!/bin/sh

# TEST05: Remove file that does not exist in working directory but only in index
# Here, the file in the index should be deleted

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
rm a
./girt-rm a
ls .girt/index
# b