# do not use alpine! https://pythonspeed.com/articles/alpine-docker-python/
FROM python:3.8-slim
WORKDIR /app
EXPOSE 8000
RUN pip install mkdocs && pip install mkdocs-cinder
VOLUME /app/repository
ADD ./mkdocs-entrypoint.sh /app
ENTRYPOINT ["/bin/sh", "/app/mkdocs-entrypoint.sh"]
