#!/bin/sh

# TEST07: Try to commit with the -a option when there are no files in the index
# Here, there should be nothing to commit

# Note, you should remove any non-girt files in the working directory before running this test

if test ! -d ".girt"
then
    ./girt-init
else
    rm -r ".girt"
    ./girt-init
fi
# Initialized empty girt repository in .girt
echo "Hello this is A">a
./girt-add a
./girt-commit -a -m "New version of a"
# Commited as commit 0
cat a
# I am a new A
cat .girt/index/a
# I am a new A
./girt-log
# 0 New version of a
./girt-status
# a - same as repo
# *girt-files* - untracked