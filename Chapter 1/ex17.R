smokers <- c(69.3, 56.0, 22.1, 47.6, 53.2, 48.1, 52.7, 34.4, 60.2, 43.8, 23.2, 13.8)
nonsmokers <- c(28.6, 25.1, 26.4, 34.9, 29.8, 28.4, 38.5, 30.2, 30.6, 31.8, 41.6, 
                21.1, 36.0, 37.9, 13.9)

smokers_mean <- mean(smokers)
nonsmokers_mean <- mean(nonsmokers)

smokers_sd <- sd(smokers)
nonsmokers_sd <- sd(nonsmokers)

library(ggplot2)

df <- data.frame(
  value = c(smokers, nonsmokers),
  group = rep(c("Smokers", "Nonsmokers"), c(length(smokers), length(nonsmokers)))
)

ggplot(df, aes(x = value, fill = group)) +
  geom_dotplot(binwidth = 1, stackgroups = TRUE, binpositions = "all") +
  theme_minimal()

cat("Smokers need longer time to fall asleep")