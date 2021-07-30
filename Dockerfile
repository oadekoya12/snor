## For Deployment
FROM 908883891338.dkr.ecr.us-east-1.amazonaws.com/ecasdas_sonar
EXPOSE 9000
ENTRYPOINT  ["sh","/local/script.sh"]

## For Built
# FROM centos:8
# # RUN yum update -y &&\
# #     yum install -y langpacks-en glibc-all-langpacks bind-utils &&\
# #     yum install -y less systemd net-tools  procps curl dos2unix &&\
# #     yum install -y yum-utils which wget unzip &&\
# #     yum update -y &&\ 
# #     mkdir -p /root/dowload && curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/otn-pub/java/jdk/16.0.2%2B7/d4a915d82b4c4fbb9bde534da945d746/jdk-16.0.2_linux-x64_bin.rpm > /root/dowload/jdk.rpm && yum -y localinstall /root/dowload/jdk.rpm &&\
# #     groupadd sonar; adduser -g sonar sonar; \
# #     curl https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.0.1.46107.zip --output /root/dowload/sonarqube-9.0.1.46107.zip &&\
# #     unzip /root/dowload/sonarqube-9.0.1.46107.zip -d /opt &&\
# #     mv /opt/sonarqube-9.0.1.46107 /opt/sonarqube &&\
# #     echo "sonar.jdbc.username=sonar" >> /opt/sonarqube/conf/sonar.properties &&\
# #     echo "sonar.jdbc.password=Password" >> /opt/sonarqube/conf/sonar.properties &&\
# #     echo "sonar.jdbc.url=jdbc:postgresql://sonar.c35yhw7wfnyz.us-east-1.rds.amazonaws.com:5432/sonar" >> /opt/sonarqube/conf/sonar.properties &&\
# #     echo "sonar.web.javaOpts=-Xmx1024m -XX:MaxPermSize=256m -XX:+HeapDumpOnOutOfMemoryError" >> /opt/sonarqube/conf/sonar.properties &&\
# #     echo "sonar.web.host=0.0.0.0" >> /opt/sonarqube/conf/sonar.properties &&\
# #     echo "sonar.web.port=9000" >> opt/sonarqube/conf/sonar.properties &&\
# #     echo "sonar.path.logs=logs" >> /opt/sonarqube/conf/sonar.properties &&\
# #     echo "sonar.path.data=data" >> /opt/sonarqube/conf/sonar.properties &&\
# #     chown -R sonar:sonar /opt/sonarqube/ &&\
# #     chmod -R 777 /opt/sonarqube/data/ /opt/sonarqube/extensions/ /opt/sonarqube/logs/ /opt/sonarqube/temp/

# # USER postgres
# # RUN sh /local/psql.sh
# # USER root


# #### Uncomment below if you want to use localhost for postgres
# ### Install PostgresSQL
# COPY ./local/ /local
# RUN yum -y install postgresql-server postgresql postgresql-contrib dos2unix unzip java-11-openjdk &&\
#     mkdir -p /usr/local/psql/data /var/log/psql /root/dowload && chown -R postgres:postgres /usr/local/psql /var/log/psql &&\
#     chown -R postgres:postgres /var/log/psql/ /usr/local/psql/data && chmod 700 /usr/local/psql/data && dos2unix /local/psql.sh &&\
#     su postgres -c 'sh /local/psql.sh' &&\
#     groupadd sonar; adduser -g sonar sonar; \
#     curl https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.0.1.46107.zip --output /root/dowload/sonarqube-9.0.1.46107.zip &&\
#     unzip /root/dowload/sonarqube-9.0.1.46107.zip -d /opt &&\
#     mv /opt/sonarqube-9.0.1.46107 /opt/sonarqube &&\
#     echo "sonar.jdbc.username=sonar" >> /opt/sonarqube/conf/sonar.properties &&\
#     echo "sonar.jdbc.password=Password" >> /opt/sonarqube/conf/sonar.properties &&\
#     echo "sonar.jdbc.url=jdbc:postgresql://localhost:5432/sonar" >> /opt/sonarqube/conf/sonar.properties &&\
#     echo "sonar.web.javaOpts=-Xmx1024m -XX:MaxPermSize=256m -XX:+HeapDumpOnOutOfMemoryError" >> /opt/sonarqube/conf/sonar.properties &&\
#     echo "sonar.web.host=0.0.0.0" >> /opt/sonarqube/conf/sonar.properties &&\
#     echo "sonar.web.port=9000" >> opt/sonarqube/conf/sonar.properties &&\
#     echo "sonar.path.logs=logs" >> /opt/sonarqube/conf/sonar.properties &&\
#     echo "sonar.path.data=data" >> /opt/sonarqube/conf/sonar.properties &&\
#     chown -R sonar:sonar /opt/sonarqube/ &&\
#     chmod -R 777 /opt/sonarqube/data/ /opt/sonarqube/extensions/ /opt/sonarqube/logs/ /opt/sonarqube/temp/


# EXPOSE 9000
# ENTRYPOINT  ["sh","/local/script.sh"]