# language: pt

Funcionalidade: Fazer login na plataforma
Como um usuário do Pauliceia 2.0
Para que eu possa adicionar camadas, interagir e auxiliar a comunidade
Eu quero fazer login na plataforma

  Cenário: Acessar página de login
    Dado que eu acesso o site "https://pauliceia.unifesp.br/portal/explore"
    Quando eu clico no link "Entrar"
    Então eu quero ser redirecionado para a página de login

  Cenário: Realizar login com credenciais válidas
    Dado que eu acesso o site "https://pauliceia.unifesp.br/portal/explore"
    Quando eu clico no link "Entrar"
    Então eu quero ser redirecionado para a página de login
    Quando eu preencho o campo de email com "pauliceiateste@gmail.com"
    E eu preencho o campo de senha com "Testepauliceia12345"
    E eu clico no botão "Entrar"
    Então eu quero fazer login

  Cenário: Tentativa de login com credenciais inválidas
    Dado que eu acesso o site "https://pauliceia.unifesp.br/portal/explore"
    Quando eu clico no link "Entrar"
    Então eu quero ser redirecionado para a página de login
    Quando eu preencho o campo de email com "emailinvalido@gmail.com"
    E eu preencho o campo de senha com "senhaerrada123"
    E eu clico no botão "Entrar"
    Então eu quero ver uma mensagem de erro de login
