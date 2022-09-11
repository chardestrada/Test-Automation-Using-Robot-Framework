*** Settings ***
Documentation  This Test Suite includes all available functionalities in the Shop page
Resource  ../Resources/Common.robot  # for Setup & Teardown
Resource  ../Resources/Web Pages/ShopPage.robot  # for lower level keywords in test cases
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***

*** Test Cases ***
User should be able to add single product to Cart
    [Tags]  Add Product
    ShopPage.Add Single Product to Cart

User should be able to Checkout single product
    [Tags]  Checkout Product 
    ShopPage.Add Single Product to Cart
    ShopPage.Checkout Product
    
User should be able to add multiple products to Cart
    [Tags]  Add Product  
    ShopPage.Add Multiple Products to Cart

User should be able to Checkout multiple products
    [Tags]  Checkout Product  
    ShopPage.Add Multiple Products to Cart
    ShopPage.Checkout Product