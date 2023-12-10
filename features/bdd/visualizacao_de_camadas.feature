# language: pt

Funcionalidade: Adicionar e Remover Camadas na Visualização

  Cenário: Adicionar uma camada à visualização (ativar)
    Dado que estou na página de mapa com o popup de bem-vindo fechado
    Quando abro o seletor de camadas
    E eu clico no ícone de adicionar ou remover camadas
    E eu clico no botão "Ativar" da camada "A enchente de 1850"
    E eu clico no icone de fechar
    Então eu devo ver a camada "A enchente de 1850" adicionada à visualização
    # Não é possível verificar se a camada é apresentada no mapa pois o mapa é um canvas e não é possível acessar o seu conteúdo

  Cenário: Remover uma camada da visualização (desativar)
    Dado que estou na página de mapa, abri o seletor de camadas e ativei a camada "A enchente de 1850"
    Quando eu clico no ícone de adicionar ou remover camadas
    E eu clico no botão "Desativar" da camada "A enchente de 1850"
    E eu clico no icone de fechar
    Então eu não devo ver a camada "A enchente de 1850" adicionada à visualização 
