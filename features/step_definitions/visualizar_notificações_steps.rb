Dado("que estou na página de mapa com as notificações abertas") do
  steps %Q{
    Dado que estou na página de mapa com o popup de bem-vindo fechado
    Quando eu clico no botão de notificações no meu lateral direito
    Então eu vejo as notificações
  }
end

Quando("eu clico no botão de notificações no meu lateral direito") do
  find('i.md-icon', text: 'message').click
end

Então('eu vejo as notificações') do
  notifications_div = find('div.box-info', text: "Notifications", visible: true)
  expect(notifications_div).to be_visible
end

Quando('eu clico no botão general') do
  find('div.el-tabs__item[role="tab"]', text: 'GENERAL').click
end

Então('eu vejo as notificações gerais') do
  div_element = find('div.el-tabs__item[role="tab"].is-active', text: 'GENERAL')
end

Quando('eu clico no botão personal') do
  find('div.el-tabs__item[role="tab"]', text: 'PERSONAL').click
end

Então('eu vejo as notificações pessoais') do
  div_element = find('div.el-tabs__item[role="tab"].is-active', text: 'PERSONAL')
end

Quando('eu clico no botão following') do
    find('div.el-tabs__item[role="tab"]', text: 'FOLLOWING').click
end

Então('eu vejo as notificações seguidas') do
  div_element = find('div.el-tabs__item[role="tab"].is-active', text: 'FOLLOWING')
end

Quando('eu clico no botão de fechar') do
  notifications_div = find('div.box-info', text: "Notifications", visible: true)
  notifications_div.find('button.btn i.md-icon', text: 'close').click
end

Então('eu não vejo as notificações') do
  notifications_div = find('div.box-info', text: "Notifications", visible: :all)
  expect(notifications_div).not_to be_visible
end