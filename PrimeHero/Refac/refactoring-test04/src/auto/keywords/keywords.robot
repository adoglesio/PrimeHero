*** Settings ***
Resource     ../../config/package.robot

*** Keywords ***
Acessar a página home do site
    Go To               ${URL}
    Title Should Be     ${TITULO_HOMEPAGE}

Clicar em "Sign in"
    Click Element          xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a

Informar um e-mail válido
    Wait Until Element Is Visible            xpath=//*[@id="create-account_form"]
    Input Text                               ${CAIXA_EMAIL}        mecsantoantonio@hotmail.com
Clicar em "Create an account"
    Click Element      ${BOTAO_PESQUISAR}
    
 Preencher os dados obrigatórios
    Wait Until Element Is Visible    xpath=//*[@id="noSlide"]        10s

Submeter cadastro
    Wait Until Element Is Visible    xpath=//*[@id="account-creation_form"]/div[1]/div[1]
    Click Element                    xpath=//*[@id="id_gender1"]
    Input Text                       ${NOME}         Fernando
    Input Text                       ${SOBRENOME}    Gomes Santos
    Input Password                   ${SENHA}        iEt7BZVycQ@!9Xf
    Click Element                    ${DIA}
    Click Element                    xpath=//*[@id="days"]/option[31]        
    Click Element                    ${MÊS}
    Click Element                    xpath=//*[@id="months"]/option[5]
    Click Element                    ${ANO} 
    Click Element                    xpath=//*[@id="years"]/option[34] 
    Click Element                    ${NEWSLETTER}
    Click Element                    ${OPTIN}          
    Input Text                       ${NOME}         Fernando
    Input Text                       ${SOBRENOME}    Gomes   
    Input Text                       ${CAMPANHIA}    CASA  
    Input Text                       ${ENDEREÇO}     Rua da pituba
    Input Text                       ${CIDADE}       Dallas
    Click Element                    ${PAIZ}
    Click Element                    xpath=//*[@id="id_state"]/option[46]
    Input Text                       ${POSTCODE}   95491
    Input Text                       ${FONE}         73999257758 
    Click Element                    xpath=//*[@id="submitAccount"]/span  

Conferir se o cadastro foi efetuado com sucesso
    Wait Until Element Is Visible            xpath=//*[@id="center_column"]/p        10s
    Title Should Be                          My account - My Store
    Capture Page Screenshot