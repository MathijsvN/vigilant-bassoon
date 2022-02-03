library(readxl)

excel <- read_excel("Excel_Data_ENCHANT_RB_JH_2-12.xlsx")
#View(Excel_Data_ENCHANT_RB_JH_2_12)
data <- data.frame(matrix(ncol = 0, nrow = nrow(excel)))

data$samplename <-  sapply(excel[, 1], function(x) substring(x, nchar(x)-1) )

data$letter <- substr(data$samplename, 1, 1)
data$number <- substr(data)

A <- strsplit(as.character(data$samplename[1:3]), "", fixed = TRUE)

