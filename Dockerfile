FROM biglioncoding/armhf:xenial

MAINTAINER Big Lion <biglioncoding@gmail.com>

RUN apt-get update && \
    apt-get upgrade -yqq && \
    apt-get install -yqq --allow-unauthenticated gnupg2 cups

ADD ./config/start.sh /root/start.sh

EXPOSE 631

RUN mkdir /config
RUN chmod +x /root/start.sh

ENTRYPOINT ["/root/start.sh"]
CMD [""]
