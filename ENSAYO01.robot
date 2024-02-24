*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CHROMEDRIVER_PATH}    /usr/bin/google-chrome

*** Test Cases ***
Ejemplo de prueba
    Set Selenium Implicit Wait    10 seconds
    Open Browser    https://www.ejemplo.com    Chrome
    # Tu código de prueba continua aquí