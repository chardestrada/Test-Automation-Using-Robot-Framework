*** Settings ***
Resource    ../Page Objects/Register.robot
Resource    ../../Resources/Navigation.robot

*** Keywords ***
Create New Account
    [Arguments]  ${UserData}
    Navigation.Navigate to "My Accounts" Page
    Register.Fill Page and Submit  ${UserData}


Test Multiple Invalid Registration Scenarios
    