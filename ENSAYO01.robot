Library    SeleniumLibrary

*** Keywords ***
Remote Browser
    ${prefs}       Create Dictionary
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}    add_experimental_option    prefs    ${prefs}
    ${chrome_options.binary_location}    Set Variable    /usr/bin/google-chrome
    ${options}=     Call Method     ${chrome_options}    to_capabilities      

    Create Webdriver    Chrome  executable_path=/usr/bin/chromedriver   desired_capabilities=${options}

    Go to     http://cnn.com
    Log    "Testing 123"  console=True

*** Test Cases ***
Valid Login
    Remote Browser
    [Teardown]  Close Browser