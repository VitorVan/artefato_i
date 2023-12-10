#cenario_um
Dado('que preencha as informacoes da camada nova') do
  @test1 = LayersPage.new
  @test1.load

  @test1.userLogin(CREDENCIAL[:email], CREDENCIAL[:password])

  NAME = @test1.random_string(10)
  description = @test1.random_string(100)

  @test1.keywordsSelect
  @test1.fillfields(NAME, description)
end

Dado('realize a adicao de uma referencia no formato ABNT') do
  @test1.refABNT(CREDENCIAL[:refABNT])
end

Quando('eu importar o shapefile dos enderecos da camada a ser adicionada') do
  @test1.uploadShapefile('baixados.zip')
end

Dado('configurar a data de referencia da camada') do
  @test1.buttonSendLayer1.click
  @test1.configDate('ano', 'YYYY')
end

Então('eu quero conseguir realizar o registro dela') do
  @test1.buttonSendLayer2.click
  @test1.layerExist(NAME)
  @test1.load
  #remoção da Camada após validação do teste
  visit('https://pauliceia.unifesp.br/portal/dashboard/home')
  @test1.removeLayer(NAME)
end

#cenario_dois
Dado('que eu quero excluir a camada que criei') do
  @test2 = LayersPage.new
  @test2.load
  @test2.userLogin(CREDENCIAL[:email], CREDENCIAL[:password])

  #criandoCamada a ser excluida
  NAME = @test2.random_string(10)
  description = @test2.random_string(100)

  @test2.keywordsSelect
  @test2.fillfields(NAME, description)
  @test2.refABNT(CREDENCIAL[:refABNT])
  @test2.uploadShapefile('baixados.zip')
  @test2.buttonSendLayer1.click
  @test2.configDate('ano', 'YYYY')
  @test2.buttonSendLayer2.click
  @test2.layerExist(NAME)
  @test2.load

  visit('https://pauliceia.unifesp.br/portal/dashboard/home')
end

Quando('eu localizo a camada que quero excluir') do
  valid = page.has_selector?('div.card-text div.row')
  expect(valid).to be_truthy
end

Então('a camada e excluida') do
  @test2.removeLayer(NAME)
end
