Language: Spanish
*** Settings ***
Library    SeleniumLibrary
Resource    LoginKeyWords.robot
Test Teardown    Close Browser

*** Casos De Prueba ***
Ingreso a ASIXTO con credenciales validas
    Dado un usuario se encuentra en la plataforma de inicio de sesión de ASIXTO
    Cuando el usuario ingresa las credenciales de acceso en el formulario de Login
    Entonces se visualiza el item Contactos