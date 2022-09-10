## Running Robot
robot -d results -i currenttest -v BROWSER:chrome tests/pagenavigation.robot

-i - include tag
-d - result directory
-v BROWSER:chrome - specicy browser

## Installing Jenkins
Install Java
Install Git
Download .war installer from http://jenkins.io
Place it in C Program (86)
Create environment variable JENKINS_HOME
Run
java -Dhudson.model.DirectoryBrowserSupport.CSP= -jar jenkins.war