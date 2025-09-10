measurements <- c(3.4, 2.5, 4.8, 2.9, 3.6, 2.8, 3.3, 5.6, 3.7, 2.8, 4.4, 4.0, 5.2, 3.0, 4.8)

sample_size <- length(measurements)
sample_mean <- mean(measurements)
sample_median <- median(measurements)

cat("The sample size is ", sample_size, "\n")
cat("The sample mean is ", sample_mean, "\n")
cat("The sample median is ", sample_median, "\n")

library(ggplot2)

df <- data.frame(measurements)
ggplot(df, aes(x = measurements)) +
  geom_dotplot(binwidth = 0.1, fill = "blue") +
  theme_minimal()

trimmed_mean <- mean(measurements, trim = 0.2)
cat("Trimmed mean (20%) is ", trimmed_mean, "\n")

cat("The trimmed mean is more descriptive than the sample mean since it is closer to the sample median")