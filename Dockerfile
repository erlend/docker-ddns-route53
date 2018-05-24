FROM alpine

ENV VERSION=2.0.2
VOLUME /home/ddns/.aws

RUN apk add -U curl bind-tools bash python3 && \
    pip3 install --upgrade --no-cache-dir pip awscli && \
    curl -L https://github.com/mthssdrbrg/ddns-route53/archive/v$VERSION.tar.gz \
    | tar zx && \
    mv ddns-route53-$VERSION/ddns-route53 /usr/local/bin && \
    adduser -D ddns && \
    apk del curl && \
    rm -rf ddns-route53-$VERSION /var/cache/apk/*

VOLUME /home/ddns/.aws

USER ddns
ENTRYPOINT ["/usr/local/bin/ddns-route53"]
CMD ["-h"]
