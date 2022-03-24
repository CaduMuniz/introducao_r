install.packages("car")

library(readxl)
library(descr)
library(car)

load("saeb17.RData")
atlas <- read_excel("AtlasBR.xlsx")

# Recodificações

## Recodificar para categórica (Quando tem números não precisa, mas os
#"valores categóricos" precisa de aspas simples)
regiao <- recode(saeb17$ID_REGIAO,
                 "1 = 'Norte';
                 2 = 'Nordeste';
                 3 = 'Sudeste';
                 4 = 'Sul';
                 5 = 'Centro-Oeste'", levels = c('Norte', 'Nordeste', 'Centro-Oeste',
                                                 'Sudeste', 'Sul'),
                 as.factor = T)
freq(regiao)
freq(saeb17$ID_REGIAO)

esc_mae <- recode(saeb17$TX_RESP_Q019,
                  "'A' = 'Sem-escolaridade';
                  c('B', 'C', 'D') = 'Fundamental';
                  'E' = 'Média';
                  'F' = 'Superior';
                  else = NA",
                  levels = c('Sem-escolaridade', 'Fundamental', 'Média',
                             'Superior'), as.factor = T)

freq(esc_mae)

## Recodificar para vetor numérico
esc_mae2 <- recode(saeb17$TX_RESP_Q019,
                   "'A' = 1;
                   c('B', 'C', 'D') = 2;
                   'E' = 3;
                   'F' = 4;
                   else = NA")
freq(esc_mae2)
class(esc_mae2) #Factor/string
esc_mae2 <- as.numeric(esc_mae2) #Transforma em numeric
class(esc_mae2) # Transformou em numeric

esc_mae3 <- recode(saeb17$TX_RESP_Q019,
                   "'A' = 1;
                   c('B', 'C', 'D') = 2;
                   'E' = 3;
                   'F' = 4;
                   else = NA", as.factor = F) #"as.factor = F" F = false
freq(esc_mae3)

### Excluir NAs/Nulos
esc_mae3 <- na.exclude(esc_mae3)
freq(esc_mae3)


# Recodificar variável numérica em faixas
atlas16 <- subset(atlas, Ano == "2016")

