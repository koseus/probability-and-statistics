control <- c(7, 3, -4, 14, 2, 5, 22, -7, 9, 5)
treatment <- c(-6, 5, 9, 4, 4, 12, 37, 5, 3, 3)

df <- data.frame(
  value = c(control, treatment),
  group = rep(c("Control", "Treatment"), c(length(control), length(treatment)))
)

ggplot(df, aes(x = value, fill = group)) +
  geom_dotplot(binwidth = 1, stackgroups = TRUE, binpositions = "all") +
  theme_minimal()

control_mean <- mean(control)
control_median <- median(control)
control_tr_mean <- mean(control, trim = 0.1)

treatment_mean <- mean(treatment)
treatment_median <- median(treatment)
treatment_tr_mean <- mean(treatment, trim = 0.1)

cat("Control Group\n",
    "Mean: ", control_mean, "\n",
    "Median: ", control_median, "\n",
    "Trimmed mean: ", control_tr_mean, "\n")

cat("Treatment Group\n",
    "Mean: ", treatment_mean, "\n",
    "Median: ", treatment_median, "\n",
    "Trimmed mean: ", treatment_tr_mean, "\n")

cat(paste0(
  "Mean suggests improvement for the treatment group whereas ",
  "median and trimmed mean suggest no difference.\n",
  "This is due to the outlier value in the treatment group.\n"
))