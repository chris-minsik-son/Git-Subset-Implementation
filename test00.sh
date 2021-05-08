#!/bin/sh

# TEST00: Add a modified file to the index in which the filename already exists
# Note, you should remove any non-girt files in the working directory before running this test

if test ! -d ".girt"
then
    ./girt-init
else
    rm -r ".girt"
    ./girt-init
fi
# Initialized empty girt repository in .girt
touch a
./girt-add a
./girt-commit -m "Adding file a"
# Commited as commit 0
echo "This is the modified version of a">>a
./girt-add a
cat ".girt/index/a"
# This is the modified version of a
