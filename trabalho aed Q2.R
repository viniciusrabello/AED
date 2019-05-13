barplot(table(alunos$MATERIA),
        ylab = "Número de Alunos", xlab = "Matéria Favorita",
        col = "darkred")

slices <- (table(alunos$MATERIA))
lbls <- c("Biologia","Ed.Física","Física","Geografia",
            "História","Matemática","Português","Química")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) 
lbls <- paste(lbls,"%",sep="") 
pie(slices, labels = lbls)

barplot(table(alunos$OPINIAO),
        ylab = "Número de Alunos",
        xlab = "Opinião à respeito da Escola",
        col = "darkgreen")

slices <- (table(alunos$OPINIAO))
lbls <- c("Bom","Ótima","Regular","Ruim")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) 
lbls <- paste(lbls,"%",sep="") 
pie(slices, labels = lbls)

alunos.nota <- cut(alunos$NOTA, c(0, 1, 2, 3, 4, 5,
                                  6, 7, 8, 9, 10))

barplot(table(alunos.nota),
        names.arg = c("0 a 1", "1 a 2", "2 a 3", "3 a 4", "4 a 5",
                      "5 a 6", "6 a 7", "7 a 8", "8 a 9", "9 a 10"),
        xlab = "Nota Média no Ano Letivo",
        ylab = "Número de Alunos",
        col = "darkblue")

slices <- (table(alunos.nota))
lbls <- c("0 a 1","1 a 2","2 a 3","3 a 4",
          "4 a 5","5 a 6","6 a 7","7 a 8",
          "8 a 9","9 a 10")
pie(slices, labels = lbls)

mean(alunos$NOTA)
sd(alunos$NOTA)
max(alunos$NOTA)
min(alunos$NOTA)
median(alunos$NOTA)
quantile(alunos$NOTA)

alunos.tempo <- cut(alunos$TEMPO, c(0, 1, 2, 3, 4, 5,
                                    6, 7, 8, 9, 10, 11,
                                    12, 13, 14, 15, 16, 17))

barplot(table(alunos.tempo),
        names.arg = c("0 a 1", "1 a 2", "2 a 3", "3 a 4", "4 a 5",
                      "5 a 6", "6 a 7", "7 a 8", "8 a 9", "9 a 10",
                      "10 a 11", "11 a 12", "12 a 13", "13 a 14",
                      "14 a 15", "15 a 16", "16 a 17"),
        xlab = "Tempo dedicado à estudo semanalmente fora da Escola (em horas)",
        ylab = "Número de Alunos",
        col = "yellow")

slices <- (table(alunos.tempo))
lbls <- c("0 a 1", "1 a 2", "2 a 3", "3 a 4", "4 a 5",
          "5 a 6", "6 a 7", "7 a 8", "8 a 9", "9 a 10",
          "10 a 11", "11 a 12", "12 a 13", "13 a 14",
          "14 a 15")
pie(slices, labels = lbls,radius = 1)

mean(alunos$TEMPO)
sd(alunos$TEMPO)
max(alunos$TEMPO)
min(alunos$TEMPO)
median(alunos$TEMPO)
quantile(alunos$TEMPO)

dados_split <- split(alunos,alunos$MATERIA)
alunos_bio <- dados_split$Biologia
alunos_edf <- dados_split$`Ed. Física`
alunos_fis <- dados_split$Física
alunos_geo <- dados_split$Geografia
alunos_his <- dados_split$História
alunos_mat <- dados_split$Matemática
alunos_por <- dados_split$Português
alunos_qui <- dados_split$Química

alunos_bio.nota <- cut(alunos_bio$NOTA, c(0, 1, 2, 3, 4, 5,
                                          6, 7, 8, 9, 10))
alunos_edf.nota <- cut(alunos_edf$NOTA, c(0, 1, 2, 3, 4, 5,
                                          6, 7, 8, 9, 10))
alunos_fis.nota <- cut(alunos_fis$NOTA, c(0, 1, 2, 3, 4, 5,
                                          6, 7, 8, 9, 10))
alunos_geo.nota <- cut(alunos_geo$NOTA, c(0, 1, 2, 3, 4, 5,
                                          6, 7, 8, 9, 10))
