load("saeb17.RData")
profs_saeb17 <- subset(saeb17, select = c("PROFICIENCIA_LP_SAEB"))
profs_saeb17_mat <- subset(saeb17, select = c("PROFICIENCIA_MT_SAEB", 
                                              "PROFICIENCIA_LP_SAEB"))

# Sintaxe para média
mean(profs_saeb17$PROFICIENCIA_LP_SAEB)
mean(saeb17$PROFICIENCIA_MT_SAEB)

# Apagar um objeto

profs_saeb17 = NULL

# Apagar uma coluna do BD
profs_saeb17_mat$PROFICIENCIA_LP_SAEB = NULL


# Recodificar variável numérica em faixas
