scores <- c(23, 60, 79, 32, 57, 74, 52, 70, 82, 36, 80, 77, 81, 95, 41, 65, 92, 
            85, 55, 76, 52, 10, 64, 75, 78, 25, 80, 98, 81, 67, 41, 71, 83, 54, 
            64, 72, 88, 62, 74, 43, 60, 78, 89, 76, 84, 48, 84, 90, 15, 79, 34, 
            67, 17, 82, 69, 74, 63, 80, 85, 61)

stem(scores, scale = 1)

hist(scores,
     breaks = seq(10, 100, 10),   # bins by tens
     freq = FALSE,                # relative frequencies
     main = "Relative Frequency Histogram of Scores",
     xlab = "Scores",
     ylab = "Relative Frequency")

lines(density(scores), col = "blue", lwd = 2)

cat(paste0("The scores range from about 10 to 98.\n",
           "Histogram shows concentration in the 70–85 range.\n",
           "Left tail is longer (low scores like 10, 15, 17, 23).\n",
           "Thus the distribution is slightly negatively skewed (left-skewed): ",
           "the bulk is high, with a few low outliers pulling the tail left.\n\n"))

sample_mean <- mean(scores)
sample_median <- median(scores)
sample_sd <- sd(scores)

cat("Sample mean: ", round(sample_mean, 2), "\n")
cat("Sample median: ", round(sample_median, 2), "\n")
cat("Sample standard deviation: ", round(sample_sd), "\n")