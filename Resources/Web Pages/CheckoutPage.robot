*** Settings ***
Resource  ../Page Objects/TopNav.robot
Resource  ../Page Objects/LandingPage.robot
Resource  ../Page Objects/Checkout.robot
Resource  ../Navigation.robot
Resource  ShopPage.robot

*** Keywords ***

Place Orders
    ShopPage.Add Single Product to Cart
    ShopPage.Checkout Product
    Checkout.Place Order


