*** Settings ***

*** Variables ***
# Configuration
${ENVIRONMENT} =    dev
${BROWSER} =  chrome
&{BASE_URL}    dev=http://localhost/r-shop/    qa=http://qa.losasast/r-shop/    stage=http://stage    prod=http://prod.localhost/r-shop/
${REMOTE_URL} =  https://oauth-estradarichard1995-74e6a:94f3f937-e0c9-4b4a-82b6-bc4ae50187d9@ondemand.eu-central-1.saucelabs.com:443/wd/hub
${DESIRED_CAPABILITIES} =  name:Windows 10 + Firefox latest,platform:Windows 8.1,browserName:chrome,version:latest

# Input Data for Accounts Page > Login In
${TEST_EMAIL} =  someone@notregistered.com
${VALID_USERNAME} =  admin
&{REGISTERED_USER}          Email=jan123@test.com    Password=Password123456478125!  ExpectedErrorMessage=''
&{UNREGISTERED_USER}        Email=${TEST_EMAIL}      Password=Password12345!         ExpectedErrorMessage=Unknown email address. Check again or try your username.
&{INVALID_PASSWORD_USER}    Email=${VALID_USERNAME}  Password=TestPassword!          ExpectedErrorMessage=Error: The password you entered for the username ${VALID_USERNAME} is incorrect. Lost your password?	
&{BLANK_USERNAME}           Email=#BLANK             Password=Pass123123             ExpectedErrorMessage=Error: Username is required. 
&{BLANK_PASSWORD}           Email=Pass123123         Password=#BLANK                 ExpectedErrorMessage=Error: The password field is empty. 

${INVALID_CREDENTIALS_PATH_CSV} =  C:\\Users\\estradar\\Desktop\\Test Automation\\development\\r-shop-tests\\Data\\Users.csv

# Input Data for Accounts Page > Sigin In > Register New Account
&{CUSTOMER_VALID_ACOUNT}   Email=jandoe@tests2.com  Password=Passwor1234565789!  ExpectedErrorMessage=Error: An account is already registered with your email address. Please log in.
&{CUSTOMER_INVALID_EMAIL}  Email=jandoe@tests1      Password=Passwor1234565789!
&{CUSTOMER_WEAK_PASSWORD}  Email=jandoe@tests3.com  Password=Passwor123          ExpectedErrorMessage=Weak - Please enter a stronger password.

# Input Data for Contact Us Page Form
&{CUTOMER_CONTACT_DETAILS}  Name=John Doe II              Email=jandoessII@testss2.com               Subject=This is a subject test  RadioGroup=everest_forms[form_fields][jIyM1XCiyI-1]  RadioValue=Second Choice  url=https://www.lipsum.com  message=Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.  number=2324234321122
&{BLANK_FIELDS}             Name=#BLANK                   Email=#BLANK                               Subject=#BLANK  NameError=This field is required.  EmailError=Please enter a valid email address.  SubjectError=This field is required.
&{INVALID_EMAIL}            Name=#BLANK                   Email=abc.def@ma                           Subject=#BLANK  NameError=This field is required.  EmailError=Please enter a valid email address.  SubjectError=This field is required.
&{INVALID_NUMBER}           InvalidNumber1=test1231       InvalidNumber2=231231.7686.456             InvalidNumber3=!@#!@#!#!#!@#
&{INVALID_URL}              InvalidURL1=/main.html        InvalidURL1=http://http:www.example.com/main.html

