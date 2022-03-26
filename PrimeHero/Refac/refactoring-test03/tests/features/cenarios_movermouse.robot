*** Settings ***
Resource                ../../src/config/package.robot
Test Setup              Abrir o navegador    
Test Teardown           Fechar o navegador

*** Test Case ***
Caso de Teste 03: Listar Produtos
    Acessar a página home do site
    Passar o mouse por cima da categoria "WOMEN" no menu principal superior de categorias
    Clicar na sub categoria "Summer Dresses"
    Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página