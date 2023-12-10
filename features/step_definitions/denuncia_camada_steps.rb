Quando ('eu preencho o campo notificações com "Teste denuncia camada"') do
    fill_in('inputReference', with: 'Teste denuncia camada')
end

E('clico em "!"') do
    element = find(:xpath,'(//i[@class="md-icon md-icon-font md-theme-default"])[9]')
    element.click
end