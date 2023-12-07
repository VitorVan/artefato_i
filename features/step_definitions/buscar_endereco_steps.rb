Dado('que estou na página {string}') do |pagina|
  visit(pagina)
end

Quando('eu procuro pelo endereço com rua {string}, número  {string} e ano {string}') do |rua, numero, ano|
  preencher_endereco(rua, numero, ano)
  click_button('Pesquisar')
end

Quando('eu procuro por um endereço vazio') do
  click_button('Pesquisar')
end

Quando('eu procuro por um endereço com rua {string}') do |rua|
  fill_in(:placeholder => 'nome da rua, número, ano', with: rua)
  click_button('Pesquisar')
end

Então('eu não devo obter uma mensagem de erro') do
  expect(page).not_to have_content('Pesquise por: rua, número, ano (0000)')
  expect(page).not_to have_content('Não encontramos pontos necessarios para a geolocalização nesse logradouro no ano buscado')
end

Então('eu devo ver uma mensagem de erro indicando a necessidade de procurar por rua, número, ano') do
  expect(page).to have_content('Pesquise por: rua, número, ano (0000)') 
end

Então('eu devo ver uma mensagem de erro indicando que não há pontos sufiicientes para a geolocalização com rua {string}, número  {string} e ano {string}') do |rua, numero, ano|
  expect(page).to have_content("Não encontramos pontos necessarios para a geolocalização nesse logradouro no ano buscado (#{rua}, #{numero}, #{ano})")
end

# Método auxiliar para preencher o endereço
def preencher_endereco(rua, numero, ano)
  fill_in(:placeholder => 'nome da rua, número, ano', with: "#{rua}, #{numero}, #{ano}")
end