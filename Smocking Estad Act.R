smocking<-read.table(file.choose(),FALSE)
colnames(smocking)<-c("age","status","population","death")
attach(smocking)

plot(age,death)
plot(age,log(death))
plot(population,log(death))
plot(status,log(death))

ajuste1 <- glm(death~ age, family = poisson(link="log"))
summary(ajuste1)

ajuste3<- glm(death~age+status+population,
              family = poisson(link="log"))
summary(ajuste3)

residuals(ajuste3)
plot(residuals(ajuste3),fitted.values(ajuste3))
