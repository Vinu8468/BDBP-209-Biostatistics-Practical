#!/usr/bin/env Rscript

# Custom One-Sample t-test function
my_t_test <- function(x, mu = 0, alpha = 0.05,
                      alternative = c("two.sided", "greater", "less")) {
  
  # Match the hypothesis argument
  alternative <- match.arg(alternative)
  
  # Basic statistics
  n <- length(x)          # sample size
  xbar <- mean(x)         # sample mean
  s <- sd(x)              # sample standard deviation
  
  # Compute t-statistic
  t_stat <- (xbar - mu) / (s / sqrt(n))
  df <- n - 1             # degrees of freedom
  
  # Compute critical t-value
  if (alternative == "two.sided") {
    t_critical <- qt(1 - alpha/2, df)
  } else {
    t_critical <- qt(1 - alpha, df)
  }
  
  # Compute p-value based on hypothesis
  if (alternative == "two.sided") {
    p_value <- 2 * (1 - pt(abs(t_stat), df))
  } else if (alternative == "greater") {
    p_value <- 1 - pt(t_stat, df)
  } else {
    p_value <- pt(t_stat, df)
  }
  
  # Compute confidence interval
  if (alternative == "two.sided") {
    margin <- t_critical * (s / sqrt(n))
    ci_lower <- xbar - margin
    ci_upper <- xbar + margin
  } else if (alternative == "greater") {
    ci_lower <- xbar - t_critical * (s / sqrt(n))
    ci_upper <- Inf
  } else {
    ci_lower <- -Inf
    ci_upper <- xbar + t_critical * (s / sqrt(n))
  }
  
  # Decision: reject or fail to reject null hypothesis
  reject <- p_value < alpha
  
  # Store results in a list
  result <- list(
    sample_mean = xbar,
    t_statistic = t_stat,
    df = df,
    p_value = p_value,
    t_critical = t_critical,
    conf_interval = c(lower = ci_lower, upper = ci_upper),
    alternative = alternative,
    alpha = alpha,
    reject_null = reject
  )
  
  # Assign class for custom print method
  class(result) <- "my_t_test"
  
  return(result)
}

# Custom print method for cleaner output
print.my_t_test <- function(obj) {
  cat("\nOne Sample t-test\n")
  cat("------------------\n")
  cat("Sample Mean:", obj$sample_mean, "\n")
  cat("t-statistic =", obj$t_statistic, ", df =", obj$df, "\n")
  cat("p-value =", obj$p_value, "\n")
  cat("Alternative hypothesis:", obj$alternative, "\n")
  cat("Confidence Interval:\n")
  print(obj$conf_interval)
  cat("Reject Null Hypothesis:", obj$reject_null, "\n\n")
}

# Command-line argument handling
args <- commandArgs(trailingOnly = TRUE)

# If arguments are provided, run the test
if (length(args) > 0) {
  
  # Input format:
  # Rscript my_t_test.R "1,2,3,4,5" 3 0.05 two.sided
  
  # Convert input string to numeric vector
  x_input <- as.numeric(strsplit(args[1], ",")[[1]])
  
  # Optional arguments with defaults
  mu <- ifelse(length(args) >= 2, as.numeric(args[2]), 0)
  alpha <- ifelse(length(args) >= 3, as.numeric(args[3]), 0.05)
  alternative <- ifelse(length(args) >= 4, args[4], "two.sided")
  
  # Run t-test
  result <- my_t_test(x_input, mu, alpha, alternative)
  
  # Print result
  print(result)
}
