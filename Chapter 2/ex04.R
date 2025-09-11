# possible outcomes
green <- 1:6
red <- 1:6

# all combinations
space <- expand.grid(x = green, y = red)


# convert to set notation string
cat("Listing the elements (x, y): \n")
pairs <- apply(space, 1, function(row) paste0("(", row[1], ",", row[2], ")"))
cat("S = {", paste(pairs, collapse = ", "), "}\n\n")

# (b) rule method (just print as text)
cat("Using the rule method: \n")
cat("S = { (x, y) | x ∈ {1,2,3,4,5,6}, y ∈ {1,2,3,4,5,6} }\n")