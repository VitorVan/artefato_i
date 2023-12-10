Quando('eu clico no botão de baixar camada') do
  find('i.md-icon', text: 'save_alt').click
end

Então('eu baixei um arquivo com as informações da camada {string}') do |string|
  @test3 = AddRessDownloadPage.new
  @test3.load

  @test3.extract_zip("download//a_camada_de_teste.zip", "download//baixar_camada")

  files = ['a_camada_de_teste.dbf', 'a_camada_de_teste.prj', 'a_camada_de_teste.shp', 'a_camada_de_teste.shx','a_camada_de_teste.cst','wfsrequest.txt','a_camada_de_teste.zip']
  valid = @test3.filesChecked("download//baixar_camada", files)
  expect(valid).to be_truthy

  @test3.deleteFiles("download")
end