FROM ruby:2.5.0

# Dependancies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /roadmap5
WORKDIR /roadmap5

ADD Gemfile /roadmap5/Gemfile
ADD Gemfile.lock /roadmap5/Gemfile.lock

RUN bundle install

ADD . /roadmap5
