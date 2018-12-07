*** Settings ***
Library     SeleniumLibrary
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Variables ***
${Browser}                       chrome
${URL}                           https://demo.bompracredito.com.br/emprestimo-pessoal/



*** Keywords ***
Abrir navegador
    open browser    ${URL}     chrome
    maximize browser window

Fechar navegador
    close browser

