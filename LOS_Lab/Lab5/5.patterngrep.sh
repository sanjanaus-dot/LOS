#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Error: Please provide a log file."
    exit 1
fi

if [ ! -e "$1" ]; then
    echo "Error: File does not exist."
    exit 1
fi

if [ ! -r "$1" ]; then
    echo "Error: File is not readable."
    exit 1
fi

read -p "Enter search term: " term

echo "First 5 matching records:"
grep -i "$term" "$1" | head -n 5

count=$(grep -i "$term" "$1" | wc -l)

echo "Total matching records: $count"


: << 'COUNT'
Method2
#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Please provide a log file."
    exit 1
fi

if [ ! -e "$1" ] || [ ! -r "$1" ]; then
    echo "Error: File does not exist or is not readable."
    exit 1
fi

read -p "Enter search term: " term

matches=$(grep -i "$term" "$1")

echo "First 5 matching records:"
echo "$matches" | head -n 5

count=$(echo "$matches" | wc -l)

echo "Total matching records: $count"


Method3

#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Please provide a log file."
    exit 1
fi

if [ ! -e "$1" ]; then
    echo "File does not exist."
    exit 1
fi

if [ ! -r "$1" ]; then
    echo "File is not readable."
    exit 1
fi

read -p "Enter search term: " term

echo "First 5 matching records:"
grep -i "$term" "$1" | head -n 5

count=$(grep -i -c "$term" "$1")

echo "Total matching records: $count"
COUNT
