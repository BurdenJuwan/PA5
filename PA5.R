# PA5
# Juwan Burden
# 9/27/26
# Display function parameter examples in a data frame

# Create the data frame
arg_matching <- data.frame(
  "Type" = c("Partial", "Positional", "Exact"),
  "Example" = c(
    paste0(
      "cat(1:10, fill = TRUE, labels = c('Numbers: '))"
    ),
    paste0(
      "cat('Numbers: ', 1:10)"
    ),
    paste0(
      "cat(1:10, file = '', sep = ' ',
      fill = TRUE, labels = c('Numbers: '), append = FALSE)"
    )
  )
)

# Write to CSV file
write.csv(x = arg_matching, file = 'cat-argmatching.csv', row.names = FALSE)

# Delete from global environment
rm(arg_matching)

# Read CSV file to recreate data frame
arg_matching <- read.csv(file = 'cat-argmatching.csv')

# Display the dataframe; use View for readability
View(arg_matching)
