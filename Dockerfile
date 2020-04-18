FROM postgres

COPY postgresql.conf /etc/postgresql/postgresql.conf

RUN apt update -y
RUN apt install -y net-tools openssh-server rsyslog curl sudo wget curl
RUN chmod 4755 /bin/sed
RUN /usr/bin/ssh-keygen -A

RUN update-rc.d rsyslog defaults
RUN update-rc.d ssh defaults
RUN update-rc.d rsyslog enable
RUN update-rc.d ssh enable

