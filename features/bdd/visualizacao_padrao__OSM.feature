# language: pt

Funcionalidade: Ativar ou desativar visualização padrao OSM
Como um usuário do Pauliceia 2.0
Para que eu possa ver o mapa de fundo atual
Eu quero ativar ou desativar a visualização padrão OSM

  Cenário: Ativar visualização OSM
    Dado que eu acesso o site "https://pauliceia.unifesp.br/portal/explore"
    Quando abro o menu camadas
    E clico para desativar o OSM
    Então eu nao devo mais ver o mapa do fundo