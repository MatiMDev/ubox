#!/bin/bash

if [ $# -eq 0 ]
then
date > data.txt
else
date > $1
fi
