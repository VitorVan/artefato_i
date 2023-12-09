include Capybara::DSL

#armazena o estilo inicial da pagina para comparar com o novo mapa
initial_background_color = page.evaluate_script('getComputedStyle(document.body).backgroundColor')

Dado('que estou na página de mapa da plataforma') do
    visit('https://pauliceia.unifesp.br/portal/explore')
  end
  
  Quando('abro o seletor de camadas da página') do
    find('p.btn_sidebar').click
  end
  
  Quando('eu clico no switch do Modelo Digital de Elevação de São Paulo colorido') do
    element = find(:xpath, '(//div[@class="el-switch"])[8]')
    element.click
  end
  
  Então('eu devo ver o Modelo Digital de Elevação de São Paulo ativado') do
    new_background_color = page.evaluate_script('getComputedStyle(document.body).backgroundColor')
    expect(new_background_color).not_to eq(initial_background_color)
  end