no_aging <- c(227, 222, 218, 217, 225, 218, 216, 229, 228, 221)
aging <- c(219, 214, 215, 211, 209, 218, 203, 204, 201, 205)

no_aging_var <- var(no_aging)
no_aging_sd <- sd(no_aging)

aging_var <- var(aging)
aging_sd <- sd(aging)

cat(paste0("No Aging Group:\n", 
           "Variance: ", round(no_aging_var, 2), "\n",
           "Standard deviation: ", round(no_aging_sd, 2), "\n\n"))

cat(paste0("Aging Group:\n", 
           "Variance: ", round(aging_var, 2), "\n",
           "Standard deviation: ", round(aging_sd, 2), "\n\n"))

cat("The aging group deviates more\n")