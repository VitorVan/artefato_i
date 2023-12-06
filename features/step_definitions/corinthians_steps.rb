Dado("que eu acesso o site do Pauliceia") do
   visit 'https://pauliceia.unifesp.br/portal/home'
end
 Quando("eu clico em Mapa") do
   find("a", :text => /\AMapa\z/).click
end
 Então("eu quero ser redirecionado para a página de mapa") do
   expect(current_url).to  eq('https://pauliceia.unifesp.br/portal/explore')
 end