*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${EXISTING_EMAIL} =  Error: An account is already registered with your email address. Please log in.
${WEAK_PASSWORD} =  Weak - Please enter a stronger password.

*** Keywords ***
Existing User Error Message
    Page Should Contain    ${EXISTING_EMAIL}
    
    
Weak Password
    Page Should Contain    ${WEAK_PASSWORD}
