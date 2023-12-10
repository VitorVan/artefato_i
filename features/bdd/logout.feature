# language: pt

Funcionalidade: Fazer logout da plataforma
Como um usuário do Pauliceia 2.0
Para que eu possa não deixar meu perfil aberto ao sair da plataforma
Eu quero fazer logout do sistema

  Cenário: Sair do perfil
  Dado que estou logado
  Quando clico no menu de perfil
  E clico em sair
  Então devo ver uma mensagem de adeus
  E devo ver o botão de login
