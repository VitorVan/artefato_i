# language: pt

Funcionalidade: Registro do usuário no site

    #cenario_um
    Cenário: Registro com sucesso
    Como um novo usuário da plataforma
    Eu quero conseguir me registrar nela
    Para que eu consiga acessar o site logado

        Dado que eu estou na pagina de registro de novos usuarios
        Quando terminar de preencher todos os campos da tela, incluindo a aceitacao de termos de uso
        E sigo com o cadastro
        Então eu devo receber uma confirmacao de cadastro da pagina

    #cenario_dois    
    Cenário: Registro invalido por nao aceitar os termos de uso
    Como o cliente da plataforma
    Eu quero que meus usuários consigam se registrar nela somente se aceitarem os termos de uso
    Para que concluir seu cadastro

        Dado que eu estou na página de registro de novos usuários
        Quando preencho todos os campos da tela
        Mas não preencho o checkbox de aceitação de termos de uso
        Então eu serei impedido de realizar o cadastro

    #cenario_tres
    Cenário: Registro de um usuario ja cadastrado na plataforma
    Como o cliente da plataforma
    Eu quero verificar como o sistema responde a solicitação de registro de um usuario ja cadastrado
    Para que entenda o tratamento de registro

        Dado que eu sou um usuario cadastrado preenchendo todos os campos solicitados na pagina de registro
        Quando tento seguir com o cadastro
        Então eu sou impedido de realizar o cadastro









