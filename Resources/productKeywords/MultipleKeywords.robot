*** Settings ***
Library                 SeleniumLibrary

*** Keywords ***
Verify filter product
    Element Should Be Visible       //select[@class="product_sort_container"]
    Select From List By Index       //select[@class="product_sort_container"]           1
    List Selection Should Be        //select[@class="product_sort_container"]           Name (Z to A)
    sleep           5s

Select Add to Cart button for the First Product
    Click Element                   //button[@id="add-to-cart-sauce-labs-onesie"]
    Element Should Contain          //span[@class="shopping_cart_badge"]                 1

Select Add to Cart button for the Second Product
    Click Element                   //button[@id="add-to-cart-sauce-labs-bolt-t-shirt"]
    Element Should Contain          //span[@class="shopping_cart_badge"]                 2

Select Add to Cart button for the third Product
    Click Element                   //button[@id="add-to-cart-sauce-labs-backpack"]
    Element Should Contain          //span[@class="shopping_cart_badge"]                 3

Verify to remove 1 product from cart
    Click Element                   //button[@id="remove-sauce-labs-backpack"]
    Element Should Contain          //span[@class="shopping_cart_badge"]                 2

Verify button continue shopping
    Click Element                   //button[@id="continue-shopping"]
    List Selection Should Be        //select[@class="product_sort_container"]           Name (A to Z)
    Click Element                  //button[@id="add-to-cart-sauce-labs-bike-light"]
    Element Should Contain          //span[@class="shopping_cart_badge"]                 3

