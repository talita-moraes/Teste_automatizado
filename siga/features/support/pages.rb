class LoginPage
    include Capybara:: DSL

    def faz_login(email,senha)
        find('#cpf').set email 
        find('#txtPassword').set senha
        click_button 'Entrar'
    end
end