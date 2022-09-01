*** Settings ***
Library             SeleniumLibrary
Resource            ../../Resources/productKeywords/MultipleKeywords.robot
Resource            ../../Resources/productKeywords/orderKeywords.robot
Resource            ../../Resources/loginKeywords.robot  
Suite Setup         Open Browser                    ${url}             ${browser}
Suite Teardown      Close Browser

*** Variables ***
${browser}          firefox
${url}              https://www.saucedemo.com/
${user}             standard_user
${pwd}              secret_sauce
${fname}            Natan
${lname}            sampe
${postal}           235568

*** Test Cases ***
Verify valid user login 
    [Documentation]                     Login with valid username and password
    [Tags]                              Login
    Enter User Name                     ${user}
    Enter valid password                ${pwd}               
    Click button login  
    Verify products page is shown

Verify that user should be able to ofilter Product 
    [Documentation]         verify filter Product Name (Z to A) 
    [Tags]                  filterProduct
    
    Verify filter product

Verify that user should be able to order multiple proucts
    [Documentation]         Order Multiple Product in product page 
    [Tags]                  OrderMultipleProduct
    
    Select Add to Cart button for the First Product
    Select Add to Cart button for the Second Product
    Select Add to Cart button for the third Product

Verify that user should be able to remove order products
    [Documentation]         Remove 1 order product in product page 
    [Tags]                  RemoveOrderProduct

    Click icon cart
    Verify to remove 1 product from cart

Verify user should be able to click button continue shopping
    [Documentation]         Click button continue shopping and add 1 more product
    [Tags]                  ContinueShopping

    Verify button continue shopping

Verify that user should be able to continue checkout multiple product
    [Documentation]         Order multiple product and continue checkout
    [Tags]                  checkoutOrderProduct

    Click icon cart
    Click Button Checkout
    Verify input data fist name         ${fname}           
    Verify input data Last name         ${lname}                
    Verify input data postal code       ${postal}        
    Click button Continue
    Click Button Finish 
    Verify that product should be successfully order