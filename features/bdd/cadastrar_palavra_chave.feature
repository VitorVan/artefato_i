# language: pt

Funcionalidade: Se logado, o usuário deve poder cadastrar palavra chave e não deve poder excluí-la

Cenário: Cadastrar nova palavra chave
  Dado que estou logado
  Quando clico no menu de perfil
  E clico em Painel
  E clico em Palavras Chave no menu lateral
  E escrevo o nome "Palavra chave teste" no campo nome
  E clico em Submit
  Então devo ver uma resposta com o id da palavra-chave

Cenário: Excluir palavra chave
  Dado que estou logado
  E que tenho a palavra chave "Palavra chave teste" cadastrada
  Quando clico no menu de perfil
  E clico em Painel
  E clico em Palavras Chave no menu lateral
  E clico no botão de excluir da palavra chave "Palavra chave teste"
  Então devo ver uma resposta com erro
  E devo ver uma mensagem de erro
