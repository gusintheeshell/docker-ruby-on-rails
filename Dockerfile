FROM ruby:2.6.0
RUN apt update -qq && apt install build-essential libpq-dev nodejs -y
RUN mkdir /example-app
WORKDIR /example-app
ADD Gemfile /example-app/Gemfile
ADD Gemfile.lock /example-app/Gemfile.lock
RUN bundle install
ADD . /example-app