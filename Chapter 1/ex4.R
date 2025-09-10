company_A <- c(9.3, 8.8, 6.8, 8.7, 8.5, 6.7, 8.0, 6.5, 9.2, 7.0)
company_B <- c(11.0, 9.8, 9.9, 10.2, 10.1, 9.7, 11.0, 11.1, 10.2, 9.6)

company_A_mean <- mean(company_A)
company_B_mean <- mean(company_B)

company_A_median <- median(company_A)
company_B_median <- median(company_B)

cat("Mean value for Company A is ", company_A_mean, "\n")
cat("Mean value for Company B is ", company_B_mean, "\n")

cat("Median value for Company A is ", company_A_median, "\n")
cat("Median value for Company B is ", company_B_median, "\n")

plot(company_A, type="o", col="blue", ylim=c(min(c(company_A, company_B)), max(c(company_A, company_B))),
     xlab="Instance", ylab="Flexibility", main="Company A vs B")

lines(company_B, type="o", col="red")

legend("topright", legend=c("Company A", "Company B"), col=c("blue", "red"), lty=1, pch=1)

cat("Products of Company A have higher flexibility\n")