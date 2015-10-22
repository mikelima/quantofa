#! /bin/sh
SIZES="86 108 128 256"
for i in $SIZES; do
	mkdir -p appicons/${i}x${i}/apps
	inkscape --export-png appicons/${i}x${i}/apps/harbour-quantofa.png -w $i -h $i quantofa.svg
done
