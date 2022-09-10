*** Settings ***
Resource  Rshop/Page Objects/TopNav.robot
Resource  Rshop/Page Objects/LandingPage.robot
Resource  Rshop/Page Objects/Shop.robot
Resource  Rshop/Page Objects/Cart.robot
Resource  Rshop/Page Objects/Wishlist.robot
Resource  Rshop/Page Objects/Collection.robot
Resource  Navigation.robot

*** Keywords ***

Add Multiple Products to Cart
    Navigation.Navigate to "Shop" Page
    Shop.Add Multiple Products to Cart
    TopNav.Navigate to "Cart" Page
    Cart.Verify Page Loaded

