# die outcomes
die <- 1:6

# function to generate coin sequences
coin_seq <- function(n) {
  if(n %% 2 == 0) {  # even
    return(c("H","T"))
  } else {           # odd
    coins <- c("H","T")
    return(as.vector(outer(coins, coins, paste0)))
  }
}

# generate sample space
S <- unlist(lapply(die, coin_seq))
S <- paste0(rep(die, times = sapply(die, function(d) length(coin_seq(d)))), 
            unlist(lapply(die, coin_seq)))

cat("S = {", paste(S, collapse = ", "), "}\n")