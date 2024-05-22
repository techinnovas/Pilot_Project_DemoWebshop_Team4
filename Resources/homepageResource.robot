*** Settings ***
Documentation    This document contains keyword and variable of home page
Library    SeleniumLibrary

*** Variables ***
${login_option}    id:login2
${home_option}    linktext:Home 
${contact_option}    linktext:Contact
${aboutus_option}    linktext:About us
${cart_option}    id:cartur
${signup_option}    id:signin2
${Mobile_clicking}    xpath://a[text()="Samsung galaxy s6"]
${laptop_option}    xpath:(//a[@class="list-group-item"])[3]
${laptop_page}    xpath://a[text()="MacBook air"]

*** Keywords ***
click on Login option
    Click Element    ${login_option}

click on home option
    Click Element    ${home_option}

click on contact option
    Click Element    ${contact_option}

click on about us option
    Click Element    ${aboutus_option}

click on cart option 
    Click Element    ${cart_option}
    
click on sign up option 
    Click Element    ${signup_option}

click on product page
    Click Element    ${Mobile_clicking}

click on laptop option
    Click Element    ${laptop_option}

verify laptop page
    Element Text Should Be    ${laptop_page}    MacBook air            


