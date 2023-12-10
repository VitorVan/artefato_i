#cenario1
Dado('que eu estou na pagina de registro de novos usuarios') do
  @test1 = RegisterPage.new
  @test1.load
end

Quando('terminar de preencher todos os campos da tela, incluindo a aceitacao de termos de uso') do
  username = @test1.random_string(10)
  name = @test1.random_string(10)
  email = @test1.random_string(20) + '@gmail.com'

  @test1.userRegister(name, email, "123456789", username)
  valid = @test1.checkboxChecked
  expect(valid).to be_truthy
end

Dado('sigo com o cadastro') do
  @test1.buttonRegisterDetected
end

Então('eu devo receber uma confirmacao de cadastro da pagina') do
  expect(page).to have_content('SUCESSO')
end

#cenario_dois
Dado('que eu estou na página de registro de novos usuários') do
  @test2 = RegisterPage.new
  @test2.load
end

Dado('preencho todos os campos da tela') do
  username = @test2.random_string(10)
  name = @test2.random_string(10)
  email = @test2.random_string(20) + '@gmail.com'

  @test2.userRegister(name, email, "123456789", username)
end
Mas('não preencho o checkbox de aceitação de termos de uso') do
  expect(@test2.checkboxField.checked?).to be_falsey
end
Então('eu serei impedido de realizar o cadastro') do
  expect(page).to have_selector('button#btn-register[disabled]', wait: 20)
end

#cenario_tres
Dado('que eu sou um usuario cadastrado preenchendo todos os campos solicitados na pagina de registro') do
  @test3 = RegisterPage.new
  @test3.load

  @test3.userRegister(CREDENCIAL[:name], CREDENCIAL[:email], CREDENCIAL[:password], CREDENCIAL[:username])

  valid = @test3.checkboxChecked
  expect(valid).to be_truthy
end

Quando('tento seguir com o cadastro') do
  @test3.buttonRegisterDetected
end

Então('eu sou impedido de realizar o cadastro') do
  expect(page).to have_content('ERROR')
end
