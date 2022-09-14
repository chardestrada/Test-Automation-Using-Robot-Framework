*** Settings ***
Documentation  This Test Suite includes all test cases for Checkout functionality.
Resource  ../Resources/Common.robot 
Resource  ../Resources/Web Pages/CheckoutPage.robot  

# Test Setup and Teardown
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***

*** Test Cases ***
User should be able to place single product order
    [Documentation]   This test case ensures ensures that user will be able place single product order.
    [Tags]  Checkout  
    # TODO to continue
    CheckoutPage.Place Orders

