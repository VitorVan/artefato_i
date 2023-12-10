# language: pt

Funcionalidade: Se logado, o usuário deve poder seguir ou deixar de seguir a camada
Como um usuário do Pauliceia 2.0
Para que eu possa ver ou deixar de ver atualizações de uma camada
Eu quero poder seguir ou deixar de seguir uma camada

Cenário: Seguir e deixar de seguir a camada estando logado
  Dado que estou logado, na pagina de mapa, abri o seletor de camadas e ativei a camada "A enchente de 1850" e estou com suas informações ativas
  Quando eu clico no botão de seguir a camada "A enchente de 1850"
  Então eu espero ver uma mensagem de sucesso indicando que a camada foi seguida
  E eu espero ver o botão de deixar de seguir a camada
  Quando eu clico no botão de deixar de seguir a camada "A enchente de 1850"
  Então eu espero ver uma mensagem de sucesso indicando que a camada não é mais seguida

Cenário: Tentar seguir a camada sem estar logado
  Dado que não estou logado, na pagina de mapa, abri o seletor de camadas e ativei a camada "A enchente de 1850" e estou com suas informações ativas
  Quando eu clico no botão de seguir a camada "A enchente de 1850"
  Então eu espero ver uma mensagem de erro 404