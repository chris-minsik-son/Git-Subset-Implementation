#!/bin/sh

# TEST06: Remove file with the --force option
# Here, the safety checks would be overwritten

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
echo 'Modified file a'>a
./girt-rm a
# girt-rm: error: 'a' has staged changes in the index
./girt-rm --force a
ls
# b *girt-commands*
ls .girt/index
# b