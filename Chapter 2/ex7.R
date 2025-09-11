# generate S1
library(gtools)  # for permutations with repetition
students <- c("M", "F")
S1 <- permutations(n = 2, r = 4, v = students, repeats.allowed = TRUE)
S1 <- apply(S1, 1, paste0, collapse = "")
cat("S1 = {", paste(S1, collapse = ", "), "}\n")

# generate S2
# count number of females in each element of S1
num_females <- sapply(S1, function(x) sum(strsplit(x, "")[[1]] == "F"))
S2 <- sort(unique(num_females))
cat("S2 = {", paste(S2, collapse = ", "), "}\n")
