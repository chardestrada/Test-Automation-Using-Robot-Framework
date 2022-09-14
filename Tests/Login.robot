*** Settings ***
Documentation  This Test Suite includes all test cases for Login functionality.
Resource  ../Resources/Common.robot  
Resource  ../Resources/DataManager.robot
Resource  ../Resources/Web Pages/Login.robot

#Test Timeout
Test Timeout    1 minute

# Test Setup and Teardown
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***

*** Test Cases ***
Invalid login scenarios should display correct error messages
    [Documentation]  This test case ensures that correct error messages are displayed when a user logins invalid credentials.
    ...  \nScenario 1: Login unregistered user  
    ...  \nScenario 2: Login invalid password  
    ...  \nScenario 3: Blank Username 
    ...  \nScenario 4: Blank Password
    [Tags]  Login  
    [Template]  Test Multiple Login Scenarios
    ${UNREGISTERED_USER}
    ${INVALID_PASSWORD_USER}
    ${BLANK_USERNAME}
    ${BLANK_PASSWORD}

# Should see correct error messages with invalid logins
#     [Tags]  Login     current
#     ${InvalidLoginScenarios} =  DataManager.Get CSV Data  ${INVALID_CREDENTIALS_PATH_CSV}
#     Login.Login with Many Invalid Credentials  ${InvalidLoginScenarios} 
    
User should be able to login successfully using a valid username and password
    [Documentation]   This test case ensures ensures that user will be able to login successfully using a valid email and password.
    [Tags]  Login 
    Login.Successful Login  ${REGISTERED_USER} 

