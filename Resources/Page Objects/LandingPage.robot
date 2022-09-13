*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Load
    ${url} =    Catenate    SEPARATOR=/     ${BASE_URL.${ENVIRONMENT}} 
    Go To  ${BASE_URL.${ENVIRONMENT}}
    Maximize Browser Window

Verify Page Loaded
    Wait Until Page Contains  Home