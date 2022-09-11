*** Settings ***
Resource  ../Page Objects/TopNav.robot
Resource  ../Page Objects/LandingPage.robot
Resource  ../Page Objects/Shop.robot
Resource  ../Page Objects/Cart.robot
Resource  ../Navigation.robot

*** Keywords ***
Add Single Product to Cart
    Navigation.Navigate to "Shop" Page
    Shop.Add Single Product to Cart
    TopNav.Navigate to "Cart" Page
    Cart.Verify Page Loaded

Checkout Product
    Cart.Checkout Product

Add Multiple Products to Cart
    Navigation.Navigate to "Shop" Page
    Shop.Add Multiple Products to Cart
    TopNav.Navigate to "Cart" Page
    Cart.Verify Page Loaded


# Search for Products
#     LandingPage.Load
#     LandingPage.Verify Page Loaded
#     TopNav.Search for Products
#     SearchResults.Verify Search Completed

# Select Product from Search Results
#     SearchResults.Click Product link
#     Product.Verify Page Loaded

# Add Product to Cart
#     Product.Add to Cart
#     Cart.Verify Product Added

# Begin Checkout
#     Cart.Proceed to Checkout
#     SignIn.Verify Page Loaded