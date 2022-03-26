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

Conferir se o produto "${PRODUTO}" foi listado no site
    Wait Until Element Is Visible            xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img    10s
    Title Should Be                          Search - My Store
    Page Should Contain Image                xpath=//*[@id='center_column']//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']

*** Test Cases ***
Caso de Test 01: Pesquisar produto existente
    Acessar a páguina home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    conferir se o produto "Blouse" foi listado no site