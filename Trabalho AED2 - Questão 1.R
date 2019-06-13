data(diabetes)
View(diabetes)
attach(diabetes)

#Item A

plot(frame, chol, xlab = 'frame', ylab = 'chol')

#Item B

plot(frame, hdl, xlab = 'frame', ylab = 'hdl')

#Item C

idade <- split(diabetes, age >= 50)
ltf <- idade$'FALSE'
fom <- idade$'TRUE'

View(ltf)
View(fom)
plot(ltf$frame, ltf$glyhb, xlab = 'frame', ylab = 'glyhb')
plot(fom$frame, fom$glyhb, xlab = 'frame', ylab = 'glyhb')

#Item D

table(gender, frame)

#Item E

cor(weight, waist, use = 'complete.obs')
plot(weight~waist, diabetes)
abline(lm(weight~waist), diabetes)
summary(lm(weight~waist))

#Item F

kg <- (diabetes$weight)/(2.2046)#lbs para kg
m <- (diabetes$height)*(0.0254)#in para m
IMC <- kg/m^2
cor(IMC, chol, use = 'complete.obs')
plot(IMC~chol)
abline(lm(IMC~chol), diabetes)
summary(lm(IMC~chol))

#Item G

ltfchol  <- ltf$chol
ltfbp <- ltf$bp.1s
fomchol <- fom$chol
fombp <- fom$bp.1s

cor(chol, bp.1s, use = 'complete.obs')
plot(chol~bp.1s)
abline(lm(chol~bp.1s), diabetes)
summary(lm(chol~bp.1s))


cor(ltfchol, ltfbp, use = 'complete.obs')
plot(ltfchol~ltfbp)
abline(lm(ltfchol~ltfbp), diabetes)
summary(lm(ltfchol~ltfbp))

cor(fomchol, fombp, use = 'complete.obs')
plot(fomchol~fombp)
abline(lm(fomchol~fombp), diabetes)
summary(lm(fomchol~fombp))