*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}                                https://www.amazon.com.br/ 
${MENU_MAIS_VENDIDOS}                 //a[@href='/gp/bestsellers/?ref_=nav_cs_bestsellers']
${TITULO_MAIS_VENDIDOS}               //span[@id='zg_banner_text']
${HEADER_MAIS_VENDIDOS}               Mais vendidos  
*** Keywords ***
Abrir o navegador
    Open Browser                      browser=chrome    options=add_experimental_option("detach", True)
    Maximize Browser Window
    
Fechar o navegador
    Capture Page Screenshot
    Close Browser
    
Acessar a home page do site Amazon.com.br
    Go To                            url=${URL}
Entrar no menu "Mais vendidos"
    Wait Until Element Is Visible    locator=${MENU_MAIS_VENDIDOS} 
    Click Element                    locator=${MENU_MAIS_VENDIDOS}
Verificar se o titulo da página "${TITULO}"
    Wait Until Element Contains      locator=${TITULO_MAIS_VENDIDOS}     text=${HEADER_MAIS_VENDIDOS}
    Title Should Be    title=${TITULO}
Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//a[@href='/gp/bestsellers/automotive/ref=zg_bs_nav_automotive_0'][contains(.,'${NOME_CATEGORIA}')]