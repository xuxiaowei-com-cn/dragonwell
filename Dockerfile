FROM openanolis/anolisos:23

LABEL maintainer="徐晓伟 <xuxiaowei@xuxiaowei.com.cn>"

ARG CI_PIPELINE_URL
ARG DRAGONWELL8_URL=https://github.com/dragonwell-project/dragonwell8/releases/download/dragonwell-standard-8.20.21_jdk8u422-ga/Alibaba_Dragonwell_Standard_8.20.21_x64_linux.tar.gz
ARG DRAGONWELL11_URL=https://github.com/dragonwell-project/dragonwell11/releases/download/dragonwell-standard-11.0.24.20_jdk-11.0.24-ga/Alibaba_Dragonwell_Standard_11.0.24.20.8_x64_linux.tar.gz
ARG DRAGONWELL17_URL=https://github.com/dragonwell-project/dragonwell17/releases/download/dragonwell-standard-17.0.12.0.13%2B7_jdk-17.0.12-ga/Alibaba_Dragonwell_Standard_17.0.12.0.13.7_x64_linux.tar.gz
ARG DRAGONWELL21_URL=https://github.com/dragonwell-project/dragonwell21/releases/download/dragonwell-standard-21.0.4.0.4%2B7_jdk-21.0.4-ga/Alibaba_Dragonwell_Standard_21.0.4.0.4.7_x64_linux.tar.gz
ARG JAVA8_HOME=/opt/java/openjdk8
ARG JAVA11_HOME=/opt/java/openjdk11
ARG JAVA17_HOME=/opt/java/openjdk17
ARG JAVA21_HOME=/opt/java/openjdk21
ARG JAVA_HOME=$JAVA21_HOME

ENV CI_PIPELINE_URL=$CI_PIPELINE_URL \
    DRAGONWELL8_URL=$DRAGONWELL8_URL \
    DRAGONWELL11_URL=$DRAGONWELL11_URL \
    DRAGONWELL17_URL=$DRAGONWELL17_URL \
    DRAGONWELL21_URL=$DRAGONWELL21_URL \
    JAVA8_HOME=$JAVA8_HOME \
    JAVA11_HOME=$JAVA11_HOME \
    JAVA17_HOME=$JAVA17_HOME \
    JAVA21_HOME=$JAVA21_HOME \
    JAVA_HOME=$JAVA_HOME \
    PATH=$JAVA_HOME/bin:$PATH

RUN cd /tmp && \
    yum -y install gzip && \
    \
    curl -L -o dragonwell8.tar.gz $DRAGONWELL8_URL && \
    mkdir -p $JAVA8_HOME && \
    tar -zxvf dragonwell8.tar.gz --strip-components=1 -C $JAVA8_HOME && \
    rm -rf dragonwell8.tar.gz && \
    ls -lh $JAVA8_HOME && \
    $JAVA8_HOME/bin/java -version && \
    \
    curl -L -o dragonwell11.tar.gz $DRAGONWELL11_URL && \
    mkdir -p $JAVA11_HOME && \
    tar -zxvf dragonwell11.tar.gz --strip-components=1 -C $JAVA11_HOME && \
    rm -rf dragonwell11.tar.gz && \
    ls -lh $JAVA11_HOME && \
    $JAVA11_HOME/bin/java -version && \
    \
    curl -L -o dragonwell17.tar.gz $DRAGONWELL17_URL && \
    mkdir -p $JAVA17_HOME && \
    tar -zxvf dragonwell17.tar.gz --strip-components=1 -C $JAVA17_HOME && \
    rm -rf dragonwell17.tar.gz && \
    ls -lh $JAVA17_HOME && \
    $JAVA17_HOME/bin/java -version && \
    \
    curl -L -o dragonwell21.tar.gz $DRAGONWELL21_URL && \
    mkdir -p $JAVA21_HOME && \
    tar -zxvf dragonwell21.tar.gz --strip-components=1 -C $JAVA21_HOME && \
    rm -rf dragonwell21.tar.gz && \
    ls -lh $JAVA21_HOME && \
    $JAVA21_HOME/bin/java -version && \
    \
    java -version
