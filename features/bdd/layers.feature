# language: pt

Funcionalidade: Manipulacao de usuarios por camada

    Contexto: A manipulacao das camadas e realizada por um usuario ja logado.

    #cenario_um
    Cenario: Adicao de camada com sucesso
    Como o usuario da plataforma
    Eu quero conseguir realizar a adicao de uma camada a ela
    Para que enriquecer o projeto pauliceia2.0
    
        Dado que preencha as informacoes da camada nova
        E realize a adicao de uma referencia no formato ABNT
        Quando eu importar o shapefile dos enderecos da camada a ser adicionada
        E configurar a data de referencia da camada
        Entao eu quero conseguir realizar o registro dela

    Cenario: Remocao de camada com sucesso
    Como o usuario da plataforma
    Eu quero conseguir realizar a remocao de uma camada que criei nela
    Para que outras pessoas nao a utilizem

        Dado que eu quero excluir a camada que criei
        Quando eu localizo a camada que quero excluir
        Então a camada e excluida
