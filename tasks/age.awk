BEGIN {
    FS = ","  # Set field separator to a comma
    total_age = 0  # Initialize total age
    count = 0      # Initialize passenger count
}

NR > 1 {  # Skip the header row
    if ($7 != "") {  # Check if Age is not missing
        total_age += $7  # Add age to total
        count++           # Increment passenger count
    }
}

END {
    if (count > 0) {
        average_age = total_age / count  # Calculate average age
        printf "Average age of passengers: %.2f\n", average_age  # Print with 2 decimal places
    } else {
        print "No valid age data found."
    }
}
