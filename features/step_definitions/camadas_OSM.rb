include Capybara::DSL


Dado('estou na página inicial') do
    visit('https://pauliceia.unifesp.br/portal/explore')
  end

Quando('abro o menu camadas') do
    find('p.btn_sidebar').click
  end

  #armazena o estilo inicial da pagina para comparar com o novo mapa
  @initial_background_color = page.evaluate_script('getComputedStyle(document.body).backgroundColor')

Quando('eu clico no switch 1905') do
   element = find(:xpath, '(//div[@class="el-switch"])[3]')
   element.click
end

Então('eu quero ver o mapa do ano selecionado') do   
    new_background_color = page.evaluate_script('getComputedStyle(document.body).backgroundColor')
    expect(new_background_color).not_to eq(@initial_background_color)
end

Quando('clico para desativar o OSM') do
  element = find(:xpath, '(//div[@class="el-switch is-checked"])[1]')
  element.click
  
end

Então('eu nao devo mais ver o mapa do fundo') do
  new_background_color = page.evaluate_script('getComputedStyle(document.body).backgroundColor')
  expect(new_background_color).not_to eq(@initial_background_color)
end