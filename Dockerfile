FROM ubuntu:22.04
ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update -y
RUN apt-get install -y python3-pip iputils-ping cron git tzdata
COPY entrypoint.sh /cron_entrypoint.sh

ENTRYPOINT ["bash"]
CMD ["/cron_entrypoint.sh"]


