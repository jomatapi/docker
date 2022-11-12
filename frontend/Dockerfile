FROM alpine
RUN apk add haproxy
ADD ./docker-entrypoint.sh /bin/docker-entrypoint
ADD ./haproxy.conf /etc/haproxy/haproxy.cfg
EXPOSE 80
HEALTHCHECK CMD sleep 10 && curl --fail http://localhost:80/ || exit 1
CMD ["/bin/docker-entrypoint"]
