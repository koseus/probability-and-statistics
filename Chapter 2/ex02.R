# function to check if a point is in S
is_in_S <- function(x, y) {
  x >= 0 & y >= 0 & (x^2 + y^2 <= 3^2)
}

cat("The sample space S consisting of all points in the first quadrant inside a
circle of radius 3 with center at the origin: \n")
cat("S = { (x, y) | x >= 0, y >= 0, x^2 + y^2 <= 9 }\n")
