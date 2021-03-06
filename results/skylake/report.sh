#!/bin/bash

name=skylake-i7-6700-gcc5.3.0-avx2

python ../../scripts/report.py \
    --csv="$name.csv" \
    --output="$name.rst" \
    --cpu="Skylake Core i7-6700 CPU @ 3.40GHz" \
    --architecture="AVX2" \
    --compiler="GCC 5.3.0 (Ubuntu)" \
    --runs=5

name=skylake-i7-6700-clang3.8.0-avx2

python ../../scripts/report.py \
    --csv="$name.csv" \
    --output="$name.rst" \
    --cpu="Skylake Core i7-6700 CPU @ 3.40GHz" \
    --architecture="AVX2" \
    --compiler="3.8.0-svn257311-1~exp1 (Ubuntu)" \
    --runs=5

if type rst2html > /dev/null
then
    for src in *.csv
    do
        dst=`basename $src .csv`.html
        rst2html "$src" > "$dst"
    done
fi
