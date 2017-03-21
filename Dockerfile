From tomcat

# Install maven
RUN apt-get update
RUN apt-get install -y maven
RUN apt-get install -y git

#RUN git clone git@github.com:efsavage/hello-world-war
RUN wget https://github.com/efsavage/hello-world-war -P /hello-world
#ADD pom.xml /hello-world/pom.xml

CMD ["/hello-world/mvn",  "package"]
CMD ["ls", "-a"]
#https://github.com/efsavage/hello-world-war

CMD ["cp", "/hello-world/target/hello-world-war-1.0.0.war" "/usr/local/tomcat/webapps/"]

#ADD /hello-world/target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]