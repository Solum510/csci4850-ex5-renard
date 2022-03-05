#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
	numWords="$(wc --word < $f)"
	#numWords="$(wc -w $f | cut -d' ' f1)"
    SIZE="$(du -sh "${f}" | cut -f1)"
	#numWords= wc --word < "${f}"
    echo "Processing $f file..."
    echo "File size: $SIZE"
echo "Word count: $numWords "
  fi
done

