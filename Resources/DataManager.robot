*** Settings ***
Documentation  Use this layer to get data from external files
Library  ../Custom Libraries/Csv.py

*** Keywords ***
Get CSV Data
    [Arguments]  ${FilePath}
    ${Data} =  read csv file  ${FilePath}
    [Return]  ${Data}