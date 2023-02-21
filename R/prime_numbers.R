prime_numbers <- function(){
  num <- 100L
  prime_nums <- c()
  for (i in 2:num) {
    is_prime <- TRUE
    for (j in prime_nums) {
      if (j > sqrt(i)) {
        break
      }
      if (i %% j == 0) {
        is_prime <- FALSE
        break
      }
    }
    if (is_prime) {
      prime_nums <- c(prime_nums, i)
    }
  }
  # print the prime numbers
  return(prime_nums)
}

