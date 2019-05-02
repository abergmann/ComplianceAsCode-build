# Docker container to build ComplianceAsCode/content.
FROM opensuse/leap:15.0 AS build
USER root
MAINTAINER Alex

# Add essential packages
RUN zypper -n in git cmake openscap-utils python3-PyYAML python3-Jinja2 libxslt-tools libxml2-tools expat
RUN useradd -m build
RUN su - build -c 'git clone https://github.com/openSUSE/ComplianceAsCode-content.git; cd ComplianceAsCode-content; git checkout stig-sle12'

# Switch to user 'build'.
FROM build
USER build
MAINTAINER Alex

COPY --chown=build:users build.sh /home/build/bin
RUN echo 'PATH=$PATH:~/bin' > ~/.bashrc

ENTRYPOINT ["/home/build/bin/build.sh"]

