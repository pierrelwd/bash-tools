#!/bin/bash

DAYS=5
PATH="/patho/to/directory/*"

#-exec is the command to execute on finded files
find $PATH -mtime +$DAYS -exec rm {} \;
