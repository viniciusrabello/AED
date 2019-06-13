data(diabetes)
View(diabetes)
attach(diabetes)

#Item A

plot(frame, chol, xlab = 'frame', ylab = 'total cholesterol')

#Item B

plot(frame, hdl, xlab = 'frame', ylab = 'high density lipoprotein')

#Item C

idade <- split(diabetes, age >= 50)
ltf <- idade$'FALSE'
fom <- idade$'TRUE'

View(ltf)
View(fom)
plot(ltf$frame, ltf$glyhb, xlab = 'frame',
     ylab = 'glycosolated hemoglobin', main = 'less than 50 years old')
plot(fom$frame, fom$glyhb, xlab = 'frame',
     ylab = 'glycosolated hemoglobin', main = '50 years old or more')

#Item D

table(gender, frame)
prop.table(table(gender, frame), 2)

#Item E

cor(weight, waist, use = 'complete.obs')
plot(weight~waist, diabetes, xlab = 'waist in inches',
     ylab = 'weight in pounds')
abline(lm(weight~waist), diabetes)
summary(lm(weight~waist))

#Item F

kg <- (diabetes$weight)/(2.2046)#lbs para kg
m <- (diabetes$height)*(0.0254)#in para m
IMC <- kg/m^2
cor(IMC, chol, use = 'complete.obs')
plot(IMC~chol, xlab = 'total cholesterol')
abline(lm(IMC~chol), diabetes)
summary(lm(IMC~chol))

#Item G

ltfchol  <- ltf$chol
ltfbp <- ltf$bp.1s
fomchol <- fom$chol
fombp <- fom$bp.1s

cor(chol, bp.1s, use = 'complete.obs')
plot(chol~bp.1s, xlab = 'first distolic blood pressure',
     ylab = 'total cholesterol')
abline(lm(chol~bp.1s), diabetes)
summary(lm(chol~bp.1s))


cor(ltfchol, ltfbp, use = 'complete.obs')
plot(ltfchol~ltfbp, xlab = 'first distolic blood pressure',
     ylab = 'total cholesterol', main ='less than 50 years old')
abline(lm(ltfchol~ltfbp), diabetes)
summary(lm(ltfchol~ltfbp))

cor(fomchol, fombp, use = 'complete.obs')
plot(fomchol~fombp, xlab = 'first distolic blood pressure',
     ylab = 'total cholesterol', main = '50 years old or more')
abline(lm(fomchol~fombp), diabetes)
summary(lm(fomchol~fombp))