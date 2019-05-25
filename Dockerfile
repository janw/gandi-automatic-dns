FROM alpine

ARG SCHEDULE="*/5 * * * *"

RUN apk add --no-cache jq bash curl

RUN echo "${SCHEDULE} gad" > /etc/crontabs/root
COPY gad /usr/bin/gad

# start crond with log level 8 in foreground, output to stderr
CMD ["crond", "-f", "-d", "8"]

