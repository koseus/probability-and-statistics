# sample space
rivers <- c("F", "N")
S <- expand.grid(R1 = rivers, R2 = rivers, R3 = rivers)
S <- apply(S, 1, paste0, collapse = "")
cat("Sample space S: \n")
cat("S =", "{", paste(S, collapse = ", "), "}\n\n")

# event E: at least 2 F
E <- S[sapply(strsplit(S, ""), function(x) sum(x == "F") >= 2)]
cat("Event E that at least two of the rivers are safe for fishing: \n")
cat("E =", "{", paste(E, collapse = ", "), "}\n\n")

# event G: specified points
G <- c("FFF", "NFF", "FFN", "NFN")
cat("G =", "{", paste(G, collapse = ", "), "}\n")
cat("G = {(R1, R2, R3) ∈ S ∣ R2 = F} ")
