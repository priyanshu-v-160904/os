#9) Printing the patterns using for loop.
#1. Right-Angled Triangle Pattern
#!/bin/bash

# Number of rows
rows=5

for ((i=1; i<=rows; i++))
do
    for ((j=1; j<=i; j++))
    do
        echo -n "* "
    done
    echo
done
#2. Reverse Right-Angled Triangle
#!/bin/bash

rows=5

for ((i=rows; i>=1; i--))
do
    for ((j=1; j<=i; j++))
    do
        echo -n "* "
    done
    echo
done
#3. Pyramid Pattern
#!/bin/bash

rows=5

for ((i=1; i<=rows; i++))
do
    # Printing spaces
    for ((j=i; j<rows; j++))
    do
        echo -n " "
    done
    # Printing stars
    for ((j=1; j<=(2*i-1); j++))
    do
        echo -n "*"
    done
    echo
done
