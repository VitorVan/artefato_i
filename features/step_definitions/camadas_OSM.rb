#include Capybara::DSL

#armazena o estilo inicial da pagina para comparar com o novo mapa
initial_background_color = page.evaluate_script('getComputedStyle(document.body).backgroundColor')

Dado('que estou na página inicial') do
    visit('https://pauliceia.unifesp.br/portal/explore')
  end

Quando('abro o menu camadas') do
    find('p.btn_sidebar').click
  end

Quando('eu clico no switch 1905') do
   element = find(:xpath, '(//div[@class="el-switch"])[3]')
   element.click
end

Então('eu quero ver o mapa do ano selecionado') do   
    new_background_color = page.evaluate_script('getComputedStyle(document.body).backgroundColor')
    expect(new_background_color).not_to eq(initial_background_color)
end
