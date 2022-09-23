*** Settings ***
Resource    ../Page Objects/Login.robot
Resource    ../../Resources/Navigation.robot

*** Keywords ***
Login with Many Invalid Credentials
    [Arguments]  ${InvalidLoginScenarios}
    FOR  ${LoginScenario}  IN  ${InvalidLoginScenarios}
        Navigation.Navigate to "My Accounts" Page
        Attempt Login  ${LoginScenario}
        Verify Login Page Error Message  ${LoginScenario}
    END

Test Multiple Login Scenarios
    [Arguments]  ${Credentials}
    Navigation.Navigate to "My Accounts" Page
    Attempt Login  ${Credentials}
    Verify Login Page Error Message  ${Credentials.ExpectedErrorMessage}

Attempt Login
    [Arguments]  ${Credentials}
    Login.Enter Credentials  ${Credentials}
    Login.Click Submit
    Sleep  2s

Verify Login Page Error Message
    [Arguments]  ${ExpectedErrorMessage}
    Login.Verify Error Message  ${ExpectedErrorMessage}

Successful Login
    [Arguments]  ${Credentials}
    Navigation.Navigate to "My Accounts" Page
    Attempt Login  ${Credentials}
    Login.Verify Successful Login
    