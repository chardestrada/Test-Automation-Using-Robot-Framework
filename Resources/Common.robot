*** Settings ***
Library  SeleniumLibrary

*** Variables ***
# Configuration
${ENVIRONMENT} =    dev
${BROWSER} =  chrome
&{BASE_URL}    dev=http://localhost/r-shop/    qa=http://qa.losasast/r-shop/    stage=http://stage    prod=http://prod.localhost/r-shop/

# Input Data
&{UNREGISTERED_USER}  Email=someone@notregistered.com  Password=TestPassword!  ExpectedErrorMessage=You haven't signed up yet. Try a different email address or
&{INVALID_PASSWORD_USER}  Email=someone@registereduser.com  Password=TestPassword!  ExpectedErrorMessage=Please double check your password. It should be 6 or more characters with no spaces. If you don't remember it, you can
&{BLANK_CREDENTIALS_USER}  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=Please enter your email address and password.

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    # Maximize Browser Window

End Web Test
    Close All Browsers