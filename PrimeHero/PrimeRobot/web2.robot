* Settings *
Test Setup              Abrir o navegador
Test Teardown           Fechar o navegador
Library                 SeleniumLibrary
Library                 FakerLibrary
Library                 DebugLibrary

* Variables *
${BROWSER}          chrome
${URL}              http://automationpractice.com

* Test Case *
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site

Caso de Teste 02: Pesquisar produto inexistente
    Acessar a páguina home do site Automation Practice
    Digitar um produto inexistente no campo de pesquisa
    Clicar no botão pesquisar
    Conferi

* Keywords *
### setup
Abrir o navegador
  Open Browser  ${URL}  ${BROWSER}

### teardown
Fechar o navegador
  Close Browser

Acessar a página home do site Automation Practice
  #Go To               ${URL}
  Title Should Be     My Store

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
  Wait Until Element Is Visible  id=search_query_top  10s
  Input Text    id=search_query_top    ${PRODUTO}

Clicar no botão pesquisar
  Click Element  name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site
    Element Text Should Be  ${TITULO_PRODUTO}  ${PRODUTO}