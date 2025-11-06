#!/bin/bash

NUMBER=$1

#-gt - greater than
#-lt - less than
#-ge - greater than or equal to
#-le - less than or equal to
#-eq - equal to
#-ne - not equal to

if [ $NUMBER -eq 0 ]
then
    echo "$NUMBER is equal to zero."
else
    echo "$NUMBER  is not equal to zero."
fi