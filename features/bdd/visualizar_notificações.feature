# language: pt

Funcionalidade: Ver as notificações

Cenário: Abrir o menu de notificações
  Dado que estou na página de mapa com o popup de bem-vindo fechado
  Quando eu clico no botão de notificações no meu lateral direito
  Então eu vejo as notificações

Cenário: Ver as notificações gerais
  Dado que estou na página de mapa com as notificações abertas
  Quando eu clico no botão general
  Então eu vejo as notificações gerais

Cenário: Ver as notificações pessoais
  Dado que estou na página de mapa com as notificações abertas
  Quando eu clico no botão personal
  Então eu vejo as notificações pessoais

Cenário: Ver as notificações seguidas
  Dado que estou na página de mapa com as notificações abertas
  Quando eu clico no botão following
  Então eu vejo as notificações seguidas

Cenario: Fechar as notificações
  Dado que estou na página de mapa com as notificações abertas
  Quando eu clico no botão de fechar
  Então eu não vejo as notificações