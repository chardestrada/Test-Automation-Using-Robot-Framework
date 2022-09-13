*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_EMAIL_INPUT} =     xpath=//*[@id="username"]
${LOGIN_PASSWORD_INPUT} =  xpath=//*[@id="password"]
${LOGIN_BUTTON} =  xpath=//*[@id="customer_login"]/div[1]/form/p[3]/button

*** Keywords ***
Enter Credentials
    [Arguments]  ${Credentials}
    # Run Keyword Unless   '${Credentials.Email}' == '#BLANK'  Input Text  ${LOGIN_EMAIL_INPUT}  ${Credentials.Email}
    # Run Keyword Unless   '${Credentials.Password}' == '#BLANK'  Input Text  ${LOGIN_PASSWORD_INPUT}  ${Credentials.Password}

    Run Keyword Unless   ${Credentials[0]} == "#BLANK"  Input Text  ${LOGIN_EMAIL_INPUT}  ${Credentials[0]}
    Run Keyword Unless   ${Credentials[1]} == "#BLANK"  Input Text  ${LOGIN_PASSWORD_INPUT}  ${Credentials[1]}

Click Submit
    Click Button  ${LOGIN_BUTTON}

Verify Error Message
    [Arguments]  ${ExpectedErrorMessage}
    Page Should Contain  ${ExpectedErrorMessage[2]}

Clear Input Fields
    Clear Element Text  ${LOGIN_EMAIL_INPUT}
    Clear Element Text  ${LOGIN_PASSWORD_INPUT}

Verify Successful Login
    Page Should Contain  My Account