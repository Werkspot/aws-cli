FROM alpine:latest

LABEL maintainer "Werkspot Technology <technology@werkspot.nl>"

RUN apk -v --no-cache add \
        python \
        py-pip \
    && pip install --upgrade awscli \
    && apk -v --purge del py-pip

VOLUME /root/.aws

CMD ["aws"]