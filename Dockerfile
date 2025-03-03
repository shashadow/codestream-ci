FROM centos:centos7
LABEL maintainer="administrator@konyxia.com"

ADD ca-trust /etc/pki/ca-trust/source/anchors/
ADD VERSION .

RUN yum -yq install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum update -y && yum -y install curl wget unzip git ca-certificates openssl jq && \
    update-ca-trust force-enable && \
    update-ca-trust extract