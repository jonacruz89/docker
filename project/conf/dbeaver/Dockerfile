FROM openjdk:11-jre

LABEL maintainer "Sergei O. Udalov <sergei.udalov@gmail.com>"

RUN apt-get update && \
    apt-get install --no-install-recommends -y wget libswt-gtk-3-jni libswt-gtk-3-java 

RUN apt-get install -y openjdk-8-jre-headless
#RUN apt-get install -y java-runtime-headless


ENV VERSION 6.1.1
RUN wget -O ./dbeaver-ce_${VERSION}_amd64.deb https://github.com/dbeaver/dbeaver/releases/download/${VERSION}/dbeaver-ce_${VERSION}_amd64.deb

RUN dpkg -i dbeaver-ce_${VERSION}_amd64.deb

CMD ['dbeaver']
