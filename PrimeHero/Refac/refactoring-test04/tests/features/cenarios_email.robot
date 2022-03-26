*** Settings ***
Resource                ../../src/config/package.robot
Test Setup              Abrir o navegador    
Test Teardown           Fechar o navegador

*** Test Case ***
Caso de Teste 04: Adicionar Cliente
    Acessar a página home do site
    Clicar em "Sign in"
    Informar um e-mail válido
    Clicar em "Create an account"
    Preencher os dados obrigatórios
    Submeter cadastro
    Conferir se o cadastro foi efetuado com sucesso
