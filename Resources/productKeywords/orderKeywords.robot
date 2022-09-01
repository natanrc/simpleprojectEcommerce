*** Settings ***
Library                 SeleniumLibrary

*** Keywords ***
Verify products page is shown
    Element Should Be Visible  //div[@class="inventory_item"][1]

Select add to cart button
    Click Element       //button[@id="add-to-cart-sauce-labs-backpack"]     

Verify cart icon for product, 1 should be display
    Element Should Contain       //span[@class="shopping_cart_badge"]                1

Click icon cart
    Click Element              //div[@id="shopping_cart_container"]
    Element Should Contain     //span[@class="title"]               YOUR CART

Click Button Checkout
    Click Element       //button[@id="checkout"]

Verify input data fist name
    [Arguments]         ${fname}
    Input Text          //input[@id="first-name"]           ${fname}

Verify input data Last name
    [Arguments]         ${lname}
    Input Text          //input[@id="last-name"]            ${lname}

Verify input data postal code
    [Arguments]         ${postal}
    Input Text          //input[@id="postal-code"]          ${postal}   

Click button Continue
    Click Element       //input[@id="continue"]

Click Button Finish
    Click Element       //button[@id="finish"]

Verify that product should be successfully order
    Element Should Contain      //h2[@class="complete-header"]                  THANK YOU
    Click Element       //button[@id="back-to-products"]