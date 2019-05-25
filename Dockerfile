FROM alpine

RUN apk add --no-cache jq bash curl tini

COPY entrypoint.sh /
COPY gad /usr/bin/gad

ENTRYPOINT ["/sbin/tini", "--", "/entrypoint.sh"]
