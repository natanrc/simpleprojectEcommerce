*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/productKeywords/orderKeywords.robot 
Resource            ../Resources/loginKeywords.robot  
Suite Setup         Open Browser                    ${url}             ${browser}
Suite Teardown      Close Browser

*** Variables ***
${browser}          firefox
${url}              https://www.saucedemo.com/
${user}             standard_user
${pwd}              secret_sauce
${fname}            mata
${lname}            sampe
${postal}           235568

*** Test Cases ***
Verify valid user login 
    [Documentation]                     Login with valid username and password
    [Tags]                              Login
    Enter User Name                     ${user}
    Enter valid password                ${pwd}               
    Click button login   


Verify user should be can order a Product 
    [Documentation]         Order a Product 
    [Tags]                  OrderOneProduct

    verify products page is shown
    Select add to cart button
    Verify cart icon for product, 1 should be display
    Click icon cart
    Click Button Checkout
    Verify input data fist name         ${fname}           
    Verify input data Last name         ${lname}                
    Verify input data postal code       ${postal}        
    Click button Continue
    Click Button Finish 
    Verify that product should be successfully order



