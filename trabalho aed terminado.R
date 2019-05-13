options(scipen = 999)
names(data1) <- c("UF","Pop","Freq","Taxa")
data1

#Item A

barplot(data1$Freq,
        names.arg = data1$UF,
        main = "Frequência Absoluta por Estado",
        xlab = "Estados", ylab = "Pessoas chamadas Vinícius",
        col = "darkred")

#Item B

barplot(data1$Freq/data1$Pop,
        names.arg = data1$UF,
        main = "Frequência Relativa por Estado",
        xlab = "Estados", ylab = "Pessoas chamadas Vinícius (%)",
        col = "darkblue")

#Item C

freq_norte <- data1$Freq[14]+data1$Freq[16]+data1$Freq[17]+
         data1$Freq[18]+data1$Freq[21]+data1$Freq[23]+
         data1$Freq[27]

freq_nordeste <- data1$Freq[12]+data1$Freq[13]+data1$Freq[15]+
            data1$Freq[19]+data1$Freq[20]+data1$Freq[22]+
            data1$Freq[24]+data1$Freq[25]+data1$Freq[26]

freq_coeste <- data1$Freq[3]+data1$Freq[7]+data1$Freq[10]+data1$Freq[11]

freq_sudeste <- data1$Freq[1]+data1$Freq[5]+data1$Freq[8]+data1$Freq[9]

freq_sul <- data1$Freq[2]+data1$Freq[4]+data1$Freq[6]

freq_regiao <- c(freq_norte,freq_nordeste,freq_coeste,freq_sudeste,freq_sul)

taxa_norte <- data1$Taxa[14]+data1$Taxa[16]+data1$Taxa[17]+
  data1$Taxa[18]+data1$Taxa[21]+data1$Taxa[23]+
  data1$Taxa[27]

taxa_nordeste <- data1$Taxa[12]+data1$Taxa[13]+data1$Taxa[15]+
  data1$Taxa[19]+data1$Taxa[20]+data1$Taxa[22]+
  data1$Taxa[24]+data1$Taxa[25]+data1$Taxa[26]

taxa_coeste <- data1$Taxa[3]+data1$Taxa[7]+data1$Taxa[10]+data1$Taxa[11]

taxa_sudeste <- data1$Taxa[1]+data1$Taxa[5]+data1$Taxa[8]+data1$Taxa[9]

taxa_sul <- data1$Taxa[2]+data1$Taxa[4]+data1$Taxa[6]

taxa_regiao <- c(taxa_norte,taxa_nordeste,taxa_coeste,taxa_sudeste,taxa_sul)


barplot(freq_regiao,
        names.arg = c("Norte","Nordeste","Centro-Oeste","Sudeste","Sul"),
        main = "Frequência Absoluta por Região",
        xlab = "Regiões", ylab = "Pessoas chamadas Vinícius",
        col = "darkgreen")

slices <- (freq_regiao)
lbls <- c("Norte", "Nordeste", "Centro-Oeste", "Sudeste", "Sul")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) 
lbls <- paste(lbls,"%",sep="") 
pie(slices, labels = lbls, main = "Frequência Absoluta por Região")

barplot(taxa_regiao,
        names.arg = c("Norte","Nordeste","Centro-Oeste","Sudeste","Sul"),
        main = "Frequência Relativa por Região",
        xlab = "Regiões", ylab = "Pessoas chamadas Vinícius à cada 100.000 Pessoas",
        col = "yellow")

slices <- (taxa_regiao)
lbls <- c("Norte", "Nordeste", "Centro-Oeste", "Sudeste", "Sul")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) 
lbls <- paste(lbls,"%",sep="") 
pie(slices, labels = lbls, main = "Frequência Relativa por Região")
