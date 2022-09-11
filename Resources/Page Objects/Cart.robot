*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${REMOVE_BUTTON} =  xpath=/html/body/div/div/main/div/div/article/div/div/div/div/div/form/table/tbody/tr[1]/td[1]/a
${DELETE_SUCCESS_MESSAGE}  = removed
${CHECK_OUT_LINK} =  //*[@id="post-1042"]/div/div/div/div/div/div[2]/div/div/a

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Cart
    Sleep    3s

Checkout Product
    execute javascript  window.scrollTo(0,300)
    Sleep    2s
    Click Link   ${CHECK_OUT_LINK}
    Sleep    5s


Remove Single Product
    Sleep    2s
    Click Element    ${REMOVE_BUTTON} 
    Sleep    5s
    Wait Until Page Contains Element    ${DELETE_SUCCESS_MESSAGE}locator

    