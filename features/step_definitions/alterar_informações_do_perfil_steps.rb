Quando('clico em Meu perfil') do
  find('a[href="/portal/dashboard/profile"]').click
end

E('insiro um novo nome no campo de Nome') do
  @userProfilePage = UserProfilePage.new
  name = @userProfilePage.random_string(10)
  label = find('label', text: 'Nome')
  input_field = label.find(:xpath, './following-sibling::input')
  input_field.fill_in(with: name)
end

E('insiro um novo nome no campo de User Name') do
  @userProfilePage = UserProfilePage.new
  username = @userProfilePage.random_string(10)
  label = find('label', text: 'User Name')
  input_field = label.find(:xpath, './following-sibling::input')
  input_field.fill_in(with: username)
end

E('clico em Submit no card de perfil') do
  find('a.btn.btn-primary', text: 'Submit').click
end

Então('espero ver a mensagem {string}') do |mensagem|
  expect(page).to have_content(mensagem)
end

E('estar na página de painel') do
  expect(page).to have_current_path('/portal/dashboard/home')
end
