FROM alpine

RUN apk add --no-cache jq bash curl

WORKDIR /app
COPY gad ./

ENTRYPOINT [ "bash", "gad" ]