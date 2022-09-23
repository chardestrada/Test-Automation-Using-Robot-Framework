*** Settings ***
Documentation  This Test Suite includes all test cases for Login functionality.
Resource  ../Resources/Common.robot  
Resource  ../Resources/Web Pages/Contact.robot

#Test Timeout
Test Timeout    1 minute


# Test Setup and Teardown
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
User should be able to submit the "Contact Us Form" using valid Data
    [Documentation]  This test case ensures that users will be able to submit the contact us form using valid data.
    [Tags]  Contact Us
    Contact.Fill-out and Submit Form  ${CUTOMER_CONTACT_DETAILS} 

Correct Error messages should display in the users screen
    [Documentation]  This test case ensures that correct error messages are displayed in the user's screen when user entered invalid data.
    ...  \nScenario 1: Required Fields
    ...  \nScenario 2: Invalid Email
    ...  \nScenario 3: Invalid Number  
    ...  \nScenario 4: Invalid URL 
    [Tags]  Contact Us  
    [Template]  Multiple Negative Scenarios in "Contact Us Form"
    ${BLANK_FIELDS}
    ${INVALID_EMAIL}
    # ${INVALID_NUMBER}
    # ${INVALID_URL}
    
    
