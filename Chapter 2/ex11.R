# applicants
apps <- c("M1","M2","F1","F2")

# sample space S: ordered without replacement (first = assistant prof, second = instructor)
S_df <- do.call(rbind, lapply(apps, function(a) {
  others <- setdiff(apps, a)
  data.frame(first = a, second = others, stringsAsFactors = FALSE)
}))
S <- apply(S_df, 1, paste0, collapse = "")
cat("Sample space: \n")
cat("S = {", paste(S, collapse = ", "), "}\n\n")

# helper to print sets from vector of strings
print_set <- function(v, name) cat(name, " = {", paste(v, collapse = ", "), "}\n\n")

# define events
is_male <- function(x) substring(x,1,1) == "M"

A_idx <- sapply(S_df$first, is_male)                  # assistant prof is male
B_idx <- (is_male(S_df$first) + is_male(S_df$second)) == 1  # exactly one male
C_idx <- (!is_male(S_df$first)) & (!is_male(S_df$second))   # neither is male

A <- S[A_idx]
B <- S[B_idx]
C <- S[C_idx]

cat("Event A that the position of assistant professor is filled by a male applicant: \n")
print_set(A, "A")   # (b)
cat("Event B that exactly one of the two positions is filled by a male applicant: \n")
print_set(B, "B")   # (c)
cat("Event C that neither position is filled by a male applicant: \n")
print_set(C, "C")   # (d)

# intersections and unions
A_intersect_B <- intersect(A, B)
A_union_C <- union(A, C)
A_and_B <- A_intersect_B

print_set(A_and_B, "A ∩ B")   # (e)
print_set(A_union_C, "A ∪ C") # (f)

# Venn diagram (requires VennDiagram package)
if(requireNamespace("VennDiagram", quietly = TRUE)) {
  library(VennDiagram)
  # counts for diagram
  areaA <- length(A)
  areaB <- length(B)
  areaC <- length(C)
  nAB <- length(intersect(A, B))
  nAC <- length(intersect(A, C))
  nBC <- length(intersect(B, C))
  nABC <- length(Reduce(intersect, list(A, B, C)))
  grid.newpage()
  draw.triple.venn(area1 = areaA, area2 = areaB, area3 = areaC,
                   n12 = nAB, n13 = nAC, n23 = nBC, n123 = nABC,
                   category = c("A","B","C"))
} else {
  message("Install the VennDiagram package to draw the Venn diagram.")
}