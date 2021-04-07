FROM amazonlinux:2-with-sources

# Install deps
RUN yum groupinstall 'Development Tools' -y

# Install node
RUN curl --silent --location https://rpm.nodesource.com/setup_14.x | bash -
RUN yum install nodejs npm -y

CMD ["/bin/bash"]
