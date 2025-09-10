values <- c(18.71, 21.41, 20.72, 21.81, 19.29, 22.43, 20.17, 23.71, 19.44, 
            20.50, 18.92, 20.33, 23.00, 22.85, 19.25, 21.77, 22.11, 19.77, 
            18.04, 21.12)

sample_mean <- mean(values)
sample_median <- median(values)

cat("The sample mean is ", sample_mean, "\n")
cat("The sample median is ", sample_median, "\n")

trimmed_mean <- mean(values, trim = 0.1)
cat("Trimmed mean (10%) is ", trimmed_mean, "\n")

library(ggplot2)

df <- data.frame(values)
ggplot(df, aes(x = values)) +
  geom_dotplot(binwidth = 0.1, fill = "blue") +
  theme_minimal()

cat("Since mean, median and trimmed mean are all very close to each other,
the outliers do not vary much from the rest of the data")