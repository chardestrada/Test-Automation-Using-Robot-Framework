## Running Single Test Case Robot
	robot -d results/chrome -i currenttest -v BROWSER:chrome tests/pagenavigation.robot

	-i - include tag
	-d - result directory
	-v BROWSER:chrome - for firefox use ff or firefox

### Running All Test Suites
	Running in Chrome
	robot -d Results\Chrome -i currenttest -v BROWSER:chrome tests.robot

	Running in Firefox
	robot -d Results\Firefox -i currenttest -v BROWSER:ff tests.robot


## Installing Jenkins
	Install Java
	Install Git
	Download .war installer from http://jenkins.io
	Place it in C Program (86)
	Create environment variable JENKINS_HOME
	Run
	java -Dhudson.model.DirectoryBrowserSupport.CSP= -jar jenkins.war
