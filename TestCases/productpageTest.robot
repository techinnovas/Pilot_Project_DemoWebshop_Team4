*** Settings ***
Documentation    To validate product page
Library    SeleniumLibrary
Resource    ../Resources/genericResource.robot
Resource    ../Resources/homepageResource.robot
Resource    ../Resources/productpageResource.robot
Test Setup    Open a browser with url
Test Teardown    Close Browser

*** Test Cases ***
To validate the product selection
    verify the page contains product details
    select product and add to cart the product

*** Keywords ***
verify the page contains product details
    homepageResource.click on laptop option
    homepageResource.verify laptop page
select product and add to cart the product
    productpageResource.To click samsung mobile phone
    productpageResource.To verify that we navigates to particular product page
    productpageResource.To click add to cart button




    