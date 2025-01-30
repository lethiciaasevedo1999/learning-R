

status_entrega <- c("Entregue", "Em Trânsito", "Pendente", "Entregue", "Em Trânsito")
nomes_produtos <- c("Smartphone", "Notebook", "Monitor", "Mouse", "Tablet")
names(status_entrega) <- nomes_produtos
status_entrega

fator_entrega <- factor(status_entrega)
fator_entrega

fator_entrega <- factor(status_entrega, ordered = TRUE, levels = c('Em Trânsito', 'Pendente', 'Entregue'))

levels(fator_entrega) <- c('Pendente','Em Trânsito', 'Entregue')