# language: pt

Funcionalidade: Se logado, usuário deve poder enviar uma denuncia à camada
Como um usuário do Pauliceia 2.0
Para que eu possa manter a qualidade do banco de dados e evitar erros em camadas
Eu quero poder enviar uma denuncia à camada que identifiquei como incorreta

Cenário: Enviar denuncia estando logado
  Dado que estou logado, na pagina de mapa, abri o seletor de camadas e ativei a camada "A camada de teste" e estou com suas informações ativas
  Quando eu preencho o campo notificações com "Teste denuncia camada"
  E clico em "!"
  Então devo ver a notificação adionada abaixo

Cenário: Enviar notificação não estando logado
  Dado que não estou logado, na pagina de mapa, abri o seletor de camadas e ativei a camada "A camada de teste" e estou com suas informações ativas
  Quando eu preencho o campo notificações com "Teste denuncia camada"
  E clico em "!"
  Então eu espero ver uma mensagem de erro 401