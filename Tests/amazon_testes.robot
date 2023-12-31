*** Settings ***
Documentation        Essa Suite testa o site da Amazon
Resource             amazon_resources.robot
Test Setup           Abrir o navegador
Test Teardown        Fechar o navegador
    

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Mais Vendidos"
    [Documentation]  Esse teste verifica o menu eletronicos do site da amazon
    ...              pode colocar muito mais texto aqui
    [Tags]           menus
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Mais vendidos"
    Verificar se o titulo da página "Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon"
    Verificar se aparece a categoria "Automotivo"

# Caso de Test 02 - Pesquisa de um produto
#     [Documentation]  Esse teste verifica a busca de um produto
#     [Tags]           busca_produtos smoke_test
#     # Acessar a home page do site Amazon.com.br
#     # Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#     # Clicar no botão de pesquisa
#     # Verificar o resultado da pesquisa se está listando o produto pesquisado