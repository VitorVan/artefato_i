require 'webmock/cucumber'

Dado('que estou logado') do
  steps %Q{
    Dado que eu acesso o site "https://pauliceia.unifesp.br/portal/explore"
    Quando eu clico no link "Entrar"
    Então eu quero ser redirecionado para a página de login
    Quando eu preencho o campo de email com "pauliceiateste@gmail.com"
    E eu preencho o campo de senha com "Testepauliceia12345"
    E eu clico no botão "Entrar"
    Então eu quero fazer login
  }
end

Quando('clico no menu de perfil') do
  botao_menu = find('button[md-menu-trigger=""]').click
end

Quando('clico em Painel') do
  find('a[href="/portal/dashboard"]').click
end

Quando('clico em Palavras Chave no menu lateral') do
  find('span.md-list-item-text', text: 'Palavras-chave').click
end

Quando('escrevo o nome {string} no campo nome') do |palavra|
  fill_in('Nome', with: "#{palavra}")
end

Quando('clico em Submit') do
  @res = stub_request(:post, "https://pauliceia.unifesp.br/api/vgi/api/keyword/create")
    .to_return(status: 200, body: '{"keyword_id": 5030}')

  find('a.btn.btn-dark.styleBtn', text: 'Submit').click
end

Então('devo ver uma resposta com o id da palavra-chave') do
  expect(@res.response.status[0]).to eq 200
  expect(@res.response.body).to eq '{"keyword_id": 5030}'
end

E("devo ver uma mensagem de sucesso") do
  expect(page).to have_content("The Keyword was created with success!")
end

Dado('que tenho a palavra chave {string} cadastrada') do |string|
  steps %Q{
    Quando clico no menu de perfil
    E clico em Painel
    E clico em Palavras Chave no menu lateral
    E escrevo o nome "Palavra chave teste" no campo nome
    E clico em Submit
    Então devo ver uma resposta com o id da palavra-chave
  }
end

Quando('clico no botão de excluir da palavra chave {string}') do |string|
  @res = stub_request(:delete, "https://pauliceia.unifesp.br/api/vgi/api/keyword/\/.*/")
    .to_return(status: 403, body: '<html><title>403: Forbidden</title><body>403: Forbidden</body></html>')

  div_palavras_chave = find('div.card-body', text: "Palavra chave teste")
  within(div_palavras_chave) do
    div_palavra_chave = find('div.row', text: "Palavra chave teste")
    within(div_palavra_chave) do
      find('button.btn-danger').click
    end
  end
end

Então('devo ver uma resposta com erro') do
  expect(@res.response.status[0]).to eq 403
  expect(@res.response.body).to eq '<html><title>403: Forbidden</title><body>403: Forbidden</body></html>'
end

Então('devo ver uma mensagem de erro') do
    expect(page).to have_content("The administrator is who can update/delete the keyword.")
end
