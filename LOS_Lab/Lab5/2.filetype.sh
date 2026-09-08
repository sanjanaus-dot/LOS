#!/bin/bash

#Method1
if [ -f "$1" ]; then
    echo "It is a regular file."
elif [ -d "$1" ]; then
    echo "It is a directory."
else
    echo "It is neither a regular file nor a directory."
fi

if [ -r "$1" ]; then
    echo "Readable"
else
    echo "Not readable"
fi

if [ -w "$1" ]; then
    echo "Writable"
else
    echo "Not writable"
fi

if [ -x "$1" ]; then
    echo "Executable"
else
    echo "Not executable"
fi


: << 'END'
#!/bin/bash

Method2
if [ -f "$1" ]; then
    echo "It is a regular file."
elif [ -d "$1" ]; then
    echo "It is a directory."
else
    echo "It is neither a regular file nor a directory."
fi

if [ -r "$1" ]; then
    echo "Readable"
else
    echo "Not readable"
fi

if [ -w "$1" ]; then
    echo "Writable"
else
    echo "Not writable"
fi

if [ -x "$1" ]; then
    echo "Executable"
else
    echo "Not executable"
fi

Method3
#!/bin/bash

if test -f "$1"; then
    echo "Regular file"
fi

if test -d "$1"; then
    echo "Directory"
fi

if test -r "$1"; then
    echo "Readable"
fi

if test -w "$1"; then
    echo "Writable"
fi

if test -x "$1"; then
    echo "Executable"
fi
END
