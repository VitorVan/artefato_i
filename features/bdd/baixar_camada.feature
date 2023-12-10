# language: pt

Funcionalidade: Baixar informações da camada
Como um usuário da Pauliceia 2.0
Para que explorar offline ou usar dados brutos
Eu quero baixar os dados da camada

Cenário: Baixar informações da camada
    Dado que estou na página de mapa, abri o seletor de camadas e ativei a camada "A camada de teste"
    Quando eu clico no botão de configurações da camada "A camada de teste"
    E eu clico no botão de baixar camada
    Então eu baixei um arquivo com as informações da camada "A camada de teste"