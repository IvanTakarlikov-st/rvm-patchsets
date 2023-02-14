#!/bin/bash
find $rvm_path/patches $rvm_path/patchsets -name '*railsexpress*' | xargs rm -rf
cp -rp patches patchsets $rvm_path

for i in "$@"; do
  rvm reinstall $i --patch railsexpress
done
