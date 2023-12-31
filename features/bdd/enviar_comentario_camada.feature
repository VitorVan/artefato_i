# language: pt

Funcionalidade: Se logado, usuário deve poder enviar uma notificação/comentário na camada
Como um usuário do Pauliceia 2.0
Para que eu possa compartilhar informações sobre uma camada com outros usuários interessados
Eu quero poder enviar uma notificação/comentário na camada

Cenário: Enviar notificação estando logado
  Dado que estou logado, na pagina de mapa, abri o seletor de camadas e ativei a camada "A camada de teste" e estou com suas informações ativas
  Quando eu preencho o campo notificações com "Teste notificação camada"
  E clico em "Submit"
  Então devo ver a notificação adionada abaixo

Cenário: Enviar notificação não estando logado
  Dado que não estou logado, na pagina de mapa, abri o seletor de camadas e ativei a camada "A camada de teste" e estou com suas informações ativas
  Quando eu preencho o campo notificações com "Teste notificação camada"
  E clico em "Submit"
  Então eu espero ver uma mensagem de erro 401