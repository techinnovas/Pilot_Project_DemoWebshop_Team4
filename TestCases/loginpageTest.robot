*** Settings ***
Documentation    To validate login functionality
Library    SeleniumLibrary
Library    DataDriver    file=../Resources/loginpagedata.xlsx    sheet_name=Sheet1
Resource    ../Resources/genericResource.robot
Resource    ../Resources/homepageResource.robot
Resource    ../Resources/loginPageResource.robot
Test Template    To validate login functionality
Test Teardown    Close Browser

*** Test Cases ***
Login to form using ${Username} and ${Password}     abc     123

*** Keywords ***
To validate login functionality
    [Arguments]    ${Username}    ${Password}
    Open the browser with url
    click the login option    
    fill the login form    ${Username}    ${Password}  

Open the browser with url
    genericResource.Open a browser with url

click the login option
    homepageResource.click on Login option

fill the login form
    [Arguments]        ${Username}    ${Password}      
    loginPageResource.To fill the login form    ${Username}    ${Password}

Validating the logged in or not
    loginPageResource.Validate Logged in

