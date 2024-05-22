*** Settings ***
Documentation    This is generic page which contains commonly usihg variable and keywords across the test
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.demoblaze.com/index.html
${browser}    Firefox  
*** Keywords ***
Open a browser with url
    Create Webdriver    ${browser}
    Go To    ${url}

Close the browser
    Close Browser

    
