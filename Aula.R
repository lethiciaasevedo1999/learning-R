ana_silva <- 'Ana Silva'
idade <- 28
salario <- 6230.50

ana_silva <- c('Ana Silva', 28, 6230.50, 'Não possui', TRUE)
ana_silva

names(ana_silva) <- c('Nome', 'Idade', 'Salário', 'Telefone', 'Trabalho remoto')
ana_silva


carlos_oliveira <- c('Carlos Oliveira', 35, 7500.75, '(11) 1234-5678', TRUE)

maria_santos <- c('Maria Santos', 40, 8000.25, '(21) 9876-5432', TRUE)

joao_costa <- c('Joao Costa', '32', 2460.80, 'Não possui', FALSE)

fernanda_lima <- c('Fernanda Lima', 27, 4230.35, '(31) 8765-4321', TRUE)


carlos_oliveira

colab_combinado <- c(ana_silva, carlos_oliveira, maria_santos, joao_costa, fernanda_lima)

matriz_colab <- matrix(colab_combinado, nrow = 5, byrow = TRUE)
matriz_colab


rownames(matriz_colab) <- c('Colaboradora Ana', 'Colaborador Carlos', 'Colaboradora Maria', 'Colaborador João', 'Colaboradora Fernanda')

colnames(matriz_colab) <- c('Nome', 'Idade', 'Salário', 'Telefone', 'Trabalho remoto')

matriz_colab

#Criando matriz - Tabela de vendas

# Vetor com valores das vendas
vendas_jan <- c(20, 18, 25, 16, 23)
vendas_fev <- c(15, 20, 22, 18, 19)
vendas_mar <- c(25, 23, 20, 17, 21)
vendas_abr <- c(18, 15, 19, 20, 24)
vendas_mai <- c(22, 25, 21, 15, 18)
vendas_jun <- c(21, 22, 19, 17, 20)

# Nomes das pessoas
pessoas <- c("Pedro Santos", "Carla Nunes", "Maria Eduarda", "Luiz Felipe", "Julio Costa")

# Nomes dos meses
meses <- c("Janeiro", "Fevereiro", "Marco", "Abril", "Maio", "Junho")

# Combinar as vendas
vendas_semestre <- c(vendas_jan, vendas_fev, vendas_mar, vendas_abr, vendas_mai, vendas_jun)

# Vendas de cada pessoa por mês (em milhares)
matriz_vendas <- matrix(vendas_semestre, nrow = 5, byrow = FALSE)

# Nomear a matriz
rownames(matriz_vendas) <- pessoas
colnames(matriz_vendas) <- meses

# Exibir a matriz
matriz_vendas