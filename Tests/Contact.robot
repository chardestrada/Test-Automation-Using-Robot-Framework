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
User should be able to fill-out the "Contact Us Form"
    Contact.Fill-out Form  ${CUTOMER_CONTACT_DETAILS} 
