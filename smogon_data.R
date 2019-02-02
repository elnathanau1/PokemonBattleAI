# set vars
cutoff = 0.01   # only record pokemon with at least cutoff% usage

# read the data we downloaded
usage_data <- read.table("Temp/gen7ou-0.txt", skip = 5, nrows = 650, header=FALSE, sep="|")

# set column names
colnames(usage_data) <- c("x1", "Rank", "Pokemon", "Usage", "x2", "x3", "x4", "x5", "x6")

# delete extra columns
usage_data$x1 <- NULL
usage_data$x2 <- NULL
usage_data$x3 <- NULL
usage_data$x4 <- NULL
usage_data$x5 <- NULL
usage_data$x6 <- NULL


