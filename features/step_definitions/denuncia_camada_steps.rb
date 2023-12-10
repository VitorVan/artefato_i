Quando ('eu preencho o campo notificações com "Teste denuncia camada"') do
    fill_in('inputReference', with: 'Teste denuncia camada')
end

E('clico em "!"') do
    element = find(:xpath,'(//i[@class="md-icon md-icon-font md-theme-default"])[9]')
    element.click
end

Então('eu espero ver uma mensagem de erro 401') do
    expect(page).to have_content('Error: Request failed with status code 401')
end


