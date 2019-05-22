FROM alpine

RUN apk add --no-cache openssl bash curl

WORKDIR /app
COPY gad entrypoint.sh ./

ENTRYPOINT [ "bash", "entrypoint.sh" ]