#!bin/bash

docker run -p 9000:9000 -e "JAVA_OPTS=Ddebug -Xm128m" mysorg/myapp --server.port=9000