company_A <- c(9.3, 8.8, 6.8, 8.7, 8.5, 6.7, 8.0, 6.5, 9.2, 7.0)
company_B <- c(11.0, 9.8, 9.9, 10.2, 10.1, 9.7, 11.0, 11.1, 10.2, 9.6)

company_A_mean <- mean(company_A)
company_B_mean <- mean(company_B)

company_A_var <- var(company_A)
company_B_var <- var(company_B)

cat("Mean value for Company A: ", company_A_mean, "\n")
cat("Mean value for Company B: ", company_B_mean, "\n\n")

cat("Standard deviation for Company A: ", company_A_var, "\n")
cat("Standard deviation for Company B: ", company_B_var, "\n\n")

cat("Company B products have higher flexibility and more stable values")