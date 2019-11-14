FROM alpine:3

LABEL maintainer "Werkspot Technology <technology@werkspot.nl>"

ARG AWS_CLI_VERSION=1.16.281
ENV AWS_CLI_VERSION=$AWS_CLI_VERSION
RUN apk -v --no-cache add \
        python \
        py-pip \
    && pip install --upgrade awscli==$AWS_CLI_VERSION \
    && apk -v --purge del py-pip

VOLUME /root/.aws

CMD ["aws"]