#!/bin/bash

#Method1
if [ $# -eq 0 ]; then
    echo "Error: Please provide a filename."
    exit 1
fi

#-e= exists
if [ ! -e "$1" ]; then
    echo "Error: File does not exist."
    exit 1
fi

echo "File exists."

if [ ! -f "$1" ]; then
    echo "It is not a regular file."
    exit 1
fi

echo "It is a regular file."

#-s= file has size greater than zero,! -s= file is empty

if [ -s "$1" ]; then
    echo "File is non-empty."
    echo "First 5 lines:"
    head -n 5 "$1"
else
    echo "File is empty."
fi


: << 'END'

mETHOD2
#!/bin/bash

if [ ! -e "$1" ]; then
    echo "File does not exist."
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Not a regular file."
    exit 1
fi

#$(cat "$1") : reads the file contents.
if [ -z "$(cat "$1")" ]; then
    echo "File is empty."
else
    echo "File is non-empty."
    head -n 5 "$1"
fi

Method3

#!/bin/bash

if [ ! -e "$1" ]; then
    echo "File does not exist."
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Not a regular file."
    exit 1
fi

#wc -c : counts the number of bytes.
size=$(wc -c < "$1")

if [ "$size" -eq 0 ]; then
    echo "File is empty."
else
    echo "File is non-empty."
    head -n 5 "$1"
fi
END
