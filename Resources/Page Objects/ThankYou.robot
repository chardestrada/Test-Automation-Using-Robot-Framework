*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Thanks for contacting us! We will be in touch with you shortly.
    Page Should Contain    Thanks for contacting us! We will be in touch with you shortly.
