BEGIN { FS = "," }  # Set field separator to a comma
NR > 1 { class[$3]++ }  # Count passengers based on Pclass (column 3)
END {
    # Store class numbers in an array for sorting
    for (c in class) {
        classes_sorted[i++] = c
    }

    # Sort the class numbers in ascending order
    n = i
    for (i = 0; i < n; i++) {
        for (j = i + 1; j < n; j++) {
            if (classes_sorted[i] > classes_sorted[j]) {
                temp = classes_sorted[i]
                classes_sorted[i] = classes_sorted[j]
                classes_sorted[j] = temp
            }
        }
    }

    # Print the sorted classes with passenger counts
    for (i = 0; i < n; i++) {
        c = classes_sorted[i]
        print "Class " c ": " class[c] " passengers"
    }
}
