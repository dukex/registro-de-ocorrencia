categories = <<CATEGORY
Transbordamento de Canal
Alagamento
Transbordamento de Rio
Deslizamento de Barreira com desabamento de casa
Deslizamento de Barreira com desabamento de muro
desabamento total de casa
desabamento total de casa
Deslizamento de Barreira com óbito
Deslizamento de Barreira com feridos
Deslizamento de Barreira
Desabamento  de Prédio
Desabamento Parcial de prédio
Desabamento de Muro de Contenção
Desabamento de Muro em alvenaria
Desabamento de Parede
Queda de árvore
Queda de árvore em cima de moradia
Queda  de árvore em cima de veículo
Incêndio em casa
Incêndio em Prédio
Incêndio em Área Comercial
CATEGORY

categories.split("\n").each do |category|
  Category.create! :name => category
end
