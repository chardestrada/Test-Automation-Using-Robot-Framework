*** Settings ***
Documentation  This Test Suite includes all available functionalities in the Checkout page
Resource  ../Resources/Common.robot  # for Setup & Teardown
Resource  ../Resources/CheckoutPage.robot  # for lower level keywords in test cases
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***

*** Test Cases ***
User should be able to place single product order
    [Tags]  Place Single Product Order  currenttest
    # TODO to continue
    CheckoutPage.Place Orders

