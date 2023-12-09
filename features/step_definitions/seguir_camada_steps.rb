Dado('que estou logado, na pagina de mapa, abri o seletor de camadas e ativei a camada {string} e estou com suas informações ativas') do |camada|
  steps %Q{
    Dado que eu acesso o site "https://pauliceia.unifesp.br/portal/explore"
    Quando eu clico no link "Entrar"
    Então eu quero ser redirecionado para a página de login
    Quando eu preencho o campo de email com "pauliceiateste@gmail.com"
    E eu preencho o campo de senha com "Testepauliceia12345"
    E eu clico no botão "Entrar"
    Então eu quero fazer login
    Dado que estou na página de mapa, abri o seletor de camadas e ativei a camada "#{camada}"
    Quando eu clico no botão de configurações da camada "#{camada}"
    E eu clico no botão de informações da camada
    Então eu vejo as informações da camada em um popup
  }
end

Dado('que eu sigo a camada {string}') do |camada|
  steps %Q{
    Dado que eu acesso o site "https://pauliceia.unifesp.br/portal/explore"
    Quando eu clico no link "Entrar"
    Então eu quero ser redirecionado para a página de login
    Quando eu preencho o campo de email com "pauliceiateste@gmail.com"
    E eu preencho o campo de senha com "Testepauliceia12345"
    E eu clico no botão "Entrar"
    Então eu quero fazer login
    Dado que estou na página de mapa, abri o seletor de camadas e ativei a camada "#{camada}"
    Quando eu clico no botão de configurações da camada "#{camada}"
    E eu clico no botão de informações da camada
    Então eu vejo as informações da camada em um popup
    Quando eu clico no botão de seguir a camada "#{camada}"
    Então eu espero ver uma mensagem de sucesso indicando que a camada foi seguida
    E eu espero ver o botão de deixar de seguir a camada
  }
end

Quando('eu clico no botão de seguir a camada {string}') do |camada|
  find('button.btn.el-tooltip', text: "person_add").click
end

Então('eu espero ver uma mensagem de sucesso indicando que a camada foi seguida') do
  expect(page).to have_content("re following the layer.")
  # have content não identifica aspas simples, por isso só foi considerado "re following the layer."
end

Então('eu espero ver uma mensagem de sucesso indicando que a camada não é mais seguida') do
  expect(page).to have_content("re not following the layer.")
  # have content não identifica aspas simples, por isso só foi considerado "re not following the layer."
end

Quando('eu clico no botão de deixar de seguir a camada {string}') do |camada|
  find('button.btn.el-tooltip', text: 'person_add_disabled').click
end

E('eu espero ver o botão de deixar de seguir a camada') do
  expect(page).to have_css('button.btn.el-tooltip', text: 'person_add_disabled')
end

Dado('que não estou logado, na pagina de mapa, abri o seletor de camadas e ativei a camada {string} e estou com suas informações ativas') do |camada|
  steps %Q{
    Dado que estou na página de mapa, abri o seletor de camadas e ativei a camada "#{camada}"
    Quando eu clico no botão de configurações da camada "#{camada}"
    E eu clico no botão de informações da camada
    Então eu vejo as informações da camada em um popup
  }
end

Então('eu espero ver uma mensagem de erro 404') do
  expect(page).to have_content('Error: Request failed with status code 401')
end