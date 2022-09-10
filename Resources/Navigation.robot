*** Settings ***
Resource  Rshop/Page Objects/TopNav.robot
Resource  Rshop/Page Objects/LandingPage.robot
Resource  Rshop/Page Objects/Shop.robot
Resource  Rshop/Page Objects/Cart.robot
Resource  Rshop/Page Objects/Wishlist.robot
Resource  Rshop/Page Objects/Collection.robot

*** Keywords ***
Navigate to "Home" Page
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Navigate to "Home" Page

Navigate to "Shop" Page
    LandingPage.Load
    TopNav.Navigate to "Shop" Page
    Shop.Verify Page Loaded

Navigate to "Wishlist" Page
    LandingPage.Load
    TopNav.Navigate to "Wishlist" Page
    Wishlist.Verify Page Loaded

Navigate to "Collection" Page
    LandingPage.Load
    TopNav.Navigate to "Collection" Page
    Collection.Verify Page Loaded
    
Navigate to "Contact" Page
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Navigate to "Contact" Page

Navigate to "My Accounts" Page
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Navigate to "My Accounts" Page