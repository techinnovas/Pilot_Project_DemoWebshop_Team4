*** Settings ***
Documentation    This document contains keyword and variable of Login page
Library    SeleniumLibrary
Library    DataDriver    file=../Resources/loginpagedata.xlsx    sheet_name=Sheet1
*** Variables *** 
${click_l}    xpath://button[text()="Log in"]
${close_l}    xapth:(//button[@class="btn btn-secondary"])[1]
${loginpage_valid}    xpath://a[text()="Log out"] 

*** Keywords ***
To fill the login form
    Element Text Should Be    id:logInModalLabel    Log in
    [Arguments]    ${Username}    ${Password}
    Input Text    xpath=(//input[@class='form-control'])[5]    ${Username}
    Input Password    xpath=(//input[@class='form-control'])[6]   ${Password}
    Click Button    ${click_l}

Validate Logged in
    Element Text Should Be    ${loginpage_valid}    Log out

To click cancel option in login page
    Click Button    ${close_l}
    Element Text Should Be    id:cat    CATEGORIES

Invalid login error
    Alert Should Be Present