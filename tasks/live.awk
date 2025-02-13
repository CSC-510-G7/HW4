BEGIN {
    FS = ","  # Set field separator to a comma
    survive1 = 0
    count1 = 0
    survive2 = 0
    count2 = 0
    survive3 = 0
    count3 = 0
}

NR > 1 {  # Skip the header row
    survive = $2
    
    if (survive != "") {  # Check that survived is not missing
        # Handle each different class
        if ($3 == 1) {
            count1 += 1
            survive1 += survive 
        }
        else if ($3 == 2) {
            count2 += 1
            survive2 += survive
        }
        else if ($3 == 3) {
            count3 += 1
            survive3 += survive
        }
    }
}

END {
    printf "Class 1 survival rate: %.2f%\n", survive1 / count1 * 100
    printf "Class 2 survival rate: %.2f%\n", survive2 / count2 * 100
    printf "Class 3 survival rate: %.2f%\n", survive3 / count3 * 100
}
