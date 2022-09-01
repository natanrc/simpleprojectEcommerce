*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/loginKeywords.robot      


*** Variables ***
${browser}          firefox
${url}              https://www.saucedemo.com/
${user}             standard_user
${pwd}              secret_sauce

*** Test Cases ***
Verify a valid login
    [Documentation]         Login with valid user name and password
    [Tags]                  Login                  

    Open browser windows                ${url}              ${browser}   
    Enter User Name                     ${user}
    Enter valid password                ${pwd}               
    Click button login
    user should be on product dasboard
    sleep       5s                      
    Close browser windows         
