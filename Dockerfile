FROM alpine:3.10
RUN apk update && \
    apk add --no-cache url jq
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]