*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Collection
    Sleep    3s
