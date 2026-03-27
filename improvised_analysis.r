# Read data
microdata <- read.csv("all_data.csv", header = TRUE)

# Dimensions
cat("Printing the dimensions:\n")
print(dim(microdata))

# First 5 rows
cat("Printing first 5 rows:\n")
print(head(microdata, 5))

# Unique gene symbols
cat("Unique gene symbols:\n")
print(unique(microdata$SYMBOL))

# Summary statistics
cat("Summary of normal1 column:\n")
print(summary(microdata$normal1))

# Histogram of normal2
hist(
  microdata$normal2,
  main = "Histogram of Normal Sample 2",
  xlab = "Expression Level",
  col = "lightblue",
  border = "black"
)

# Subset normal1 values < 2000
sd <- microdata$normal1[microdata$normal1 < 2000]
hist(
  sd,
  main = "Normal1 Expression < 2000",
  xlab = "Expression Level",
  col = "lightgreen",
  border = "black"
)

# Scatter plot between normal1 and normal2
plot(
  microdata$normal1,
  microdata$normal2,
  main = "Normal1 vs Normal2",
  xlab = "Normal1 Expression",
  ylab = "Normal2 Expression",
  pch = 16
)

# Scatter plot with axis limits
plot(
  microdata$normal1,
  microdata$normal2,
  xlim = c(0, 20000),
  ylim = c(0, 10000),
  main = "Normal1 vs Normal2 (Zoomed)",
  xlab = "Normal1 Expression",
  ylab = "Normal2 Expression",
  pch = 16
)

# Filter low-expression genes
filtered_data <- subset(
  microdata,
  normal1 < 2000 & cancer1 < 2000
)

# Mean expression across samples
normal_mean <- rowMeans(
  microdata[, c("normal1", "normal2", "normal3",
                "normal4", "normal5", "normal6", "normal7")],
  na.rm = TRUE
)

cancer_mean <- rowMeans(
  microdata[, c("cancer1", "cancer2", "cancer3",
                "cancer4", "cancer5", "cancer6", "cancer7")],
  na.rm = TRUE
)

# Fold change (avoid division by zero)
fold_change <- cancer_mean / (normal_mean + 1e-6)

# Log2 fold change
log_fold_change <- log2(fold_change)

# Histogram of log fold change
hist(
  log_fold_change,
  main = "Log2 Fold Change Distribution",
  xlab = "Log2 Fold Change",
  col = "salmon",
  border = "black"
)

# Correlation value
correlation <- cor(microdata$normal1, microdata$normal2, use = "complete.obs")
cat("Correlation between normal1 and normal2:", correlation, "\n")

