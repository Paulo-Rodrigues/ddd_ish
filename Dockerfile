FROM ruby:3.0.0

RUN apt-get update && apt-get install -y postgresql-client
WORKDIR /ddd_ish

COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock

RUN gem install bundler && bundle install

COPY . /ddd_ish
