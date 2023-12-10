# language: pt

Funcionalidade: Se logado, usuário deve poder enviar uma denuncia à camada

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