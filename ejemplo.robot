*** Settings ***
Documentation     Example of a basic Hello World test case
Library           OperatingSystem

*** Test Cases ***
Hello World Test
   Log	Hello, world!
    ${output}= Run echo "Hello, world!"
    Log    ${output}