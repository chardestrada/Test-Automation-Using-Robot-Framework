*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${REMOVE_BUTTON} =  xpath=/html/body/div/div/main/div/div/article/div/div/div/div/div/form/table/tbody/tr[1]/td[1]/a
${DELETE_SUCCESS_MESSAGE}  = removed
${CHECK_OUT_LINK} =  xpath=//*[@id="post-1042"]/div/div/div/div/div/div[2]/div/div/a
${FIRSTNAME_LOCATOR} =  xpath=//*[@id="billing_first_name"]
${FIRSTNAME} =  Kermit
${LASTNAME} =  Rogers
${LASTNAME_LOCATOR} =  xpath=//*[@id="billing_last_name"]
${COUNTRY} =    Philippines
${COUNTRY_LOCATOR} =    xpath=//*[@id="billing_country"]/option[175]
${STREET_ADDRESS} =    Cagayan de Oro  
${STREET_ADDRESS_LOCATOR} =     xpath=//*[@id="billing_address_1"]
${TOWN} =     Agusan Del Norte
${TOWN_LOCATOR} =     xpath=//*[@id="billing_city"]
${STATE} =  Misamis Oriental 
${STATE_LOCATOR} =     xpath=//*[@id="billing_state"]/option[7]
${ZIPCODE} =  9000
${ZIPCODE_LOCATOR} =  xpath=//*[@id="billing_postcode"]
${PHONE} =  05544254
${PHONE_LOCATOR} =  xpath=//*[@id="billing_phone"]
${EMAIL_ADDRESS} =  vixu@mailinator.com
${EMAIL_ADDRESS_LOCATOR} =  xpath=//*[@id="billing_email"]
${PLACE_ORDER_BUTTON} =  xpath=//*[@id="place_order"]

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Checkout
    Sleep    3s

Place Order
    execute javascript  window.scrollTo(0,300)
    Sleep    2s
    Input Text    ${FIRSTNAME_LOCATOR}    ${FIRSTNAME}
    Input Text    ${LASTNAME_LOCATOR}    ${LASTNAME_LOCATOR}
    Scroll Element Into View    xpath=//*[@id="billing_country_field"]/label
   # Get Selected List Value    xpath=//*[@id="billing_country_field"]/label
    # Click Button    ${PLACE_ORDER_BUTTON}
