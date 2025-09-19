# Load packages
set.seed(123)  # for reproducibility

# Number of samples
n <- 1000

# Simulate data
db <- data.frame(
  norm   = rnorm(n, mean = 0, sd = 1),             # Normal(0,1)
  lnorm  = rlnorm(n, meanlog = 0, sdlog = 1),      # Lognormal(0,1)
  gamma  = rgamma(n, shape = 2, scale = 2),        # Gamma(2,2)
  exp    = rexp(n, rate = 1),                      # Exponential(1)
  cauchy = rcauchy(n, location = 0, scale = 1),    # Cauchy(0,1)
  t      = rt(n, df = 1),                           # Student’s t (df=5)
  Categ  = sample(LETTERS[1:2], n, replace = TRUE)  # Categorical (A-E)
    )

# Save to CSV
write.csv(db, "DisttributionTest.csv", row.names = FALSE)

# Check
head(db)
