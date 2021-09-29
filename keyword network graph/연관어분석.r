install.packages("jsonlite")
install.packages("https://cran.rstudio.com/bin/windows/contrib/3.4/KoNLP_0.80.1.zip", repos = NULL)

data <- read.csv("C:\Users\admin\Desktop\신문기사모음(9.17)(utf8).csv", header=T, encoding = "UTF-8")
View(data)

text <- data$body
text[1]

lword <- Map(extractNoun, text)   # text에서 명사단위 추출
length(lword)   # 라인별 명사 개수