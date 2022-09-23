*** Settings ***
Resource    ../Page Objects/Contact.robot
Resource    ../../Resources/Navigation.robot

*** Keywords ***
Fill-out and Submit Form
    [Arguments]  ${UserData}
    Navigation.Navigate to "Contact" Page
    Contact.Fill-out Form then Submit  ${UserData}

Multiple Negative Scenarios in "Contact Us Form"
    [Arguments]  ${UserData}
    Navigation.Navigate to "Contact" Page
    Fill-out and Submit Contact Us Form  ${UserData}
    Verify Contact Us Form Error Messages  ${UserData}

Fill-out and Submit Contact Us Form
    [Arguments]  ${Credentials}
    Contact.Fill-out Fields  ${Credentials}
    Contact.Click Submit Button
    Sleep  2s

Verify Contact Us Form Error Messages
    [Arguments]  ${ExpectedErrorMessage}
    Contact.Verify Error Message  ${ExpectedErrorMessage}


     

