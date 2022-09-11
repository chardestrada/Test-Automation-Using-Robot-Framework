*** Settings ***
Library    SeleniumLibrary
# for saucelabs configuration 
#Library    Saucelabs

*** Variables ***
# Configuration
${ENVIRONMENT} =    dev
${BROWSER} =  chrome
&{BASE_URL}    dev=http://localhost/r-shop/    qa=http://qa.losasast/r-shop/    stage=http://stage    prod=http://prod.localhost/r-shop/
${REMOTE_URL} =  https://oauth-estradarichard1995-74e6a:94f3f937-e0c9-4b4a-82b6-bc4ae50187d9@ondemand.eu-central-1.saucelabs.com:443/wd/hub
${DESIRED_CAPABILITIES} =  name:Windows 10 + Firefox latest,platform:Windows 8.1,browserName:chrome,version:latest

# Input Data
&{UNREGISTERED_USER}  Email=someone@notregistered.com  Password=TestPassword!  ExpectedErrorMessage=You haven't signed up yet. Try a different email address or
&{INVALID_PASSWORD_USER}  Email=someone@registereduser.com  Password=TestPassword!  ExpectedErrorMessage=Please double check your password. It should be 6 or more characters with no spaces. If you don't remember it, you can
&{BLANK_CREDENTIALS_USER}  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=Please enter your email address and password.

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