FROM ruby:2.1.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs-legacy npm
RUN mkdir /Overtime
WORKDIR /Overtime
ADD Gemfile /Overtime/Gemfile
ADD Gemfile.lock /Overtime/Gemfile.lock
RUN bundle install
ADD . /Overtime
