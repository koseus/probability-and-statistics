S <- c("copper", "sodium", "nitrogen", "potassium", "uranium", "oxygen", "zinc")
A <- c("copper", "sodium", "zinc")
B <- c("sodium", "nitrogen", "potassium")
C <- c("oxygen")

cat("S = {", paste(S, collapse = ", "), "}\n")
cat("A = {", paste(A, collapse = ", "), "}\n")
cat("B = {", paste(B, collapse = ", "), "}\n")
cat("c = {", paste(C, collapse = ", "), "}\n\n")

A_comp <- setdiff(S, A)
cat("A′ = {", paste(A_comp, collapse = ", "), "}\n\n")

A_union_C <- union(A, C)
cat("A ∪ C = {", paste(A_union_C, collapse = ", "), "}\n\n")

B_comp <- setdiff(S, B)
C_comp <- setdiff(S, C)
A_int_B_comp_union_C_comp <- union(intersect(A, B_comp), C_comp)
cat("(A ∩ B′) ∪ C′ = {", paste(A_int_B_comp_union_C_comp, collapse = ", "), "}\n\n")

B_comp_int_C_comp <- intersect(B_comp, C_comp)
cat("B′ ∩ C′ = {", paste(B_comp_int_C_comp, collapse = ", "), "}\n\n")

A_int_B_int_C <- intersect(intersect(A, B), C)
cat("A ∩ B ∩ C = {", paste(A_int_B_int_C, collapse = ", "), "}\n\n")

A_comp <- setdiff(S, A)
A_comp_union_B_int_A_comp_union_C <- intersect(union(A_comp, B_comp), intersect(A_comp, C))
cat("(A′ ∪ B′) ∩ (A′ ∩ C) = {", paste(A_comp_union_B_int_A_comp_union_C, collapse = ", "), "}\n\n")
