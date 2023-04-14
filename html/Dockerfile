# Build arguments
ARG IMAGE
ARG APP_PATH=.

FROM $IMAGE

RUN whoami

ADD --chown=application ${APP_PATH} /app

RUN pwd
RUN ls -la
RUN ls -la /app/

USER application
WORKDIR /app
