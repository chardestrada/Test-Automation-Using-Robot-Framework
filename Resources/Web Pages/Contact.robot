*** Settings ***
Resource    ../Page Objects/Contact.robot
Resource    ../../Resources/Navigation.robot

*** Keywords ***
Fill-out Form
    [Arguments]  ${UserData}
    Navigation.Navigate to "Contact" Page
    Contact.Fill-out Form then Submit  ${UserData}


