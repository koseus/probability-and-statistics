# Sample space: all pairs (x, y)
green <- 1:6
red <- 1:6
S <- expand.grid(x = green, y = red)

# Helper function to print a set in set notation
print_set <- function(df, name) {
  pairs <- apply(df, 1, function(r) paste0("(", r[1], ",", r[2], ")"))
  cat(name, " = {", paste(pairs, collapse = ", "), "}\n")
}

# Event A: sum > 8
A <- S[S$x + S$y > 8, ]
cat("Event A that the sum is greater than 8: \n")
print_set(A, "A")

# Event B: a 2 occurs on either die
B <- S[S$x == 2 | S$y == 2, ]
cat("\nEvent B that a 2 occurs on either die: \n")
print_set(B, "B")

# Event C: green die > 4
C <- S[S$x > 4, ]
cat("\nEvent C that a number greater than 4 comes up on the green die: \n")
print_set(C, "C")

# Intersections
AC <- merge(A, C)
cat("\nThe event A ∩ C: \n")
print_set(AC, "A ∩ C")

AB <- merge(A, B)
cat("\nThe event A ∩ B: \n")
print_set(AB, "A ∩ B")

BC <- merge(B, C)
cat("\nThe event B ∩ C: \n")
print_set(BC, "B ∩ C")


library(VennDiagram)

grid.newpage()
draw.triple.venn(
  area1 = nrow(A), area2 = nrow(B), area3 = nrow(C),
  n12 = nrow(AB), n13 = nrow(AC), n23 = nrow(BC),
  n123 = nrow(Reduce(function(x,y) merge(x,y), list(A,B,C))),
  category = c("A", "B", "C"),
  fill = c("red","green","blue")
)
