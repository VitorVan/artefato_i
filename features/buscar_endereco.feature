# language: pt

Funcionalidade: Busca por endereço no mapa

  Cenário: Busca por endereço válido
    Dado que estou na página "https://pauliceia.unifesp.br/portal/explore"
    Quando eu procuro pelo endereço com rua "rua adolpho gordo", número  "21" e ano "1909"
    Então eu não devo obter uma mensagem de erro
    # Não é possível verificar se o ponto é apresentado no mapa pois o mapa é um canvas e não é possível acessar o seu conteúdo

  Cenário: Tentativa de busca por endereço vazio
    Dado que estou na página "https://pauliceia.unifesp.br/portal/explore"
    Quando eu procuro por um endereço vazio
    Então eu devo ver uma mensagem de erro indicando a necessidade de procurar por rua, número, ano

  Cenário: Tentativa de busca por endereço com rua inexistente
    Dado que estou na página "https://pauliceia.unifesp.br/portal/explore"
    Quando eu procuro pelo endereço com rua "rua que nao existe", número  "21" e ano "1909"
    Então eu devo ver uma mensagem de erro indicando que não há pontos sufiicientes para a geolocalização com rua "rua que nao existe", número  "21" e ano "1909"
  Cenário: Tentativa de busca com formato de endereço inválido
    Dado que estou na página "https://pauliceia.unifesp.br/portal/explore"
    Quando eu procuro por um endereço com rua "rua que nao existe"
    Então eu devo ver uma mensagem de erro indicando a necessidade de procurar por rua, número, ano