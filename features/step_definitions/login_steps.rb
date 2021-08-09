Dado('que eu acesso a página principal') do
    visit 'http://165.227.93.41/lojinha-web/'
end
  
Quando('eu faço o login com {string} e {string}') do |usuario, senha|
    @usuario = usuario
    find('#usuario').set usuario
    find('#senha').set senha
    click_button 'Entrar'
end
  
Então('devo ser autenticado com sucesso') do
    expect(page).to have_content @usuario
end

Então('devo ver a {string}') do |titulo|
    expect(page).to have_content titulo
end

Então ('devo ver a mensagem {string}') do |alerta|
    expect(page).to have_content alerta
end

