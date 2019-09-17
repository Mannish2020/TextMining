spam.raw = read.csv2("spam.csv", sep = ",", stringsAsFactors = F)

#dirpath = file.path("E:/Documents/Manish/RProjects/Banking/data")
#spam.raw = read.csv2(paste0(dirpath,'/',list.files(dirpath)[7]),
                    # sep = ",", stringsAsFactors = F)

require(dplyr)
require(ggplot2)
require(caret)

spam.raw = spam.raw[,1:2]
names(spam.raw) = c("Label", "Text")

# Missing data
length(which(!complete.cases(spam.raw)))

# Factorize class label
spam.raw$Label = as.factor(spam.raw$Label)

# Distribution of class labels
prop.table(table(spam.raw$Label))

# Create a new feature for length of messages
spam.raw$TextLength = nchar(spam.raw$Text)
summary(spam.raw$TextLength)

g = ggplot(data = spam.raw, aes(x = TextLength, fill = Label))
g = g + theme_bw() + geom_histogram(binwidth = 5) +
  labs(y = "Text Count", x = "Length of Text", 
       title = "Distribution of Text Lengths with Class Labels")
