Quando('eu clico no botão de informações da camada') do
  find('i.md-icon', text: 'assignment').click
end

Então('eu vejo as informações da camada em um popup') do
  div_enchente = find('div.box-info', text: 'A enchente de 1850')
  expect(div_enchente).to be_visible
end

Dado('que estou na página de mapa, abri o seletor de camadas e ativei a camada {string} e estou com suas informações ativas') do |string|
  steps %Q{
    Dado que estou na página de mapa com o popup de bem-vindo fechado
    Quando abro o seletor de camadas
    E eu clico no ícone de adicionar ou remover camadas
    E eu clico no botão "Ativar" da camada "A enchente de 1850"
    E eu clico no icone de fechar
    Então eu devo ver a camada "A enchente de 1850" adicionada à visualização 
    Quando eu clico no botão de configurações da camada "A enchente de 1850"
    E eu clico no botão de informações da camada
    Então eu vejo as informações da camada em um popup
  }
end

Quando('eu clico no botão de fechar as informações da camada') do
  div_enchente = find('div.box-info', text: 'A enchente de 1850')
  botao_close = div_enchente.find('button.btn i.md-icon', text: 'close')
  botao_close.click
end

Então('eu não vejo as informações da camada em um popup') do
  div_enchente = find('div.box-info', text: 'A enchente de 1850', visible: :all)
  expect(div_enchente).to_not be_visible
end
# Em alguns casos, este teste dá erro, pois o botão de fechar não fecha as informações
# Em outros casos, o botão de fechar fecha as informações e o teste funciona
# Não foi possível identificar o motivo, mas ele é causado pelo erro no console TypeError: Cannot read properties of null (reading 'user_id')