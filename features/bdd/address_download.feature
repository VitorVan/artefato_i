# language: pt

Funcionalidade: download de enderecos buscados

@csv_success
    Cenario: busca por arquivo csv com sucesso
    Como o usuario da plataforma
    Eu quero conseguir realizar o upload dos enderecos que tenho por um arquivo csv
    Para que eu possa utiliza-lo para outras finalidades
    
    Dado que eu busque por 3 enderecos no mapa por meio de um arquivo csv no padrao estabelecido
    Quando eu fizer o upload do arquivo
    E fazer a identificacao das colunas solicitadas pela plataforma
    Então ao realizar a busca desejo saber se os meus enderecos foram encontrados
    #E se meus enderecos foram marcados no mapa -- canvas

    Cenario: download de arquivo shapefile dos enderecos encontrados
    Como o usuario da plataforma
    Eu quero conseguir realizar o download do Shapefile dos enderecos que busquei nela
    Para que eu possa utiliza-lo em outras atividades

    Dado que eu tenha realizado os passos anteriores de pesquisa de lote de enderecos
    Quando realizo o download do shapefile dos enderecos buscados
    Então o arquivo e baixado

