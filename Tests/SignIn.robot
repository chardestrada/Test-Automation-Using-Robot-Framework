*** Settings ***
Documentation  This Test Suite includes all test cases for Signin functionality.
Resource  ../Resources/Common.robot  
Resource  ../Resources/Web Pages/SigIn.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***

*** Test Cases ***
User should be able to register an Account using a valid email and Password
    Set Test Documentation    To ensure that user will be able to register an account using a valid email and password.
    [Tags]  SignIn
    SigIn.Create New Account  ${CUSTOMER_VALID_ACOUNT}

User should not be able to register an Account using an invalid email
    Set Test Documentation    To ensure that user will not be able to register an account using an invalid email.
    [Tags]  SignIn
    SigIn.Create New Account  ${CUSTOMER_INVALID_EMAIL}

User should not be able to register an Account using an existing email
    Set Test Documentation    To ensure that user will not be able to register an account using an existing or registered email.
    [Tags]  SignIn
    SigIn.Create New Account  ${CUSTOMER_VALID_ACOUNT}
    Page Should Contain    ${CUSTOMER_VALID_ACOUNT.ExpectedErrorMessage}

User should not be able to register an Account using a weak password
    Set Test Documentation    To ensure that user will not be able to register an account using a weak password.
    [Tags]  SignIn 
    SigIn.Create New Account  ${CUSTOMER_WEAK_PASSWORD}
    Page Should Contain    ${CUSTOMER_WEAK_PASSWORD.ExpectedErrorMessage}



