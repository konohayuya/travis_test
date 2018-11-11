#! /bin/bash

for input_file in $(find */*.md )
do
  output_file=$(echo $input_file | sed -e "s/.md/.pdf/"  |xargs basename)
  pandoc $input_file \
    -o $output_file \
    -H preamble.tex \
    --latex-engine=lualatex \
    -V documentclass=ltjarticle \
    -V geometry:a4paper \
    --listings \
    -s
done
