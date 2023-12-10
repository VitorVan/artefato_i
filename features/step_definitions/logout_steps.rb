Quando('clico em sair') do
  find('button.md-list-item-container.md-button-clean', text: "exit_to_app").click
end

Então('devo ver uma mensagem de adeus') do
  expect(page).to have_content('Até breve!')
end

E("devo ver o botão de login") do
  expect(page).to have_css('a[href="/portal/login"]')
end