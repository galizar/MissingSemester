#!/usr/bin/env Rscript
f <- file("stdin")
open(f)
x <- readLines(f, n=10)

df <- data.frame()

for (i in 2:length(x)) {
    data <- read.table(textConnection(x[[i]]))
    names(data) <- c("count", "combination")
    df <- rbind(df, data)
}

print(df)

