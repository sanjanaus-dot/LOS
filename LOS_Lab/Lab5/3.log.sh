#!/bin/bash

#Method1
if [ $# -eq 0 ]; then
    echo "Error: Please provide a log file."
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error: File does not exist."
    exit 1
fi

grep -i -E 'failed|denied|unauthorized|error' "$1"


: << 'END'

Method2
#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Please provide a log file."
    exit 1
fi

grep -i "failed" "$1"
grep -i "denied" "$1"
grep -i "unauthorized" "$1"
grep -i "error" "$1"

Method3
#!/bin/bash

grep -i -e "failed" -e "denied" -e "unauthorized" -e "error" "$1"
END
