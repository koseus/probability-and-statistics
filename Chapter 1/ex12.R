tensile_20 <- c(2.07, 2.14, 2.22, 2.03, 2.21, 2.03, 2.05, 2.18, 2.09, 2.14, 2.11, 2.02)
tensile_45 <- c(2.52, 2.15, 2.49, 2.03, 2.37, 2.05, 1.99, 2.42, 2.08, 2.42, 2.29, 2.01)

tensile_20_sd <- sd(tensile_20)
tensile_45_sd <- sd(tensile_45)

cat("Standard deviation for 20 C: ", round(tensile_20_sd, 2), "\n")
cat("Standard deviation for 45 C: ", round(tensile_45_sd, 2), "\n\n")

cat("An increase in temperature makes the tensile strength more variable\n")