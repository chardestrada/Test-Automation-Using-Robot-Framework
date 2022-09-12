## Tools to install
	Microsoft Visual Studio Code - https://code.visualstudio.com/ 
	Install python - https://www.python.org/
	Selenium Drivers - https://www.selenium.dev/documentation/webdriver/getting_started/install_drivers/
	Install Jenkins - https://www.jenkins.io/   
	Instaill Git - https://git-scm.com/ 
	Install robotframework - pip install --upgrade robotframework-seleniumlibrary
	Install simplejson - pip install simplejson
	Install	requests - pip install request

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
	Run java -Dhudson.model.DirectoryBrowserSupport.CSP= -jar jenkins.war
