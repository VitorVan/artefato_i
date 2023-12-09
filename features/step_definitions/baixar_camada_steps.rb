Quando('eu clico no botão de baixar camada') do
  find('i.md-icon', text: 'save_alt').click
end

Então('eu baixei um arquvio com as informações da camada {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end