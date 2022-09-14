*** Settings ***
Documentation  This Test Suite includes all test cases for Signin functionality.
Resource  ../Resources/Common.robot  
Resource  ../Resources/Web Pages/Register.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***

*** Test Cases ***
User should be able to register an Account using a valid email and Password
    [Documentation]  To ensure that user will be able to register an account using a valid email and password.
    [Tags]  SignIn
    Register.Create New Account  ${CUSTOMER_VALID_ACOUNT}

User should not be able to register an Account using an invalid email
    [Documentation]  To ensure that user will not be able to register an account using an invalid email.
    [Tags]  SignIn
    Register.Create New Account  ${CUSTOMER_INVALID_EMAIL}

User should not be able to register an Account using an existing email
    [Documentation]  To ensure that user will not be able to register an account using an existing or registered email.
    [Tags]  SignIn
    Register.Create New Account  ${CUSTOMER_VALID_ACOUNT}
    Page Should Contain    ${CUSTOMER_VALID_ACOUNT.ExpectedErrorMessage}

User should not be able to register an Account using a weak password
    [Documentation]  To ensure that user will not be able to register an account using a weak password.
    [Tags]  SignIn 
    Register.Create New Account  ${CUSTOMER_WEAK_PASSWORD}
    Page Should Contain    ${CUSTOMER_WEAK_PASSWORD.ExpectedErrorMessage}

# Invalid registration scenarios should display correct error messages
#     [Documentation]  This test case ensures that correct error messages are displayed when a user logins invalid credentials.
#     ...  \nScenario 1: Login unregistered user  
#     ...  \nScenario 2: Login invalid password  
#     ...  \nScenario 3: Blank Username 
#     ...  \nScenario 4: Blank Password
#     [Tags]  Register  
#     [Template]  Test Multiple Invalid Registration Scenarios
#     ${UNREGISTERED_USER}
#     ${INVALID_PASSWORD_USER}
#     ${BLANK_USERNAME}
#     ${BLANK_PASSWORD}
