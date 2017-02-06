FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.4

RUN gem install delta_test --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["delta_test"]
CMD ["--help"]
