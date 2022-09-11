*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${REGISTER_EMAIL_INPUT} =     xpath=//*[@id="reg_email"]
${REGISTER_PASSWORD_INPUT} =  xpath=//*[@id="reg_password"]
${REGISTER_BUTTON} =  xpath=//*[@id="customer_login"]/div[2]/form/p[3]/button

*** Keywords ***
Fill Page and Submit
    [Arguments]  ${UserData}
    Fill Email       ${UserData.Email}
    Fill Password    ${UserData.Password}
    Click Button    ${REGISTER_BUTTON}

Fill Email
    [Arguments]  ${Email}
    Input Text  ${REGISTER_EMAIL_INPUT}  ${Email}

Fill Password
    [Arguments]  ${Password}
    Input Text  ${REGISTER_PASSWORD_INPUT}  ${Password}
