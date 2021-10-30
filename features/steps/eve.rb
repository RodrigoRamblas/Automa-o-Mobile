Quando('clico em {string}') do |string|
    @nav.tap_by_text(string)
    sleep 10
end