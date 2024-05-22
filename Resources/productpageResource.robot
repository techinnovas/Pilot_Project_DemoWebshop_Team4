*** Settings ***
Documentation    It contains variable and keyword of product page
Library    SeleniumLibrary

*** Variables ***
${product_name}    xpath://a[text()="MacBook air"]
${addtocartbutton}    xpath=//a[text()="Add to cart"]

*** Keywords ***

To click samsung mobile phone
    Click Element    ${product_name}  

To verify that we navigates to particular product page
    Element Text Should Be    ${addtocartbutton}    Add to cart

To click add to cart button
    Click Element    ${addtocartbutton}

