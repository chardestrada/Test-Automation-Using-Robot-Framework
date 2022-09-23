*** Settings ***
Library  SeleniumLibrary
Resource  ThankYou.robot

*** Variables ***
${NAME_INPUT} =  xpath=//input[@id="evf-686-field_name"]
${EMAIL_INPUT} =  xpath=//input[@id="evf-686-field_email"]
${SUBJECT_INPUT} =  xpath=//input[@id="evf-686-field_subject"]
${CHECKBOX_1}  =  xpath=//*[@id="evf-686-field_8HDDaXUCAj-2_1"]
${CHECKBOX_2}  =  xpath=//input[@id="evf-686-field_8HDDaXUCAj-2_2"]
${SELECT_DATE_1} =  xpath=//*[@id="evf-686-field_KzGYkpD8aw-3"]
${SELECT_DATE_2} =  xpath=/html/body/div[2]/div[2]/div/div[2]/div/span[31]
${DROP_DOWN_LOCATOR} =  xpath=//*[@id="evf-686-field_ZJsppOZdBd-4"]
${DROP_DOWN_VALUE} =  Option 2
${NUMBER_LOCATOR} =  xpath=//*[@id="evf-686-field_av6rTIdB3v-5"]    
${URL_LOCATOR} =  xpath=//*[@id="evf-686-field_lAvWUeJf0A-8"]
${MESSAGE_LOCATOR} =  xpath=//*[@id="evf-686-field_message"]
${SUBMIT_BUTTON} =  xpath=//button[@id="evf-submit-686"]

${NAMEERROR_LOCATOR} =  xpath=//*[@id="evf-686-field_name-error"]
${EMAILERROR_LOCATOR} =  xpath=//*[@id="evf-686-field_email-error"]
${SUBJECTERROR_LOCATOR} =  xpath=//*[@id="evf-686-field_subject-error"]

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Contact
    Sleep    3s

Fill-out Fields
    [Arguments]  ${UserData}
    Run Keyword Unless   '${UserData.Name}' == '#BLANK'  Input Text  ${NAME_INPUT}  ${UserData.Name}
    Run Keyword Unless   '${UserData.Email}' == '#BLANK'  Input Text  ${EMAIL_INPUT}  ${UserData.Email}
    Run Keyword Unless   '${UserData.Subject}' == '#BLANK'  Input Text  ${SUBJECT_INPUT}  ${UserData.Subject} 

Fill-out Form then Submit
    [Arguments]  ${UserData}
    Fill Name    ${UserData.Name}
    Fill Email   ${UserData.Email}
    Fill Subject   ${UserData.Subject}
    Multiple Choice  ${UserData.RadioGroup}  ${UserData.RadioValue} 
    Select Checkbox Options
    Select Date
    Select Dropdown
    Fill Number  ${UserData.number}
    Fill URL  ${UserData.url}
    Fill Message  ${UserData.message}
    Click Submit Button
    Sleep    5s
    Verify Form Successful Submission

Fill Name
    [Arguments]  ${Name}
    Input Text   ${NAME_INPUT}  ${Name}

Fill Email
    [Arguments]  ${Email}
    Input Text   ${EMAIL_INPUT}  ${Email}

Fill Subject
    [Arguments]  ${Subject}
    Input Text   ${SUBJECT_INPUT}  ${Subject}

Multiple Choice
    [Arguments]  ${RadioGroup}  ${RadioValue} 
    Select Radio Button    ${RadioGroup}    ${RadioValue} 

Select Checkbox Options
    Select Checkbox  //*[@id="evf-686-field_8HDDaXUCAj-2_1"]
    # Checkbox Should Be Selected    ${CHECKBOX_1}

Select Date
    Click Element    ${SELECT_DATE_1}
    Click Element    ${SELECT_DATE_2}

Select Dropdown
    Select From List By Value  ${DROP_DOWN_LOCATOR}  ${DROP_DOWN_VALUE}

Fill Number
    [Arguments]  ${number}
    Input Text  ${NUMBER_LOCATOR}  ${number}

Fill URL
    [Arguments]  ${url}
    Input Text  ${URL_LOCATOR}  ${url}        
    
Fill Message
    [Arguments]  ${message}
    Input Text  ${MESSAGE_LOCATOR}  ${message}        

Click Submit Button
    Click Button    ${SUBMIT_BUTTON}

Verify Form Successful Submission
    ThankYou.Verify Page Loaded
    
Verify Correct Required Fields Error Message
    Wait Until Page Contains    ${REQUIRED_FIELDS.Name}
    Page Should Contain    ${REQUIRED_FIELDS.Name}
    Page Should Contain    ${REQUIRED_FIELDS.Email}
    Page Should Contain    ${REQUIRED_FIELDS.Subject}

Verify Error Message
    [Arguments]  ${ExpectedErrorMessage}
    Page Should Contain  ${ExpectedErrorMessage.NameError}
    Element Should Contain  ${NAMEERROR_LOCATOR}      ${ExpectedErrorMessage.NameError}
    Page Should Contain  ${ExpectedErrorMessage.EmailError}
    Element Should Contain   ${EMAILERROR_LOCATOR}   ${ExpectedErrorMessage.EmailError}
    Page Should Contain  ${ExpectedErrorMessage.SubjectError}
    Element Should Contain    ${SUBJECTERROR_LOCATOR}    ${ExpectedErrorMessage.SubjectError}
   
