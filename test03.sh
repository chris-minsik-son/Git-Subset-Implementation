#!/bin/sh

# TEST03: Check if we can have a commit message that is empty or contains spaces only

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
./girt-commit -m ""
# usage: girt-commit [-a] -m commit-message
./girt-commit -m "     "
# usage: girt-commit [-a] -m commit-message
./girt-commit -m "      hello"
# Committed as commit 0