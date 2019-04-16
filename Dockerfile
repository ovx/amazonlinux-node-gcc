FROM amazonlinux:latest

# Install deps
RUN yum install gcc44 gcc-c++ libgcc44 cmake wget tar gzip make -y

# Install node
RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | bash -
RUN yum install nodejs npm -y

CMD ["/bin/bash"]