alunos_his.nota <- cut(alunos_his$NOTA, c(0, 1, 2, 3, 4, 5,
                                          6, 7, 8, 9, 10))
alunos_mat.nota <- cut(alunos_mat$NOTA, c(0, 1, 2, 3, 4, 5,
                                          6, 7, 8, 9, 10))
alunos_por.nota <- cut(alunos_por$NOTA, c(0, 1, 2, 3, 4, 5,
                                          6, 7, 8, 9, 10))
alunos_qui.nota <- cut(alunos_qui$NOTA, c(0, 1, 2, 3, 4, 5,
                                          6, 7, 8, 9, 10))


barplot(table(alunos_biologia$OPINIAO),
        col = "darkgreen",
        ylab = "Número de Alunos",
        xlab = "Opinião à respeito da Escola")

barplot(table(alunos_edf$OPINIAO),
        col = "yellow",
        ylab = "Número de Alunos",
        xlab = "Opinião à respeito da Escola")

barplot(table(alunos_fis$OPINIAO),
        ylab = "Número de Alunos",
        xlab = "Opinião à respeito da Escola")

barplot(table(alunos_geo$OPINIAO),
        col = "blue",
        ylab = "Número de Alunos",
        xlab = "Opinião à respeito da Escola")

barplot(table(alunos_his$OPINIAO),
        col = "brown",
        ylab = "Número de Alunos",
        xlab = "Opinião à respeito da Escola")

barplot(table(alunos_mat$OPINIAO),
        col = "darkred",
        ylab = "Número de Alunos",
        xlab = "Opinião à respeito da Escola")

barplot(table(alunos_por$OPINIAO),
        col = "lightblue",
        ylab = "Número de Alunos",
        xlab = "Opinião à respeito da Escola")

barplot(table(alunos_qui$OPINIAO),
        col = "red",
        ylab = "Número de Alunos",
        xlab = "Opinião à respeito da Escola")

barplot(table(alunos_bio.nota),
        col = "darkgreen",
        ylab = "Número de Alunos",
        xlab = "Nota Média no Ano Letivo",
        names.arg = c("0 a 1","1 a 2","2 a 3","3 a 4",
                      "4 a 5","5 a 6","6 a 7","7 a 8",
                      "8 a 9","9 a 10"))

barplot(table(alunos_edf.nota),
        col = "yellow",
        ylab = "Número de Alunos",
        xlab = "Nota Média no Ano Letivo",
        names.arg = c("0 a 1","1 a 2","2 a 3","3 a 4",
                      "4 a 5","5 a 6","6 a 7","7 a 8",
                      "8 a 9","9 a 10"))

barplot(table(alunos_fis.nota),
        ylab = "Número de Alunos",
        xlab = "Nota Média no Ano Letivo",
        names.arg = c("0 a 1","1 a 2","2 a 3","3 a 4",
                      "4 a 5","5 a 6","6 a 7","7 a 8",
                      "8 a 9","9 a 10"))

barplot(table(alunos_geo.nota),
        col = "blue",
        ylab = "Número de Alunos",
        xlab = "Nota Média no Ano Letivo",
        names.arg = c("0 a 1","1 a 2","2 a 3","3 a 4",
                      "4 a 5","5 a 6","6 a 7","7 a 8",
                      "8 a 9","9 a 10"))

barplot(table(alunos_his.nota),
        col = "brown",
        ylab = "Número de Alunos",
        xlab = "Nota Média no Ano Letivo",
        names.arg = c("0 a 1","1 a 2","2 a 3","3 a 4",
                      "4 a 5","5 a 6","6 a 7","7 a 8",
                      "8 a 9","9 a 10"))

barplot(table(alunos_mat.nota),
        col = "darkred",
        ylab = "Número de Alunos",
        xlab = "Nota Média no Ano Letivo",
        names.arg = c("0 a 1","1 a 2","2 a 3","3 a 4",
                      "4 a 5","5 a 6","6 a 7","7 a 8",
                      "8 a 9","9 a 10"))

