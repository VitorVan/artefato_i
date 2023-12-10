Quando('eu clico no botão de configurações da camada {string}') do |camada|
  layer = find('span', text: "#{camada}")
  settings = layer.find('button.btn-view i.md-icon', text: 'settings')
  settings.click
end

Quando('eu clico no botão de zoom') do
  find('i.md-icon', text: 'center_focus_strong').click
end

Então('eu vejo o mapa com zoom na camada ativa') do
  expect(page).to have_css('canvas.ol-unselectable')
end