#!/bin/bash
cd $1
for f in *.spxmi; do
svn rename $f R_$f
done

