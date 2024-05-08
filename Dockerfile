FROM ruby:3.2.2-alpine

RUN apk --no-cache add build-base git

COPY lib /action/lib
COPY README.md LICENSE entrypoint.sh /

RUN gem install bundler:2.4.10

ENTRYPOINT ["/entrypoint.sh"]
