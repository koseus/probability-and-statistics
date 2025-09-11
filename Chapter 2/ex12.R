# sample space
S <- c("ZYF","ZNF","WYF","WNF","SYF","SNF","M")
cat("Sample space: \n")
cat("S = {", paste(S, collapse = ", "), "}\n\n")

# event A: nonmedicated
A <- setdiff(S, "M")
cat("A is the set of nonmedicated subjects: \n")
cat("A = {", paste(A, collapse = ", "), "}\n\n")

# event B: walkers
B <- c("WYF","WNF")
cat("B is the set of walkers: \n")
cat("B = {", paste(B, collapse = ", "), "}\n\n")

# A ∪ B
A_union_B <- union(A, B)
cat("A ∪ B = {", paste(A_union_B, collapse = ", "), "}\n\n")

# A ∩ B
A_intersect_B <- intersect(A, B)
cat("A ∩ B = {", paste(A_intersect_B, collapse = ", "), "}\n")
