# language: pt

Funcionalidade: Fazer login na plataforma
Como um usuário do Pauliceia 2.0
Para que eu possa ter minhas informações pessoais atualizadas
Eu quero alterar as minhas informações de nome, nome de usuário e receber notificações por e-mail

  Cenário: Alterar nome
  Dado que estou logado
  Quando clico no menu de perfil
  E clico em Meu perfil
  E insiro um novo nome no campo de Nome
  E clico em Submit no card de perfil
  Então espero ver a mensagem "The profile was updated with success!"
  E estar na página de painel

  Cenário: Alterar nome de usuário
  Dado que estou logado
  Quando clico no menu de perfil
  E clico em Meu perfil
  E insiro um novo nome no campo de User Name
  E clico em Submit no card de perfil
  Então espero ver a mensagem "The profile was updated with success!"
  E estar na página de painel

  Cenário: Alterar notificações por e-mail
  Dado que estou logado
  Quando clico no menu de perfil
  E clico em Meu perfil
  E clico no botão de notificações por e-mail
  E clico em Submit no card de perfil
  Então espero ver a mensagem "The profile was updated with success!"
  E estar na página de painel

  