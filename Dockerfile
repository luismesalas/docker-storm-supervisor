FROM luismesalas/storm
MAINTAINER luismesalas

RUN /usr/bin/config-supervisord.sh supervisor
RUN /usr/bin/config-supervisord.sh logviewer

EXPOSE 6700
EXPOSE 6701
EXPOSE 6702
EXPOSE 6703
EXPOSE 8000

ADD start-supervisor.sh /usr/bin/start-supervisor.sh
CMD /usr/bin/start-supervisor.sh
