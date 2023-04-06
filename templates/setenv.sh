#!/bin/sh
#
JAVA_HOME={{java_home}}
CATALINA_HOME={{catalina_home}}
CATALINA_OPTS="-Xmx1024m -Xms512m -XX:MaxMetaspaceSize=512m -Duser.timezone=Europe/Berlin -Dspring.profiles.active=myprofile -Djava.awt.headless=true -Djava.net.preferIPv4Stack=true -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=."
