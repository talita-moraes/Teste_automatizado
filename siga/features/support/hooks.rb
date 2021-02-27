After ('@logout') do
    find('#botao_sair').click
end

After do |sceanario|
    #nome_cenario = sceanario.name.gsub(/[^A-Za-z0-9]/, '')
    #nome_cenario = nome_cenario.gsub('','_').downcase!
    #screenshot = "log/screenshots/#{nome_cenario}.png"
    #page.save_screenshot(screenshot)
    #embed(screenshot,'image/png', 'print')
end