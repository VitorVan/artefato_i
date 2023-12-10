Dado('que estou na página de mapa com o popup de bem-vindo fechado') do
  visit('https://pauliceia.unifesp.br/portal/explore')
  find('section.boxS button.btn i.md-icon-font', text: 'close').click
end

Dado("que estou na página de mapa, abri o seletor de camadas e ativei a camada {string}") do |camada|
  steps %Q{
    Dado que estou na página de mapa com o popup de bem-vindo fechado
    Quando abro o seletor de camadas
    E eu clico no ícone de adicionar ou remover camadas
    E eu clico no botão "Ativar" da camada "#{camada}"
    E eu clico no icone de fechar
    Então eu devo ver a camada "#{camada}" adicionada à visualização 
  }
end

Quando('abro o seletor de camadas') do
  find('p.btn_sidebar').click
end

E('eu clico no ícone de adicionar ou remover camadas') do
  element = find('div.md-button-content img[src="/portal/static/img/add-layer.5bcee7e.png"]').find(:xpath, '..')
  element.click
end

Quando('eu clico no botão {string} da camada {string}') do |acao, camada|
  clicar_acao_camada(acao, camada)
end

E('eu clico no ícone de fechar') do
  find('button[data-dismiss="modal"][aria-label="Close"]').click
end

Quando('eu clico no icone de fechar') do
  find('button[data-dismiss="modal"][aria-label="Close"]').click
end

Então('eu devo ver a camada {string} adicionada à visualização') do |camada|
  expect(page).to have_css('section.box-layers', text: camada)
end

Então('eu não devo ver a camada {string} adicionada à visualização') do |camada|
  expect(page).not_to have_css('section.box-layers', text: camada)
end

E('a camada {string} está ativada') do |camada|
  expect(find('div.box-layer-info p', text: "TÍTULO: #{camada}").sibling('.btns').find('button').text).to eq('Desativar')
end

def clicar_acao_camada(acao, camada)
    element = find('div.box-layer-info p', text: "TÍTULO: #{camada}").ancestor('.box-layer-info')
    element.find('button', text: "#{acao}").click
end