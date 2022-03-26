*** Settings ***
Resource     ../../config/package.robot

*** Keywords ***
Acessar a página home do site
    Go To                                ${URL}
    Title Should Be                      My Store    10S

Passar o mouse por cima da categoria "${PRODUTO}" no menu principal superior de categorias
    Mouse Over                           xpath=//*[@id="block_top_menu"]/ul/li[1]/a
    Wait Until Element Is Visible        xpath=//*[@id="block_top_menu"]/ul/li[1]/ul 

Clicar na sub categoria "${NOME_PRODUTO}"
    Input Text             id=search_query_top        ${NOME_PRODUTO}
    Click Element                xpath=//*[@id="block_top_menu"]/ul/li[1]/ul/li[2]/ul/li[3]/a
    Capture Page Screenshot
        
Conferir se os produtos da sub-categoria "${NOME_PRODUTO}" foram mostrados na página
    Wait Until Element Is Visible       xpath=//*[@id="center_column"]
    Title Should Be                     Summer Dresses - My Store
    Page Should Contain Image           xpath=//*[@id="center_column"]/ul/li[1]/div/div[1]/div/a[1]/img
