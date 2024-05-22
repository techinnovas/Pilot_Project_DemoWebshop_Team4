*** Settings ***
Documentation    To validate home functionality
Library    SeleniumLibrary
Resource    ../Resources/genericResource.robot
Resource    ../Resources/homepageResource.robot
Resource    ../Resources/loginPageResource.robot
Test Setup    Open a browser with url
Test Teardown    Close Browser

*** Test Cases ***
To Select Laptop option in homepage
    click on laptop option

*** Keywords ***
click on laptop option
    homepageResource.click on laptop option
    homepageResource.verify laptop page    