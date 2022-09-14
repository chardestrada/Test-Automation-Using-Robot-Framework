*** Settings ***
Documentation  This Test Suite includes all test cases for navigating all the pages.
Resource  ../Resources/Common.robot 
Resource  ../Resources/Navigation.robot  

# Test Setup and Teardown
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***

*** Test Cases ***
User should be able to navigate the "Home" page
    [Documentation]   This test case ensures ensures that user will be able to navigate the "Home" page.
    [Tags]  Home   
    Navigation.Navigate to "Home" Page

User should be able to navigate the "Shop" page
    [Documentation]   This test case ensures ensures that user will be able to navigate the "Shop" page.
    [Tags]  Shop  
    Navigation.Navigate to "Shop" Page

User should be able to navigate the "Wishlist" page
    [Documentation]   This test case ensures ensures that user will be able to navigate the "Wishlist" page.
    [Tags]  Wishlist
    Navigation.Navigate to "Wishlist" Page

User should be able to navigate the "Collection" page
    [Documentation]   This test case ensures ensures that user will be able to navigate the "Collection" page.
    [Tags]  Collection
    Navigation.Navigate to "Collection" Page

User should be able to navigate the "Contact" page 
    [Documentation]   This test case ensures ensures that user will be able to navigate the "Contact" page.
    [Tags]  Contact
    Navigation.Navigate to "Contact" Page

User should be able to navigate the "My Accounts" page 
    [Documentation]   This test case ensures ensures that user will be able to navigate the "My Accounts" page.
    [Tags]  My Accounts   
    Navigation.Navigate to "My Accounts" Page