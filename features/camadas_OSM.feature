# language: pt

Funcionalidade: ligar e desligar visualizações de mapas de anos específicos

  Cenário: Ativar visualização do ano no mapa
    Dado que eu acesso o site "https://pauliceia.unifesp.br/portal/explore"
    Quando abro o menu camadas
    E eu clico no switch 1905
    Então eu quero ver o mapa do ano selecionado