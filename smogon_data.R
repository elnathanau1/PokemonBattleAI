library(jsonlite)

# set vars
cutoff = 0.01   # only record pokemon with at least cutoff% usage

# read the data we downloaded
usage_data <- read.table("Temp/gen7ou-0.txt", skip = 5, nrows = 750, header=FALSE, sep="|", quote="")

# set column names
colnames(usage_data) <- c("x1", "Rank", "Pokemon", "Usage", "x2", "x3", "x4", "x5", "x6")

# delete extra columns
usage_data$x1 <- NULL
usage_data$x2 <- NULL
usage_data$x3 <- NULL
usage_data$x4 <- NULL
usage_data$x5 <- NULL
usage_data$x6 <- NULL

# remove the '%' and make a float
usage_data$Usage <- as.numeric(sub("%", "", usage_data$Usage))
usage_data <- usage_data[!(usage_data$Usage < cutoff), ]

# returns string w/o leading or trailing whitespace
trim <- function (x) gsub("^\\s+|\\s+$", "", x)

usage_data$Pokemon <- trim(usage_data$Pokemon)

# convert to JSON for python
# smogon_json <- toJSON(usage_data)
write_json(usage_data, "Temp/smogon.json")

