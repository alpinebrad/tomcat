From tomcat

# Install maven
RUN apt-get update
RUN apt-get install -y maven

#https://github.com/efsavage/hello-world-war



#ADD your.war /usr/local/tomcat/webapps/


CMD ["catalina.sh", "run"]