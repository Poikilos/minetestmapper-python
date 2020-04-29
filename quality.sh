#!/bin/sh
if [ ! -f "`command -v pycodestyle-3`" ]; then
    echo "You must install the python3-pycodestyle package before using the quality script."
    exit 1
fi
# target="__init__.py"
# if [ ! -z "$1" ]; then
#     target="$1"
# fi
if [ -f err.txt ]; then
    rm err.txt
fi
ext="py"
if [ -f "`command -v outputinspector`" ]; then
    for f in *.$ext; do
        pycodestyle-3 "$f" >> err.txt
    done
    # For one-liner, would use `||` not `&&`, because pycodestyle-3 returns nonzero (error state) if there are any errors
    if [ -s "err.txt" ]; then
        # -s: exists and >0 bytes
        outputinspector
    else
        echo "No quality issues were detected."
        rm err.txt
        # echo "Deleted empty 'err.txt'."
    fi
else
    for f in *.$ext; do
        pycodestyle-3 "$f" >> err.txt
    done
    echo
    echo "If you install outputinspector, this output can be examined automatically, allowing double-click to skip to line in Geany/Kate"
    echo
fi
