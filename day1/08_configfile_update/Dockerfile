FROM debian
ENV IMIE=Maciej
ENV WIEK=18

COPY config.cfg /config.cfg.tpl
COPY skrypt.sh /

RUN apt-get update && \
apt-get install --no-install-recommends -y gettext && \
rm -fr /var/lib/apt/lists/* && \
chmod +x /skrypt.sh
ENTRYPOINT ["/skrypt.sh"]
CMD ["/bin/bash"]
