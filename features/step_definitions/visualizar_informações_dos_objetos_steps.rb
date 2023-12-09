Dado("que estou na página de mapa, abri o seletor de camadas e ativei a camada {string} e estou com suas informações de objeto ativas") do |camada|
  steps %Q{
    Dado que estou na página de mapa, abri o seletor de camadas e ativei a camada "#{camada}"
    Quando eu clico no botão de configurações da camada "A enchente de 1850"
    E eu clico no botão de informações dos objetos
    Então eu vejo o botão de informações dos objetos ativo
    E posso clicar nos objetos para ver suas informações
  }
end

E("eu clico no botão de informações dos objetos") do
  find('i.md-icon.md-icon-font.el-tooltip.md-theme-default', text: 'info').click
end
  
Então('eu vejo o botão de informações dos objetos ativo') do
  expect(page).to have_css('i.md-icon.md-icon-font.el-tooltip.md-theme-default.active', text: 'info')
end

Então('eu vejo o botão de informações dos objetos desativado') do
  expect(page).not_to have_css('i.md-icon.md-icon-font.el-tooltip.md-theme-default.active', text: 'info')
end

E('posso clicar nos objetos para ver suas informações') do
  expect(page).to have_css('div.ol-overlay-container.ol-selectable', visible: :all) # Write code here that turns the phrase above into concrete actions
end

E('não posso clicar nos objetos para ver suas informações') do
  expect(page).not_to have_css('div.ol-overlay-container.ol-selectable', visible: :all) # Write code here that turns the phrase above into concrete actions
end