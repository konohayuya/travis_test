#! /bin/bash

for input_file in $(find */*.md )
do
  output_file=$(echo $input_file | sed -e "s/.md/.pdf/"  |xargs basename)
  echo "pandoc $input_file \
    -v $output_file \
    -H preamble.tex \
    --latex-engine=lualatex \
    -V documentclass=ltjarticle \
    -V geometry:a4paper \
    --listings"
done
