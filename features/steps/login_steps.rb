Dado('que acesso a tela de Login') do
    @nav.tap_hamburger
    @nav.tap_by_text("FORMS")
    @nav.tap_by_text("LOGIN")
end
  
Quando('submeto minhas credenciais:') do |table|
    user = table.rows_hash
    @login.sing_in(user[:email], user[:senha])
end
  
Então('devo ver a notificação: {string}') do |notice|
    #puts get_source
    toast = find_element(xpath: "//android.widget.Toast")
    expect(toast.text).to eql notice
end