# Testes com Cucumber e Capybara para o site Pauliceia 2.0

Este repositório contém testes automatizados utilizando Cucumber e Capybara para realizar testes no site Pauliceia 2.0.

## Pré-requisitos

Certifique-se de ter o seguinte instalado em seu ambiente de desenvolvimento:

- Ruby (recomendado 2.5+)
- Bundler gem (`gem install bundler` para instalar)
- WebDriver ChromeDriver

### Instalando o WebDriver ChromeDriver

Para rodar os testes no navegador Google Chrome, é necessário ter o WebDriver ChromeDriver instalado.

#### Instalação via Homebrew (Mac)

Se estiver usando macOS e o Homebrew, você pode instalar o ChromeDriver com o seguinte comando:

```
brew install chromedriver
```

#### Outros sistemas operacionais

Para outras plataformas, você pode baixar o ChromeDriver diretamente do site oficial do Chromium: [ChromeDriver Downloads](https://sites.google.com/chromium.org/driver/). Certifique-se de ter uma caminho válido para o webdriver no PATH do seu sistema operacional.

## Execução

### Instalação de dependências

1. Clone este repositório para o seu ambiente local:

```
git clone https://github.com/VitorVan/artefato_i.git
```

2. Acesse o diretório do projeto:

```
cd artefato_i
```

3. Instale as dependências do projeto com o Bundler:

```
bundle install
```

### Executar todos os testes

Execute os testes usando o Cucumber:

```
cucumber
```

Isso executará todos os testes definidos na pasta `features/bdd`.

### Executar apenas um teste

Execute um testes usando Cucumber e o nome do diretório do arquivo `.feature`:

```
cucumber bdd/features/nome_do_teste.feature
```

Isso executará o teste definido em `bdd/features/nome_do_teste.feature`.

## Estrutura do Projeto

- `features/bdd`: Contém os arquivos de especificações de histórias de usuário e cenários
- `features/step_definitions/`: Contém os passos (steps) definidos para os cenários.
- `features/support/`: Contém arquivos de suporte, como configurações do Capybara e hooks do Cucumber.
- `features/pages/`: Contém arquivos de definição de páginas usando a lib site_prism (A Page Object Model DSL for Capybara).
- `download/`: Diretório para realização, armazenamento, manipulação e verificação de downloads.

## Notas

Certifique-se de ter uma conexão com a internet ativa para a execução dos testes, já que eles dependem do acesso ao site Pauliceia 2.0 hospedado na Unifesp em https://pauliceia.unifesp.br/.
