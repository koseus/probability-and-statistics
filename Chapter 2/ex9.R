source("ex5.R")

A <- S[substr(S,1,1) %in% c("1","2")]
cat("\nThe event A that a number less than 3 occurs on the die: \n")
cat("A = {", paste(A, collapse = ", "), "}\n\n")

B <- S[grepl("TT$", S)]
cat("The event B that two tails occur: \n")
cat("B = {", paste(B, collapse = ", "), "}\n\n")

A_comp <- setdiff(S, A)
cat("The event A′: \n")
cat("A' = {", paste(A_comp, collapse = ", "), "}\n\n")

A_comp_B <- intersect(A_comp, B)
cat("The event A′ ∩ B : \n")
cat("A' ∩ B = {", paste(A_comp_B, collapse = ", "), "}\n\n")

A_union_B <- union(A, B)
cat("The event A ∪ B: \n")
cat("A ∪ B = {", paste(A_union_B, collapse = ", "), "}\n\n")


