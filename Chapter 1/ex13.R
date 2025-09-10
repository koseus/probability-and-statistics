battery_lives <- c(123, 116, 122, 110, 175, 126, 125, 111, 118, 117)

sample_mean <- mean(battery_lives)
sample_median <- median(battery_lives)

cat("Sample mean: ", sample_mean, "\n")
cat("Sample median: ", sample_median, "\n\n")

cat("The outlier 175 is responsible for higher mean than median\n")