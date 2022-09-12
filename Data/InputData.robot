*** Settings ***

*** Variables ***
# Configuration
${ENVIRONMENT} =    dev
${BROWSER} =  chrome
&{BASE_URL}    dev=http://localhost/r-shop/    qa=http://qa.losasast/r-shop/    stage=http://stage    prod=http://prod.localhost/r-shop/
${REMOTE_URL} =  https://oauth-estradarichard1995-74e6a:94f3f937-e0c9-4b4a-82b6-bc4ae50187d9@ondemand.eu-central-1.saucelabs.com:443/wd/hub
${DESIRED_CAPABILITIES} =  name:Windows 10 + Firefox latest,platform:Windows 8.1,browserName:chrome,version:latest

# Input Data
&{UNREGISTERED_USER}  Email=someone@notregistered.com  Password=TestPassword!  ExpectedErrorMessage=Unknown email address. Check again or try your username.
&{INVALID_PASSWORD_USER}  Email=admin  Password=TestPassword!  ExpectedErrorMessage=Error: The password you entered for the username admin is incorrect. Lost your password?	
&{BLANK_CREDENTIALS_USER}  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=Error: Username is required. 
