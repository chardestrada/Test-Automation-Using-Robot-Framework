*** Settings ***
Documentation  This Test Suite includes all available functionalities in the Checkout page
Resource  ../Resources/Common.robot  # for Setup & Teardown
Resource  ../Resources/Web Pages/CheckoutPage.robot  # for lower level keywords in test cases
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***

*** Test Cases ***
User should be able to place single product order
    [Tags]  Checkout  
    # TODO to continue
    CheckoutPage.Place Orders