barplot(table(alunos_por.nota),
        col = "lightblue",
        ylab = "Número de Alunos",
        xlab = "Nota Média no Ano Letivo",
        names.arg = c("0 a 1","1 a 2","2 a 3","3 a 4",
                      "4 a 5","5 a 6","6 a 7","7 a 8",
                      "8 a 9","9 a 10"))

barplot(table(alunos_qui.nota),
        col = "red",
        ylab = "Número de Alunos",
        xlab = "Nota Média no Ano Letivo",
        names.arg = c("0 a 1","1 a 2","2 a 3","3 a 4",
                       "4 a 5","5 a 6","6 a 7","7 a 8",
                       "8 a 9","9 a 10"))

alunos_bio.tempo <- cut(alunos_bio$TEMPO, c(0, 1, 2, 3, 4, 5,
                                            6, 7, 8, 9, 10, 11,
                                            12, 13, 14, 15, 16, 17))
alunos_edf.tempo <- cut(alunos_edf$TEMPO, c(0, 1, 2, 3, 4, 5,
                                            6, 7, 8, 9, 10, 11,
                                            12, 13, 14, 15, 16, 17))
alunos_fis.tempo <- cut(alunos_fis$TEMPO, c(0, 1, 2, 3, 4, 5,
                                            6, 7, 8, 9, 10, 11,
                                            12, 13, 14, 15, 16, 17))
alunos_geo.tempo <- cut(alunos_geo$TEMPO, c(0, 1, 2, 3, 4, 5,
                                            6, 7, 8, 9, 10, 11,
                                            12, 13, 14, 15, 16, 17))
alunos_his.tempo <- cut(alunos_his$TEMPO, c(0, 1, 2, 3, 4, 5,
                                            6, 7, 8, 9, 10, 11,
                                            12, 13, 14, 15, 16, 17))
alunos_mat.tempo <- cut(alunos_mat$TEMPO, c(0, 1, 2, 3, 4, 5,
                                            6, 7, 8, 9, 10, 11,
                                            12, 13, 14, 15, 16, 17))
alunos_por.tempo <- cut(alunos_por$TEMPO, c(0, 1, 2, 3, 4, 5,
                                            6, 7, 8, 9, 10, 11,
                                            12, 13, 14, 15, 16, 17))
alunos_qui.tempo <- cut(alunos_qui$TEMPO, c(0, 1, 2, 3, 4, 5,
                                            6, 7, 8, 9, 10, 11,
                                            12, 13, 14, 15, 16, 17))

barplot(table(alunos_bio.tempo),
        col = "darkgreen",
        ylab = "Número de Alunos",
        xlab = "Tempo dedicado à estudo semanalmente fora da Escola (em horas)",
        names.arg = c("0 a 1", "1 a 2", "2 a 3", "3 a 4", "4 a 5",
                      "5 a 6", "6 a 7", "7 a 8", "8 a 9", "9 a 10",
                      "10 a 11", "11 a 12", "12 a 13", "13 a 14",
                      "14 a 15", "15 a 16", "16 a 17"))

barplot(table(alunos_edf.tempo),
        col = "yellow",
        ylab = "Número de Alunos",
        xlab = "Tempo dedicado à estudo semanalmente fora da Escola (em horas)",
        names.arg = c("0 a 1", "1 a 2", "2 a 3", "3 a 4", "4 a 5",
                      "5 a 6", "6 a 7", "7 a 8", "8 a 9", "9 a 10",
                      "10 a 11", "11 a 12", "12 a 13", "13 a 14",
                      "14 a 15", "15 a 16", "16 a 17"))

barplot(table(alunos_fis.tempo),
        ylab = "Número de Alunos",
        xlab = "Tempo dedicado à estudo semanalmente fora da Escola (em horas)",
        names.arg = c("0 a 1", "1 a 2", "2 a 3", "3 a 4", "4 a 5",
                      "5 a 6", "6 a 7", "7 a 8", "8 a 9", "9 a 10",
                      "10 a 11", "11 a 12", "12 a 13", "13 a 14",
                      "14 a 15", "15 a 16", "16 a 17"))

