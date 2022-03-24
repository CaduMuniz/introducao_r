# Introdução ao subset 
load("saeb17.RData") #BD que vamos usar

## Subset com todas as colunas/variáveis
saeb17_pri <- subset(saeb17, ID_DEPENDENCIA_ADM == "4")
saeb17_pub <- subset(saeb17, ID_DEPENDENCIA_ADM != "4")

## Subset com variáveis específicas
profs_saeb17 <- subset(saeb17, select = c("PROFICIENCIA_LP_SAEB", "PROFICIENCIA_MT_SAEB"))

## Subset com filtro e seleção de variáveis específicas
profs_saeb17_sp <- subset(saeb17, ID_UF == '35', select = c("ID_UF", "PROFICIENCIA_LP_SAEB",
                                                            "PROFICIENCIA_MT_SAEB"))

## Subset com filtro combinado e seleção de variáveis
profs_saeb17_sp_pub <- subset(saeb17, ID_UF =='35' & ID_DEPENDENCIA_ADM != '4', 
                              select = c("ID_UF", "ID_DEPENDENCIA_ADM", "PROFICIENCIA_LP_SAEB",
                                         "PROFICIENCIA_MT_SAEB"))
