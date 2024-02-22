
*** Settings ***
Library    SeleniumLibrary
Resource    LoginKeyWords.robot
Test Teardown    Close Browser

*** Test Cases ***
Ingreso a ASIXTO con credenciales validas
    Given un usuario se encuentra en la plataforma de inicio de sesión de ASIXTO
    When el usuario ingresa las credenciales de acceso en el formulario de Login
    Then se visualiza el item Contactos