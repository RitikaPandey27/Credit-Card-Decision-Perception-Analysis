cred_card

library(dplyr)
str(cred_card)
cred_card %>% distinct(resp_id) %>% nrow()

summary(cred_card$age)
quantile(cred_card$age, 0.05, na.rm=T)
quantile(cred_card$age, 0.1, na.rm=T)
quantile(cred_card$age, 0.25, na.rm=T)
quantile(cred_card$age, 0.5, na.rm=T)
quantile(cred_card$age, 0.75, na.rm=T)
quantile(cred_card$age, 0.9, na.rm=T)
quantile(cred_card$age, 0.95, na.rm=T)
quantile(cred_card$age, c(0.5,0.1,0.25,0.95), na.rm=T)
mean(cred_card$age, na.rm=T)
sd(cred_card$age, na.rm=T)
max(cred_card$age, na.rm=T)
min(cred_card$age, na.rm=T)
length(cred_card$age)
median(cred_card$age, na.rm=T)


library(ggplot2)
cred_card %>% ggplot(aes(y=age)) + geom_boxplot()
cred_card %>% ggplot(aes(x=age)) + geom_histogram(fill="yellow",color="black")
data.frame(table(cred_card$age))
data2 <- cred_card %>% filter(age<100)
