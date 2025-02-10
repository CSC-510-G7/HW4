#!/bin/bash

# create given sample file
cat > sample.txt <<EOF
apple
banana
apple
cherry
banana
banana
date
EOF

# Find all lines containing "banana":
echo "Lines containing 'banana':"
grep "banana" sample.txt
echo ""

# Find all lines that don't contain "banana":
echo "Lines without 'banana':"
grep -v "banana" sample.txt
echo ""

# Use uniq to find unique lines (output should be the above file, with only one line each for apple, banaona, cherry, date)
echo "Unique lines:"
sort sample.txt | uniq # added sort command so it works
echo ""

# run the command man uniq. Use what you found to extend the uniq comment to count the occurange of each work
echo "Counting occurances of each item:"
sort sample.txt | uniq -c
echo ""

# Combine grep and uniq to count occurrences of lines containing "banana":
echo "Counting occurances of banana:"
sort sample.txt | grep "banana" | uniq -c
echo ""
