FROM alpine
RUN apk add py3-pip curl && \
    pip3 install gunicorn
ADD myapp.py /opt/api/
ADD ./docker-entrypoint.sh /bin/docker-entrypoint
EXPOSE 9000
HEALTHCHECK CMD curl --fail http://localhost:9000/ || exit 1
WORKDIR /opt/api
CMD ["/bin/docker-entrypoint"]
