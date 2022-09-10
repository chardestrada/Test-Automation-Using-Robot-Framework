*** Settings ***
Documentation  This Test Suite verifies if all pages are accessible by all users.
Resource  ../Resources/Common.robot  # for Setup & Teardown
Resource  ../Resources/Navigation.robot  # for lower level keywords in test cases
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***

*** Test Cases ***
User should be able to navigate the "Home" page
    [Tags]  Home    currenttest
    Navigation.Navigate to "Home" Page

User should be able to navigate the "Shop" page
    [Tags]  Shop  current
    Navigation.Navigate to "Shop" Page

User should be able to navigate the "Wishlist" page
    [Tags]  Wishlist
    Navigation.Navigate to "Wishlist" Page

User should be able to navigate the "Collection" page
    [Tags]  Collection
    Navigation.Navigate to "Collection" Page

Use should be able to navigate the "Contact" page 
    [Tags]  Contact
    Navigation.Navigate to "Contact" Page

Use should be able to navigate the "My Accounts" page 
    [Tags]  My Accounts
    Navigation.Navigate to "My Accounts" Page