barplot(table(alunos_geo.tempo),
        col = "blue",
        ylab = "Número de Alunos",
        xlab = "Tempo dedicado à estudo semanalmente fora da Escola (em horas)",
        names.arg = c("0 a 1", "1 a 2", "2 a 3", "3 a 4", "4 a 5",
                      "5 a 6", "6 a 7", "7 a 8", "8 a 9", "9 a 10",
                      "10 a 11", "11 a 12", "12 a 13", "13 a 14",
                      "14 a 15", "15 a 16", "16 a 17"))

barplot(table(alunos_his.tempo),
        col = "brown",
        ylab = "Número de Alunos",
        xlab = "Tempo dedicado à estudo semanalmente fora da Escola (em horas)",
        names.arg = c("0 a 1", "1 a 2", "2 a 3", "3 a 4", "4 a 5",
                      "5 a 6", "6 a 7", "7 a 8", "8 a 9", "9 a 10",
                      "10 a 11", "11 a 12", "12 a 13", "13 a 14",
                      "14 a 15", "15 a 16", "16 a 17"))

barplot(table(alunos_mat.tempo),
        col = "darkred",
        ylab = "Número de Alunos",
        xlab = "Tempo dedicado à estudo semanalmente fora da Escola (em horas)",
        names.arg = c("0 a 1", "1 a 2", "2 a 3", "3 a 4", "4 a 5",
                      "5 a 6", "6 a 7", "7 a 8", "8 a 9", "9 a 10",
                      "10 a 11", "11 a 12", "12 a 13", "13 a 14",
                      "14 a 15", "15 a 16", "16 a 17"))

barplot(table(alunos_por.tempo),
        col = "lightblue",
        ylab = "Número de Alunos",
        xlab = "Tempo dedicado à estudo semanalmente fora da Escola (em horas)",
        names.arg = c("0 a 1", "1 a 2", "2 a 3", "3 a 4", "4 a 5",
                      "5 a 6", "6 a 7", "7 a 8", "8 a 9", "9 a 10",
                      "10 a 11", "11 a 12", "12 a 13", "13 a 14",
                      "14 a 15", "15 a 16", "16 a 17"))

barplot(table(alunos_qui.tempo),
        col = "red",
        ylab = "Número de Alunos",
        xlab = "Tempo dedicado à estudo semanalmente fora da Escola (em horas)",
        names.arg = c("0 a 1", "1 a 2", "2 a 3", "3 a 4", "4 a 5",
                      "5 a 6", "6 a 7", "7 a 8", "8 a 9", "9 a 10",
                      "10 a 11", "11 a 12", "12 a 13", "13 a 14",
                      "14 a 15", "15 a 16", "16 a 17"))

dados_split <- split(alunos,alunos$OPINIAO)
alunos_boa <- dados_split$Boa
alunos_otima <- dados_split$Ótima
alunos_regular <- dados_split$Regular
alunos_ruim <- dados_split$Ruim

barplot(table(alunos_otima$MATERIA),
        ylab = "Número de Alunos",
        xlab = "Matéria Favorita",
        col = "green")

barplot(table(alunos_boa$MATERIA),
        ylab = "Número de Alunos",
        xlab = "Matéria Favorita",
        col = "yellow")

barplot(table(alunos_regular$MATERIA),
        ylab = "Número de Alunos",
        xlab = "Matéria Favorita",)

barplot(table(alunos_ruim$MATERIA),
        ylab = "Número de Alunos",
        xlab = "Matéria Favorita",
        col = "red")

alunos_boa.nota <- cut(alunos_boa$NOTA, c(0, 1, 2, 3, 4, 5,
                                          6, 7, 8, 9, 10))
alunos_otima.nota <- cut(alunos_otima$NOTA, c(0, 1, 2, 3, 4, 5,
                                          6, 7, 8, 9, 10))
alunos_regular.nota <- cut(alunos_regular$NOTA, c(0, 1, 2, 3, 4, 5,
                                          6, 7, 8, 9, 10))
alunos_ruim.nota <- cut(alunos_ruim$NOTA, c(0, 1, 2, 3, 4, 5,
                                          6, 7, 8, 9, 10))

barplot(table(alunos_otima.nota),
        col = "green",
        ylab = "Número de Alunos",
        xlab = "Nota Média no Ano Letivo",
        names.arg = c("0 a 1","1 a 2","2 a 3","3 a 4",
                      "4 a 5","5 a 6","6 a 7","7 a 8",
                      "8 a 9","9 a 10"))

