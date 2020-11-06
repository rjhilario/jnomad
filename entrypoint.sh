#!/bin/sh

java -jar /my/bin/git_clone.jar https://github.com/eigenfield/eigenfield.git /my/repo
cd /my/repo/
mvn spring-boot:run
