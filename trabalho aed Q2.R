barplot(table(alunos$MATERIA),
        xlab = "Número de Alunos", ylab = "Matéria Favorita",
        col = "darkred")

barplot(table(alunos$OPINIAO),
        xlab = "Número de Alunos",
        ylab = "Opnião à respeito da Escola",
        col = "darkgreen")

alunos.nota <- cut(alunos$NOTA, c(0, 1, 2, 3, 4, 5,
                                  6, 7, 8, 9, 10))

barplot(table(alunos.nota),
        names.arg = c("0 a 1", "1 a 2", "2 a 3", "3 a 4", "4 a 5",
                      "5 a 6", "6 a 7", "7 a 8", "8 a 9", "9 a 10"),
        xlab = "Nota Média no Ano Letivo",
        ylab = "Número de Alunos",
        col = "darkblue")

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
