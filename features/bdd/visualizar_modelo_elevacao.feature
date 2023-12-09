#language: pt

Funcionalidade: Adicionar e Remover Modelo Digital de Elevação de São Paulo

  Cenário: Adicionar o Modelo Digital de Elevação de São Paulo colorido
    Dado que estou na página de mapa
    Quando abro o seletor de camadas da plataforma
    E eu clico no switch do Modelo Digital de Elevação de São Paulo colorido
    Então eu devo ver o Modelo Digital de Elevação de São Paulo colorido ativado

  Cenário: Adicionar o Modelo Digital de Elevação de São Paulo tons de cinza
    Dado que estou na página de mapa
    Quando abro o seletor de camadas da plataforma
    E eu clico no switch do Modelo Digital de Elevação de São Paulo tons de cinza
    Então eu devo ver o Modelo Digital de Elevação de São Paulo tons de cinza ativado

  Cenário: Remover o Modelo Digital de Elevação de São Paulo colorido
    Dado que estou na página de mapa
    Quando abro o seletor de camadas da plataforma
    E eu clico no switch do Modelo Digital de Elevação de São Paulo colorido
    Então eu devo ver o Modelo Digital de Elevação de São Paulo colorido ativado
    Quando eu clico novamente no switch do Modelo Digital de Elevação de São Paulo colorido
    Então eu devo ver o Modelo Digital de Elevação de São Paulo colorido desativado

  Cenário: Remover o Modelo Digital de Elevação de São Paulo tons de cinza
    Dado que estou na página de mapa
    Quando abro o seletor de camadas da plataforma
    E eu clico no switch do Modelo Digital de Elevação de São Paulo tons de cinza
    Então eu devo ver o Modelo Digital de Elevação de São Paulo tons de cinza ativado
    Quando eu clico novamente no switch do Modelo Digital de Elevação de São Paulo tons de cinza
    Então eu devo ver o Modelo Digital de Elevação de São Paulo tons de cinza desativado