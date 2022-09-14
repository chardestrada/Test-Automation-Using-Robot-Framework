*** Settings ***
Documentation  This Test Suite includes all test cases for Shop functionality.
Resource  ../Resources/Common.robot  
Resource  ../Resources/Web Pages/ShopPage.robot 
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***

*** Test Cases ***
User should be able to add single product to Cart
    [Documentation]   This test case ensures ensures that user will be able to add single product to Cart.
    [Tags]  Add Product
    ShopPage.Add Single Product to Cart

User should be able to checkout single product
    [Documentation]   This test case ensures ensures that user will be able to checkout single product.
    [Tags]  Checkout 
    ShopPage.Add Single Product to Cart
    ShopPage.Checkout Product
    
User should be able to add multiple products to Cart
    [Documentation]   This test case ensures ensures that user will be able to add multiple products to Cart.
    [Tags]  Add Product  
    ShopPage.Add Multiple Products to Cart

User should be able to checkout multiple products
    [Documentation]   This test case ensures ensures that user will be able to checkout multiple products.
    [Tags]  Checkout  
    ShopPage.Add Multiple Products to Cart
    ShopPage.Checkout Product