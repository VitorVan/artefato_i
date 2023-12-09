# language: pt

Funcionalidade: Ativar e desativar as informações dos objetos

Cenário: Ativar as informações dos objetos
  Dado que estou na página de mapa, abri o seletor de camadas e ativei a camada "A enchente de 1850"
  Quando eu clico no botão de configurações da camada "A enchente de 1850"
  E eu clico no botão de informações dos objetos
  Então eu vejo o botão de informações dos objetos ativo
  E posso clicar nos objetos para ver suas informações
  # Verificado pela existência de uma div que mostra essas informações, já que não é possível interagir com o mapa

Cenário: Desativar as informações dos objetos
  Dado que estou na página de mapa, abri o seletor de camadas e ativei a camada "A enchente de 1850" e estou com suas informações de objeto ativas
  Quando eu clico no botão de informações dos objetos
  Então eu vejo o botão de informações dos objetos desativado
  E não posso clicar nos objetos para ver suas informações
  # Verificado pela inexistência de uma div que mostra essas informações, já que não é possível interagir com o mapa

