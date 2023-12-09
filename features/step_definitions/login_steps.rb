Dado('que eu acesso o site {string}') do |site_url|
  visit(site_url)
end

Quando('eu clico no link {string}') do |button_text|
  find('a[href="/portal/login"]').click
end

Quando('eu clico no botão {string}') do |button_text|
  find('button[type="submit"]', text: 'Entrar').click
end

Então('eu quero ser redirecionado para a página de login') do
  expect(page).to have_current_path('https://pauliceia.unifesp.br/portal/login')
end

Quando('eu preencho o campo de email com {string}') do |email|
  fill_in('E-mail', with: email)
end

E('eu preencho o campo de senha com {string}') do |password|
  fill_in('Senha', with: password)
end

Então('eu quero fazer login') do
  expect(page).to have_content('BEM-VINDO')
end

Então('eu quero ver uma mensagem de erro de login') do
  expect(page).to have_content('E-mail ou senha incorreta!')
end
