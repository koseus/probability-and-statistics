no_aging <- c(227, 222, 218, 217, 225, 218, 216, 229, 228, 221)
aging <- c(219, 214, 215, 211, 209, 218, 203, 204, 201, 205)

library(ggplot2)

df <- data.frame(
  value = c(no_aging, aging),
  group = rep(c("No aging", "Aging"), c(length(no_aging), length(aging)))
)

ggplot(df, aes(x = value, fill = group)) +
  geom_dotplot(binwidth = 1, stackgroups = TRUE, binpositions = "all") +
  theme_minimal()

cat("Aging process had a slight effect on the tensile strength\n")

no_aging_mean <- mean(no_aging)
aging_mean <- mean(aging)

cat("Mean value for no aging is ", no_aging_mean, "\n");
cat("Mean value for aging is ", aging_mean, "\n");

no_aging_median <- median(no_aging)
aging_median <- median(aging)

cat("Median value for no aging is ", no_aging_median, "\n")
cat("Median value for aging is ", aging_median, "\n")

cat("Intragroup mean and median values are very similar")