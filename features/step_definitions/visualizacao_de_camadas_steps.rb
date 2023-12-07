Dado('que estou na página de mapa') do
  visit('https://pauliceia.unifesp.br/portal/explore')
end

Dado("que estou na página de mapa, abri o seletor de camadas e ativei a camada {string}") do |camada|
  steps %Q{
    Dado que estou na página de mapa
    Quando abro o seletor de camadas
    E eu clico no ícone de adicionar ou remover camadas
    E eu clico no botão "Ativar" da camada "A enchente de 1850"
    E eu clico no icone de fechar
    Então eu devo ver a camada "A enchente de 1850" adicionada à visualização 
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
  expect(page).to have_css('section.box-layers', text: 'A enchente de 1850')
end

Então('eu não devo ver a camada {string} adicionada à visualização') do |camada|
  expect(page).not_to have_css('section.box-layers', text: 'A enchente de 1850')
end

E('a camada {string} está ativada') do |camada|
  expect(find('div.box-layer-info p', text: 'TÍTULO: A enchente de 1850').sibling('.btns').find('button').text).to eq('Desativar')
end

# Método auxiliar para clicar na ação de uma camada específica
def clicar_acao_camada(acao, camada)
    element = find('div.box-layer-info p', text: "TÍTULO: #{camada}").ancestor('.box-layer-info')
    element.find('button', text: "#{acao}").click
end

# Método auxiliar para verificar se uma camada está ativada na visualização
def camada_ativada?(camada)
  # Lógica para verificar se a camada está ativada na visualização
  # Use métodos do Capybara para verificar isso
  # Por exemplo: find("#camada-#{camada}").checked? (se for um checkbox)
end
