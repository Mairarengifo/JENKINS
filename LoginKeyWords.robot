*** Settings ***
Library    SeleniumLibrary
Resource    LoginObjectMap.robot
Resource    LoginTestData.robot


*** Keywords ***
un usuario se encuentra en la plataforma de inicio de sesión de ASIXTO
    Open browser    ${page}   ${browser}
    Wait Until Element Is Visible    ${ingresarButton}
    Maximize Browser Window

el usuario ingresa las credenciales de acceso en el formulario de Login
    Input text    ${emailInput}    ${userValue}
    Input text    ${passwordInput}    ${passValue}
    Click element  ${ingresarButton}

se visualiza el item Contactos
    Page Should Contain    ${contactosLabel}