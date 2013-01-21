#!/bin/bash 

for SVG in *.svg; do
  convert $SVG -size 70x70 $SVG.png;
done
