# language: pt

Funcionalidade: Se logado, o usuário deve poder cadastrar palavra chave e não deve poder excluí-la
Como um usuário do Pauliceia 2.0
Para que eu possa identificar camadas por palavra chave e encontrar camadas que me interessem
Eu quero poder cadastrar palavra chave

Cenário: Cadastrar nova palavra chave
  Dado que estou logado
  Quando clico no menu de perfil
  E clico em Painel
  E clico em Palavras Chave no menu lateral
  E escrevo o nome "Palavra chave teste" no campo nome
  E clico em Submit
  Então devo ver uma resposta com o id da palavra-chave