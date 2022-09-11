*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Load
    Go To  ${BASE_URL.${ENVIRONMENT}}
    Maximize Browser Window

Verify Page Loaded
    Wait Until Page Contains  Home