*** Settings ***
Library    SeleniumLibrary
Resource    LoginObjectMap.robot
Resource    LoginTestData.robot

*** Keywords ***
Open Website
    ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --headless
    Open Browser    ${page}    chrome    options=${chrome_options}      executable_path=${CHROMEDRIVER_PATH}

un usuario se encuentra en la plataforma de inicio de sesión de ASIXTO
    Open Website
    Wait Until Element Is Visible    ${ingresarButton}
    Maximize Browser Window

el usuario ingresa las credenciales de acceso en el formulario de Login
    Input text    ${emailInput}    ${userValue}
    Input text    ${passwordInput}    ${passValue}
    Click element  ${ingresarButton}

se visualiza el item Contactos
    Page Should Contain    ${contactosLabel}