#!/bin/sh

cat << EOF > all.h
/* This file is automatically generated. Do not edit. */
EOF

for i in $*; do
      echo -e "#include \"$i/plugin.h\"" >> all.h
      ALGORITHMS="${ALGORITHMS}(`echo $i | tr '[:lower:]' '[:upper:]'`)"
done

echo "#define ALGOS $ALGORITHMS" >> all.h

