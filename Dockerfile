FROM alpine

RUN apk add --no-cache jq bash curl

WORKDIR /app
COPY gad entrypoint.sh ./

ENTRYPOINT [ "bash", "entrypoint.sh" ]