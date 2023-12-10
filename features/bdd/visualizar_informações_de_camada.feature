# language: pt

Funcionalidade: Abrir e fechar as informações da camada ativa
Como um usuário do Pauliceia 2.0
Para que eu possa ver mais informações sobre uma camada e interagir com ela
Eu quero abrir e fechar as informações da camada ativa  

Cenário: Abrir as informações da camada
  Dado que estou na página de mapa, abri o seletor de camadas e ativei a camada "A enchente de 1850"
  Quando eu clico no botão de configurações da camada "A enchente de 1850"
  E eu clico no botão de informações da camada
  Então eu vejo as informações da camada "A enchente de 1850" em um popup

Cenário: Fechar as informações da camada
  Dado que estou na página de mapa, abri o seletor de camadas e ativei a camada "A enchente de 1850" e estou com suas informações ativas
  Quando eu clico no botão de fechar as informações da camada
  Então eu não vejo as informações da camada em um popup
