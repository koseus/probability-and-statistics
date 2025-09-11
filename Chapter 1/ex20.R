values <- c(17, 20, 10, 9, 23, 13, 12, 19, 18, 24, 12, 14, 6, 9, 13, 6, 7, 10, 
            13, 7, 16, 18, 8, 13, 3, 32, 9, 7, 10, 11, 13, 7, 18, 7, 10, 4, 27, 
            19, 16, 8, 7, 10, 5, 14, 15, 10, 9, 6, 7, 15)

# Separate stems and leaves
stems <- values %/% 10
leaves <- values %% 10

# Identify sub-stems (0 = 0-4, · = 5-9)
substem <- ifelse(leaves <= 4, "", "·")

# Combine into factor for ordering
stem_label <- paste0(stems, substem)

# Build table of leaves grouped by stems
split_leaves <- tapply(leaves, stem_label, function(x) paste(sort(x), collapse = " "))

# Output in order
stems_order <- c("0","0·","1","1·","2","2·","3")
for (s in stems_order) {
  cat(sprintf("%-2s | %s\n", s, split_leaves[[s]]))
}

breaks <- seq(0, 7, by = 1)
bins <- cut(values, breaks, right = FALSE)

freq <- table(bins)
rel_freq <- prop.table(freq)

rel_freq_table <- data.frame(
  Interval = names(freq),
  Frequency = as.vector(freq),
  Relative_Frequency = round(as.vector(rel_freq), 3)
)

print(rel_freq_table)

hist(values, freq = FALSE,
     main = "Relative Frequency Histogram",
     xlab = "Values", ylab = "Relative Frequency")

# add a density curve for visual smoothness
lines(density(values), col = "blue", lwd = 2)

values_median <- median(values)
cat("Median: ", values_median, "\n")

