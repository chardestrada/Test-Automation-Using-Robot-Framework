*** Settings ***
Resource    ../Page Objects/SignIn.robot
Resource    ../../Resources/Navigation.robot

*** Keywords ***
Create New Account
    [Arguments]  ${UserData}
    Navigation.Navigate to "My Accounts" Page
    SignIn.Fill Page and Submit  ${UserData}

