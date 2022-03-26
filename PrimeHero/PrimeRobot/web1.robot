*** Settings ***
Documentation           Aqui estarão presente os teste web a ideia é criar cenários de verificação com a library selenium      


Test Setup              Abrir Navegador  
Test Teardown           Fechar Navegador
Library                 SeleniumLibrary    

*** Variables ***
${BROWSER}        chrome
${URL}            http://automationpractice.com/index.php

*** Keywords ***
Abrir Navegador 
    Open Browser            browser=${BROWSER}
    Maximize Browser Window

Fechar Navegador
    Capture Page Screenshot
    Close Browser

Acessar a páguina home do site Automation Practice
    Go To                                       ${URL}
    Title Should Be                             My Store               

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Wait Until Element Is Visible    id=search_query_top    10s
    Input Text             id=search_query_top        ${PRODUTO}

Clicar no botão pesquisar
    Click Element        xpath=//*[@name='submit_search' and @type='submit']      
    Sleep    15s

Conferir mensagem "No results were found for you search "${PRODUTO}"
    Wait Until Element Is Visible            xpath=//*[@id="center_column"]/p    10s
    Title Should Be                          Search - My Store

*** Test Cases ***
Caso de Test 02: Pesquisar produto não existente
    Acessar a páguina home do site Automation Practice
    Digitar o nome do produto "itemNãoExistente" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir mensagem "No results were found for you search "itemNãoExistente""