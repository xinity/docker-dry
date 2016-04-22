FROM alpine

MAINTAINER Rachid Zarouali <rachid.zarouali@gmail.com>

RUN apk --update add file curl

RUN curl -sSf https://moncho.github.io/dry/dryup.sh | sh
RUN chmod 755 /usr/local/bin/dry

ENTRYPOINT ["dry"]
