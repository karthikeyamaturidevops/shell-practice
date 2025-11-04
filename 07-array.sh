#!/bin/bash

MOVIES=("Inception" "The Matrix" "Interstellar" "The Dark Knight")

echo "ALL MOVIES ${MOVIES[@]}"
echo "FIRST MOVIE ${MOVIES[0]}"
echo "TOTAL MOVIES ${#MOVIES[@]}"
echo "LENGTH OF FIRST MOVIE ${#MOVIES[0]}"
echo "LAST MOVIE ${MOVIES[-1]}"
echo "SECOND LAST MOVIE ${MOVIES[-2]}"
echo "SLICED MOVIES ${MOVIES[@]:1:2}"