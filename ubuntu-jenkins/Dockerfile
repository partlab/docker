FROM partlab/ubuntu-java

MAINTAINER Régis Gaidot <regis@partlab.co>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

RUN wget -qO - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add - && \
    echo 'deb http://pkg.jenkins-ci.org/debian binary/' \
      | tee /etc/apt/sources.list.d/jenkins.list && \
    apt-get update && \
    apt-get install --no-install-recommends -y jenkins && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    update-rc.d -f jenkins disable

ENV JENKINS_HOME /var/jenkins

EXPOSE 8080 50000

CMD ["/usr/bin/java", "-jar", "/usr/share/jenkins/jenkins.war"]
