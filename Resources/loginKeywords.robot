*** Settings ***
Library                 SeleniumLibrary
Variables                ../Locators/loginlocators.yaml

*** Keywords ***
Open browser windows
    [Arguments]         ${url}              ${browser}
    Open Browser        ${url}              ${browser}
    Maximize Browser Window

Enter User Name
    [Arguments]         ${user}
    Wait Until Element Is visible           ${logo}
    Input Text          ${txtInput_Username}                ${user}           

Enter valid password
    [Arguments]         ${pwd}
    Input Text          ${txtInput_Password}                 ${pwd}                               

Click button login
    Click Element       ${button_login}

user should be on product dasboard
    Element Should Contain      ${homeproduct_text}          PRODUCTS 

Close browser windows
    Close Browser       
