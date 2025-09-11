# integers between 1 and 50 divisible by 8
nums <- 1:50
div8 <- nums[nums %% 8 == 0]
cat("The set of integers between 1 and 50 divisible by 8: \n")
cat("S = {", paste(div8, collapse = ", "), "}\n\n")

# coefficients of x^2 + 4x - 5 = 0
a <- 1
b <- 4
c <- -5

# quadratic formula
roots <- (-b + c(1, -1) * sqrt(b^2 - 4*a*c)) / (2*a)

cat("The set S = {x | x2 + 4x − 5 = 0}: \n")
cat("S = {", paste(roots, collapse = ", "), "}\n\n")

# possible outcomes when tossing until a tail or 3 heads
outcomes <- c("T", "HT", "HHT", "HHH")
cat("The set of outcomes when a coin is tossed until a tail or three heads appear: \n")
cat("S =", "{", paste(outcomes, collapse = ", "), "}\n\n")

cat("The set S = {x | x is a continent}: \n")
continents <- c("Africa", "Antarctica", "Asia", "Europe", "North America", "South America", "Australia")
cat("S =", "{", paste(continents, collapse = ", "), "}\n\n")

cat("the set S = {x | 2x − 4 ≥ 0 and x < 1}:\n")
S <- numeric(0)
cat("S =", "{ }", "\n\n")

