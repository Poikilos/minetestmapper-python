#!/bin/sh
if [ ! -f "`command -v pycodestyle-3`" ]; then
  echo "You must install the python3-pycodestyle package before using the quality script."
  exit 1
fi
target="minetestmapper-numpy.py"
# target="__init__.py"
# if [ ! -z "$1" ]; then
#   target="$1"
# fi
if [ -f err.txt ]; then
  rm err.txt
fi
if [ -f "`command -v outputinspector`" ]; then
  pycodestyle-3 "minetestmapper.py" > err.txt
  pycodestyle-3 "$target" >> err.txt
  # For one-liner, would use `||` not `&&`, because pycodestyle-3 returns nonzero (error state) if there are any errors
  if [ -s "err.txt" ]; then
    outputinspector
  else
    echo "No quality issues were detected."
    rm err.txt
    # echo "Deleted empty 'err.txt'."
  fi
else
  pycodestyle-3 "minetestmapper.py"
  pycodestyle-3 "$target"
  echo
  echo "If you install outputinspector, this output can be examined automatically, allowing double-click to skip to line in Geany/Kate"
  echo
fi
