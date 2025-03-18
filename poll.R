data <- read.csv("classpoll/responses_rows.csv")[,c(20:32)]

students <- data[data$lecturesopen != 'kulas again', ]

## https://towardsdatascience.com/5-ways-to-effectively-visualize-survey-data-using-r-89928bf08cb2/

library(plotly)

tab <- as.data.frame(descr::freq(students$lab))[-4,]
tab$label <- c("Missing", "Mirror", "Separate")



fig <- plot_ly(tab, labels = ~label, values = ~Percent, type = 'pie')

fig


library(likert)
library(plyr)

descr::freq(students$lab)
