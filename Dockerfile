FROM openjdk:8-jdk-alpine
LABEL maintainer="truthadjustr@gmail.com"

COPY stuff/git_clone.jar /my/bin/
COPY entrypoint.sh /my/
COPY stuff/apache-maven-3.6.3-bin.tar.gz stuff/m2.tar /tmp/

RUN mkdir /my/opt/ /my/repo \
	&& tar xvzpf /tmp/apache-maven-3.6.3-bin.tar.gz -C /my/opt/ \
    && tar xvpf /tmp/m2.tar -C /root/ \
	&& rm -f /tmp/apache-maven-3.6.3-bin.tar.gz /tmp/m2.tar

ENV PATH=/my/opt/apache-maven-3.6.3/bin/:$PATH

ENTRYPOINT ["/my/entrypoint.sh"]
