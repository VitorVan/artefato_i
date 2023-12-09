# language: pt

Funcionalidade: Dar zoom em camadas ativas

Cenário: Dar zoom na camada ativa
    Dado que estou na página de mapa, abri o seletor de camadas e ativei a camada "A enchente de 1850"
    Quando eu clico no botão de configurações da camada "A enchente de 1850"
    E eu clico no botão de zoom
    Então eu vejo o mapa com zoom na camada ativa
    # Não é possível verificar se a camada é apresentada no mapa pois o mapa é um canvas e não é possível acessar o seu conteúdo
