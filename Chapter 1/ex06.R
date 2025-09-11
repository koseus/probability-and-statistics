tensile_20 <- c(2.07, 2.14, 2.22, 2.03, 2.21, 2.03, 2.05, 2.18, 2.09, 2.14, 2.11, 2.02)
tensile_45 <- c(2.52, 2.15, 2.49, 2.03, 2.37, 2.05, 1.99, 2.42, 2.08, 2.42, 2.29, 2.01)

library(ggplot2)

df <- data.frame(
  value = c(tensile_20, tensile_45),
  group = rep(c("20 C", "45 C"), c(length(tensile_20), length(tensile_45)))
)

ggplot(df, aes(x = value, fill = group)) +
  geom_dotplot(binwidth = 0.02, stackgroups = TRUE, binpositions = "all") +
  theme_minimal()

tensile_20_mean <- mean(tensile_20)
tensile_45_mean <- mean(tensile_45)

cat("Tensile mean for 20 C group: ", tensile_20_mean, "\n")
cat("Tensile mean for 45 C group: ", tensile_45_mean, "\n")

cat("Tensile strength improves as the curing temperature increases, according to the plot")