
Quando ('eu preencho o campo notificações com "Teste notificação camada"') do
    fill_in('inputReference', with: 'Teste notificação camada')
end

E('clico em "Submit"') do
    element = find(:xpath,'(//a[@class="btn btn-primary"])[1]')
    element.click
end

Então('devo ver a notificação adionada abaixo') do 
    expect(page).to have_content('The notification was added with success!')
end