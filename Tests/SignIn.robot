*** Settings ***
Documentation  This Test Suite includes all Sign in functionalities
Resource  ../Resources/Common.robot  # for Setup & Teardown
Resource  ../Resources/Web Pages/SigIn.robot
Resource  ../Resources/Page Objects/Error.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
&{CUSTOMER_USER1}  Email=jandoe@tests2.com  Password=Passwor1234565789!
&{CUSTOMER_USER2}  Email=jandoe@tests1  Password=Passwor1234565789!
&{CUSTOMER_USER3}  Email=jandoe@tests3.com  Password=Passwor123

*** Test Cases ***
User should be able to register an Account using a valid email and Password
    Set Test Documentation    To ensure that user will be able to register an account using a valid email and password.
    [Tags]  SignIn
    SigIn.Create New Account  ${CUSTOMER_USER1}

User should not be able to register an Account using an invalid email
    Set Test Documentation    To ensure that user will not be able to register an account using an invalid email.
    [Tags]  SignIn
    SigIn.Create New Account  ${CUSTOMER_USER2}

User should not be able to register an Account using an existing email
    Set Test Documentation    To ensure that user will not be able to register an account using an existing or registered email.
    [Tags]  SignIn
    SigIn.Create New Account  ${CUSTOMER_USER1}
    Error.Existing User Error Message

User should not be able to register an Account using a weak password
    Set Test Documentation    To ensure that user will not be able to register an account using a weak password.
    [Tags]  SignIn 
    SigIn.Create New Account  ${CUSTOMER_USER3}
    Error.Weak Password



