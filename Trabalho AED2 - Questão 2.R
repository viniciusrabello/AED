data(hsb)
View(hsb)
attach(hsb)

#Item A

table(prog, gender)
prop.table(table(prog, gender), 2)
table(prog, schtyp)
prop.table(table(prog, schtyp), 2)
table(prog, ses)
prop.table(table(prog, ses), 2)

#Item B

avrg <- (read+write+math+science+socst)/5
plot(gender, avrg, xlab = 'gender', ylab = 'average score')
plot(schtyp, avrg, xlab = 'school type', ylab = 'average score')
plot(prog, avrg, xlab = 'choice of high school program', ylab = 'average score')
plot(ses, avrg, xlab = 'socioeconomic class', ylab = 'average score')

#Item C

plot(gender, write, xlab = 'gender', ylab = 'writing score')

#Item D

plot(gender, read, xlab = 'gender', ylab = 'reading score')

#Item E

plot(prog, math, xlab = 'choice of high school program', ylab = 'math score')

#Item F

scores <- data.frame(c(read), c(write), c(math), c(science), c(socst))
View(scores)
cor(scores)

#Item G

plot(math, science, xlab = 'math score', ylab = 'science score')
abline(lm(science~math), hsb)
summary(lm(science~math))

#Item H

class <- split(hsb, ses)
high <- class$high
low <- class$low
middle <- class$middle

plot(high$math, high$science, xlab = 'math score',
     ylab = 'science score', main = 'socioeconomic class: high')
abline(lm(high$science~high$math), high)
summary(lm(high$science~high$math))

plot(low$math, low$science, xlab = 'math score',
     ylab = 'science score', main = 'socioeconomic class: low')
abline(lm(low$science~low$math), low)
summary(lm(low$science~low$math))

plot(middle$math, middle$science, xlab = 'math score',
     ylab = 'science score', main = 'socioeconomic class: middle')
abline(lm(middle$science~middle$math), middle)
summary(lm(middle$science~middle$math))
