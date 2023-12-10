#cenario_um
Dado('que eu busque por 3 enderecos no mapa por meio de um arquivo csv no padrao estabelecido') do
  @test1 = AddRessDownloadPage.new
  @test1.load
  @test1.batchSearchButton.click
end
Quando('eu fizer o upload do arquivo') do
  @test1.infoWelcomeCloseButton.click
  @test1.uploadClick('AddressCSV.csv')
end
Dado('fazer a identificacao das colunas solicitadas pela plataforma') do
  @test1.columnsidentification('nome da rua', 'numero', 'ano')
end
Então('ao realizar a busca desejo saber se os meus enderecos foram encontrados') do
  @test1.searchBatchCSV

  alert_text = @test1.alertCheck
  valid = @test1.validFoundAddress(alert_text)
  expect(valid).to be_truthy
end

=begin
Dado('se meus enderecos foram marcados no mapa') do
  pending
end
=end

#cenario_dois
Dado('que eu tenha realizado os passos anteriores de pesquisa de lote de enderecos') do
  @test2 = AddRessDownloadPage.new
  @test2.load
  @test2.batchSearchButton.click
  @test2.infoWelcomeCloseButton.click
  @test2.uploadClick('AddressCSV.csv')
  @test2.columnsidentification('nome da rua', 'numero', 'ano')
  @test2.searchBatchCSV
  alert_text = @test2.alertCheck
  valid = @test2.validFoundAddress(alert_text)
  expect(valid).to be_truthy
end


Quando('realizo o download do shapefile dos enderecos buscados') do
  #driver = @test2.directDownload('C:\Users\souza\Documents\Ruby-Repo\artefato_i')
  #buttonDownload = driver.find_element(text: 'Download')
  #buttonDownload.click
  @test2.downloadFilesButton.click
  @test2.load
end


Então('o arquivo e baixado') do
  @test2.extract_zip("download//download.zip", "download")

  files = ['addresscsv.dbf', 'addresscsv.prj', 'addresscsv.shp', 'addresscsv.shx']
  valid = @test2.filesChecked("download//myshapes", files)
  expect(valid).to be_truthy

  @test2.deleteFiles("download")
end
