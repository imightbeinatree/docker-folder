FROM imightbeinatree/sshable
MAINTAINER Michael Orr <michael@cloudspace.com>

ADD bash_scripts/run.sh /run.sh
RUN chmod 755 /*.sh
CMD ["/run.sh"]