#!/bin/sh

# TEST08: Try to create branches that already exist in the repository
# Here, an error message should be outputted

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
./girt-commit -m "contains a b"
# Commited as commit 0
./girt-branch B1
./girt-branch
# B1
# master
./girt-branch B1
# girt-branch: error: branch 'B1' already exists