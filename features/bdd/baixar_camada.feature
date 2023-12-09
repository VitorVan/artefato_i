# language: pt

Funcionalidade: Baixar informações da camada

Cenário: Baixar informações da camada
    Dado que estou na página de mapa, abri o seletor de camadas e ativei a camada "A enchente de 1850"
    Quando eu clico no botão de configurações da camada "A enchente de 1850"
    E eu clico no botão de baixar camada
    Então eu baixei um arquvio com as informações da camada "A enchente de 1850"