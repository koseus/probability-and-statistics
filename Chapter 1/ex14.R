diameters <- c(572, 572, 573, 568, 569, 575, 565, 570)

diameters_mean <- mean(diameters)
diameters_median <- median(diameters)
diameters_var <- var(diameters)
diameters_sd <- sd(diameters)
diameters_range <- diff(range(diameters))

cat("Sample mean: ", round(diameters_mean, 2), "\n")
cat("Sample median: ", round(diameters_median, 2), "\n")
cat("Sample variance: ", round(diameters_var, 2), "\n")
cat("Sample standard deviation: ", round(diameters_sd, 2), "\n")
cat("Sample range: ", round(diameters_range, 2), "\n\n")

cat(paste0("Minimum acceptable diameter value is 570. ",
           "Mean and median values are both slightly above this threshold. ",
           "However, variance, standard deviation and range seem high.\n",
           "Looking at these values, overall patch is not sufficiently thick in diameter."))