barplot(table(alunos_boa.nota),
        col = "yellow",
        ylab = "Número de Alunos",
        xlab = "Nota Média no Ano Letivo",
        names.arg = c("0 a 1","1 a 2","2 a 3","3 a 4",
                      "4 a 5","5 a 6","6 a 7","7 a 8",
                      "8 a 9","9 a 10"))

barplot(table(alunos_regular.nota),
        ylab = "Número de Alunos",
        xlab = "Nota Média no Ano Letivo",
        names.arg = c("0 a 1","1 a 2","2 a 3","3 a 4",
                      "4 a 5","5 a 6","6 a 7","7 a 8",
                      "8 a 9","9 a 10"))

barplot(table(alunos_ruim.nota),
        col = "red",
        ylab = "Número de Alunos",
        xlab = "Nota Média no Ano Letivo",
        names.arg = c("0 a 1","1 a 2","2 a 3","3 a 4",
                      "4 a 5","5 a 6","6 a 7","7 a 8",
                      "8 a 9","9 a 10"))

alunos_boa.tempo <- cut(alunos_boa$TEMPO, c(0, 1, 2, 3, 4, 5,
                                            6, 7, 8, 9, 10, 11,
                                            12, 13, 14, 15, 16, 17))

alunos_otima.tempo <- cut(alunos_otima$TEMPO, c(0, 1, 2, 3, 4, 5,
                                            6, 7, 8, 9, 10, 11,
                                            12, 13, 14, 15, 16, 17))

alunos_regular.tempo <- cut(alunos_regular$TEMPO, c(0, 1, 2, 3, 4, 5,
                                            6, 7, 8, 9, 10, 11,
                                            12, 13, 14, 15, 16, 17))

alunos_ruim.tempo <- cut(alunos_ruim$TEMPO, c(0, 1, 2, 3, 4, 5,
                                            6, 7, 8, 9, 10, 11,
                                            12, 13, 14, 15, 16, 17))

barplot(table(alunos_otima.tempo),
        col = "green",
        ylab = "Número de Alunos",
        xlab = "Tempo dedicado à estudo semanalmente fora da Escola (em horas)",
        names.arg = c("0 a 1", "1 a 2", "2 a 3", "3 a 4", "4 a 5",
                      "5 a 6", "6 a 7", "7 a 8", "8 a 9", "9 a 10",
                      "10 a 11", "11 a 12", "12 a 13", "13 a 14",
                      "14 a 15", "15 a 16", "16 a 17"))

barplot(table(alunos_boa.tempo),
        col = "yellow",
        ylab = "Número de Alunos",
        xlab = "Tempo dedicado à estudo semanalmente fora da Escola (em horas)",
        names.arg = c("0 a 1", "1 a 2", "2 a 3", "3 a 4", "4 a 5",
                      "5 a 6", "6 a 7", "7 a 8", "8 a 9", "9 a 10",
                      "10 a 11", "11 a 12", "12 a 13", "13 a 14",
                      "14 a 15", "15 a 16", "16 a 17"))

barplot(table(alunos_regular.tempo),
        ylab = "Número de Alunos",
        xlab = "Tempo dedicado à estudo semanalmente fora da Escola (em horas)",
        names.arg = c("0 a 1", "1 a 2", "2 a 3", "3 a 4", "4 a 5",
                      "5 a 6", "6 a 7", "7 a 8", "8 a 9", "9 a 10",
                      "10 a 11", "11 a 12", "12 a 13", "13 a 14",
                      "14 a 15", "15 a 16", "16 a 17"))

barplot(table(alunos_ruim.tempo),
        col = "red",
        ylab = "Número de Alunos",
        xlab = "Tempo dedicado à estudo semanalmente fora da Escola (em horas)",
        names.arg = c("0 a 1", "1 a 2", "2 a 3", "3 a 4", "4 a 5",
                      "5 a 6", "6 a 7", "7 a 8", "8 a 9", "9 a 10",
                      "10 a 11", "11 a 12", "12 a 13", "13 a 14",
                      "14 a 15", "15 a 16", "16 a 17"))
