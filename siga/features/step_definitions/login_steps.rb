Dado("que eu acesso a página principal") do                                      
    visit 'https://www.siga.ufrpe.br/ufrpe/'   

end                                                                              
                                                                                   
Quando("eu faço login com {string} e {string}") do |email, senha|             
   @email = email 
   LoginPage.new.faz_login(email,senha)
end                                                                              
                                                                                   
Então("devo ser autenticado com sucesso") do                                    
    expect(page).to have_content @mail 

end                                                                              
                                                                                   
Então("devo ver a mensagem {string}") do |mensagem|   
    sleep 1                             
    expect(page).to have_content mensagem     
end                                                                              
                                                                                   