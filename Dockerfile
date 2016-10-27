FROM ruby:2.1

COPY Gemfile .

RUN bundle install

COPY . . 

ENV LOG_LEVEL=error

CMD bundle exec unicorn -d