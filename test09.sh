#!/bin/sh

# TEST09: Checkout to another branch after modifying files
# These modified files should stay in the working directory

# Note, you should remove any non-girt files in the working directory before running this test

if test ! -d ".girt"
then
    ./girt-init
else
    rm -r ".girt"
    ./girt-init
fi
# Initialized empty girt repository in .girt
echo "I am just a regular a"
./girt-add a b
./girt-commit -m "I have original a b"
# Committed as commit 0
./girt-branch B1
echo "I have changed">a
./girt-checkout B1
Switched to branch 'B1'
cat a
# I have changed
cat .girt/repositories/B1/0/a
# I am just a regular a