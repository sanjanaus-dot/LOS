#!/bin/bash

#Method 1
#checks whether $1 is an empty string

if  [ -z "$1" ]
then
echo "Error: Please provide a filename."
exit1
fi

if [ -f "$1" ]   #-f = checks whether it is a regular file
then
head -n 5 "$1"
else
echo "Error: File does not exist."
fi

: << 'END'
Method2
#!/bin/bash

$# : means number of command-line arguments.

if [ $# -eq 0 ]; then
    echo "Error: Please provide a filename."
    exit 1
fi

if [ -f "$1" ]; then
    head -n 5 "$1"
else
    echo "Error: File does not exist."
fi
Method3
#!/bin/bash

test does the same job as [ ]

if test $# -eq 0
then
    echo "Error: Please provide a filename."
    exit 1
fi

if test -f "$1"
then
    head -n 5 "$1"
else
    echo "Error: File does not exist."
fi
END

