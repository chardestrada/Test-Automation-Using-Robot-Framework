*** Settings ***
Library  SeleniumLibrary
Resource  ../Data/InputData.robot        
# for saucelabs configuration 
#Library    Saucelabs

*** Keywords ***
Begin Web Test
    # for saucelabs configuration
    #Open Browser  about:blank  ${BROWSER}    remote_url=${REMOTE_URL}    desired_capabilities=${DESIRED_CAPABILITIES} 
    Open Browser  about:blank  ${BROWSER}

End Web Test
    # for saucelabs configuration
    # Run keyword if  '${REMOTE_URL}' != ''
    # ...  Update Saucelabs Test Result
    # ...  ${SUITE_NAME} | ${TEST_NAME}
    # ...  ${TEST_STATUS}  ${TEST_TAGS}  ${REMOTE_URL}
    Close all browsers