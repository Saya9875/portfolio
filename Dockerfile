FROM ruby:2.6.6

RUN apt-get update  \
    && apt-get install -y --no-install-recommends\
    nodejs  \
    build-essential  \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /ours

COPY Gemfile /ours/Gemfile
COPY Gemfile.lock /ours/Gemfile.lock

RUN gem install bundler
RUN bundle install

COPY . /ours