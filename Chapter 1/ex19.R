values <- c(2.0, 3.0, 0.3, 3.3, 1.3, 0.4, 0.2, 6.0, 5.5, 6.5, 0.2, 2.3, 1.5, 
            4.0, 5.9, 1.8, 4.7, 0.7, 4.5, 0.3, 1.5, 0.5, 2.5, 5.0, 1.0, 6.0, 
            5.6, 6.0, 1.2, 0.2)

stem(values, scale = 1)

# define class intervals, e.g. width = 1 from 0 to 7
breaks <- seq(0, 7, by = 1)

# cut into bins
bins <- cut(values, breaks, right = FALSE)

# frequency table
freq <- table(bins)

# relative frequency
rel_freq <- prop.table(freq)

# combine into a data frame
print(data.frame(Interval = names(freq),
           Frequency = as.vector(freq),
           Relative_Frequency = round(as.vector(rel_freq), 3))
      )

sample_mean <- mean(values)
sample_median <- median(values)
sample_sd <- sd(values)

cat("Sample mean: ", round(sample_mean, 2), "\n")
cat("Sample median: ", round(sample_median, 2), "\n")
cat("Sample standard deviation: ", round(sample_sd), "\n")