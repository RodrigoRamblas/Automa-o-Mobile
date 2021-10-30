Dado('que acesso a tela Click Simples') do
    @nav.tap_hamburger
    @nav.tap_by_text("BOTÕES")
    @nav.tap_by_text("CLIQUE SIMPLES")
  end
  
  Quando('faço um click simples') do
    find_element(:id, "io.qaninja.android.twp:id/short_click").click
  end
  
  Então('devo ver o texto: {string}') do |expect_text|
    #expect(@toaster.toast.text).to eql expect_text
  end