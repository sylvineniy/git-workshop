# Main analysis script

source("utils.R")

# Simulate a dataset for analysis
set.seed(12345)
data_points <- rnorm(100, mean = 50, sd = 10)

# Calculate summary statistics
mean_val <- mean(data_points)
se_val <- sem(data_points)

# Print results
cat("Analysis Results:\n")
cat(sprintf("Mean: %.2f\n", mean_val))
cat(sprintf("Standard Error: %.2f\n", se_val))

# Generate a basic plot (saved to file)
pdf("distribution_plot.pdf")
hist(data_points, 
     main = "Distribution of Simulated Data", 
     xlab = "Value", 
     col = "skyblue", 
     border = "white")
dev.off()
