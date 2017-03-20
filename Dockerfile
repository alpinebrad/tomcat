From tomcat

# Install maven
RUN apt-get update
RUN apt-get install -y maven
RUN yum install -y git

RUN git clone git@github.com:efsavage/hello-world-war
#https://github.com/efsavage/hello-world-war



#ADD your.war /usr/local/tomcat/webapps/


CMD ["catalina.sh", "run"]