S <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
A <- c(0, 2, 4, 6, 8)
B <- c(1, 3, 5, 7, 9)
C <- c(2, 3, 4, 5)
D <- c(1, 6, 7)

cat("S = {", paste(S, collapse = ", "), "}\n\n")
cat("A = {", paste(A, collapse = ", "), "}\n\n")
cat("B = {", paste(B, collapse = ", "), "}\n\n")
cat("C = {", paste(C, collapse = ", "), "}\n\n")
cat("D = {", paste(D, collapse = ", "), "}\n\n")

A_union_C <- union(A, C)
cat("A ∪ C = {", paste(A_union_C, collapse = ", "), "}\n\n")

A_intersect_B <- intersect(A, B)
cat("A ∩ B = {", paste(A_intersect_B, collapse = ", "), "}\n\n")

C_comp <- setdiff(S, C)
cat("C′ = {", paste(C_comp, collapse = ", "), "}\n\n")

C_comp_intersect_D_union_B <- union(intersect(C_comp, D), B)
cat("(C′ ∩ D) ∪ B = {", paste(C_comp_intersect_D_union_B, collapse = ", "), "}\n\n")

S_intersect_C_comp <- setdiff(S, intersect(S, C))
cat("(S ∩ C)′ = {", paste(S_intersect_C_comp, collapse = ", "), "}\n\n")

A_intersect_C <- intersect(A, C)
A_intersect_C_intersect_D_comp <- intersect(A_intersect_C, setdiff(S, D))
cat("A ∩ C ∩ D′ = {", paste(A_intersect_C_intersect_D_comp, collapse = ", "), "}\n\n")

