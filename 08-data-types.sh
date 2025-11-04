#!/bin/bash
#comment starts from here above 1st line is called "shebang"

VALUE1=42           # Integer
VALUE2=50

TIMESTAMP=$(date)  # Timestamp
echo "Script executed at: $TIMESTAMP"

SUM=$(($VALUE1 + $VALUE2))

echo "The sum of $VALUE1 and $VALUE2 is: $SUM"