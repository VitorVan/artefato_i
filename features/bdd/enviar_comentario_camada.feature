# language: pt

Funcionalidade: Se logado, usuário deve poder enviar uma notificação (comentário) na camada

Cenário: Enviar notificação estando logado
  Dado que estou logado, na pagina de mapa, abri o seletor de camadas e ativei a camada "A enchente de 1850" e estou com suas informações ativas
  Quando eu preencho o campo notificações com "Teste notificação camada"
  E clico em "Submit"
  Então devo ver a notificação adionada abaixo