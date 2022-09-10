*** Settings ***
Resource  Rshop/Page Objects/TopNav.robot
Resource  Rshop/Page Objects/LandingPage.robot
Resource  Rshop/Page Objects/Checkout.robot
Resource  Navigation.robot
Resource  ShopPage.robot

*** Keywords ***

Place Orders
    ShopPage.Add Single Product to Cart
    ShopPage.Checkout Product
    Checkout.Place Order


