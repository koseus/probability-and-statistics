control <- c(7, 3, -4, 14, 2, 5, 22, -7, 9, 5)
treatment <- c(-6, 5, 9, 4, 4, 12, 37, 5, 3, 3)

control_var <- var(control)
control_sd <- sd(control)

treatment_var <- var(treatment)
treatment_sd <- sd(treatment)

cat(paste0("Control Group\n", 
           "Variance: ", round(control_var, 2), "\n",
           "Standard deviation: ", round(control_sd, 2), "\n\n",
           "Treatment Group\n",
           "Variance: ", round(treatment_var, 2), "\n",
           "Standard deviation: ", round(treatment_sd, 2), "\n"))
