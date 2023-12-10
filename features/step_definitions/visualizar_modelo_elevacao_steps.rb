include Capybara::DSL

# Passos comuns

Dado('que estou na página de mapa') do
    visit('https://pauliceia.unifesp.br/portal/explore')
    @page_instance = page
  end
  
  Quando('abro o seletor de camadas da plataforma') do
    find('p.btn_sidebar').click
  end
  
# Colorido

  Quando('eu clico no switch do Modelo Digital de Elevação de São Paulo colorido') do
    element = find(:xpath, '(//div[@class="el-switch"])[8]') # clico no switch do modelo colorido
    element.click
  end

  Quando('eu clico novamente no switch do Modelo Digital de Elevação de São Paulo colorido') do
    element = find(:xpath, '(//div[@class="el-switch is-checked"])[3]') # clico no terceiro switch novamente
    element.click
  end

  Então('eu devo ver o Modelo Digital de Elevação de São Paulo colorido ativado') do
    find(:xpath, '(//div[@class="el-switch is-checked"])[3]') # acha o terceiro switch ligado
  end

  Então('eu devo ver o Modelo Digital de Elevação de São Paulo colorido desativado') do
    expect(@page).to have_no_xpath('(//div[@class="el-switch is-checked"])[3]') # nao encontra um terceiro switch
  end

# Tons de cinza

  Quando('eu clico no switch do Modelo Digital de Elevação de São Paulo tons de cinza') do
    element = find(:xpath, '(//div[@class="el-switch"])[9]')
    element.click
  end

  Então('eu devo ver o Modelo Digital de Elevação de São Paulo tons de cinza ativado') do
    find(:xpath, '(//div[@class="el-switch is-checked"])[3]') # acha o terceiro switch ligado
  end

  Quando('eu clico novamente no switch do Modelo Digital de Elevação de São Paulo tons de cinza') do
    element = find(:xpath, '(//div[@class="el-switch is-checked"])[3]') # clico no terceiro switch novamente
    element.click
  end
  
  Então('eu devo ver o Modelo Digital de Elevação de São Paulo tons de cinza desativado') do
    expect(@page).to have_no_xpath('(//div[@class="el-switch is-checked"])[3]') # nao encontra um terceiro switch
  end



