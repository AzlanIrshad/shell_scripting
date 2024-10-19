#!/bin/bash

if [[ ! $1 ]]; then
    echo "No arguments have been passed!"
    exit 1
fi

sc_name="$1"
dir=/Users/azlanirshad/bin
file=/Users/azlanirshad/bin/"$sc_name"

if [[ -e $file ]]; then
    echo "File "$file" exists"
    exit 1
fi

if type "$sc_name"; then
    echo "There is cmd with the name: "$sc_name""
    exit 1
fi
echo "#!/bin/bash" >> "$file"
echo "end of script"
exit 0

