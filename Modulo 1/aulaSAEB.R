# 
setwd("R/")
load("saeb17.RData")

# Sintaxe de instalação de pacotes
install.packages("descr")
install.packages("readxl")
install.packages("haven")

# Executar pacote 
library(descr)
library(readxl)
library(haven)

load("saeb17.RData")

# Abrir preview de .csv/.txt, (necessario pacote descr)
file.head("Exemplo.csv")
file.head("Exemplo.txt")

# Sintaxe para ler/modificar separadores de decimais, etc (pacote descr)
exemplo_csv <- read.csv("Exemplo.csv", sep = ";", dec = ",")
exemplo_txt <- read.csv("Exemplo.txt", sep = ";", dec = ",")

# Sintaxe para ler SPSS (pacote haven), também possibilita ler SAS e STATA
exemplo_sav <- read_sav("Exemplo.sav")

# Sintaxe para abrir excel (pacote readxl)
atlasbr <- read_excel("AtlasBR.xlsx")
