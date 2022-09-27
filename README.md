## Tools to install
	Microsoft Visual Studio Code - https://code.visualstudio.com/ 
	Install python - https://www.python.org/
	Selenium Drivers - https://www.selenium.dev/documentation/webdriver/getting_started/install_drivers/
	Install Jenkins - https://www.jenkins.io/   
	Instaill Git - https://git-scm.com/ 
	Install robotframework - pip install --upgrade robotframework-seleniumlibrary
	Install simplejson - pip install simplejson
	Install	requests - pip install request

<!-- ## Running Test Case in Saucelabs
robot -d results -v DESIRED_CAPABILITIES:"name:Win 11 + Chrome latest,platform:Windows 11,browserName:chrome,version:latest" tests/pagenavigation.robot

sc -u oauth-estradarichard1995-74e6a -k 94f3f937-e0c9-4b4a-82b6-bc4ae50187d9 --region eu-central --tunnel-name oauth-estradarichard1995-74e6a_tunnel_name

C:\saucelabs\sc-4.8.1-win32\bin>sc -u oauth-estradarichard1995-74e6a -k 94f3f937-e0c9-4b4a-82b6-bc4ae50187d9 --region eu-central --tunnel-name oauth-estradarichard1995-74e6a_tunnel_name -->

## Running Single Test Case 
	Running in Chrome
	robot -d results/chrome -i currenttest -v BROWSER:chrome tests/pagenavigation.robot

	-i - include tag
	-d - result directory
	-v BROWSER:chrome - for firefox use ff or firefox

	Running in Firefox
	robot -d results/Firefox -i -v BROWSER:ff tests/pagenavigation.robot

### Running All Test Suites
	Running in Chrome
	robot -d Results\Chrome -v BROWSER:chrome tests.robot

	Running in Firefox
	robot -d Results\Firefox -v BROWSER:ff tests


## Installing Jenkins
	Install Java
	Install Git
	Download .war installer from http://jenkins.io
	Place it in C Drive
	Create environment variable JENKINS_HOME
	cd C:\Program Files (x86)\Jenkins
	java -Dhudson.model.DirectoryBrowserSupport.CSP= -jar jenkins.war
