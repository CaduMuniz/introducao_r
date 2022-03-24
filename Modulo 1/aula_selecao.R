# Calculos
2 + 2
3 * 3

# Extrair subconjunto de dados

x <- c("João", "Maria", "José", "Ana", "Francisco")
y <- c("A", "B", "A", "B", "A")
r <- c(TRUE, TRUE, FALSE, TRUE, TRUE)
z <- c(10, 20, 30, 40, 50)
w <- c(4, 5, 6, 9, 16)

bd <- data.frame(x, y, r, z, w)

# Selecionar coluna de 1 a 3 e todas as linhas

bd1 <- bd[1:3]

# Selecionar linha de 2 a 4 e todas as colunas
bd2 <- bd[2:4, ]

# Selecionar linha de 1-4 e coluna 1-3
bd3 <- bd[1:4, 1:3]

# Selecionar linhas e conjuntos específicos
bd4 <- bd[c(1, 3, 5), c(2, 4)]

# Selecionar tudo, menos uma específica
bd5 <- bd[ , -2]

# Renomear e criar BD's que já existem
load("saeb17.RData")
lp <- saeb17$PROFICIENCIA_LP_SAEB
regiao <- saeb17$ID_REGIAO
novobd <- data.frame(lp, regiao)

# Saber o tipo de variável
class(lp)
class(saeb17$ID_ALUNO)

# Amostra do conteúdo/ preview
head(lp)
head(regiao)
head(saeb17$ID_UF)
