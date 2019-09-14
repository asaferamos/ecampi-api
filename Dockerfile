FROM ruby:2.6.3
RUN apt-get update -qq
RUN mkdir /courrier

WORKDIR /courrier
COPY Gemfile /courrier/Gemfile
COPY Gemfile.lock /courrier/Gemfile.lock
RUN bundle install
COPY . /courrier

EXPOSE 3000

ENTRYPOINT [ "/courrier/entrypoint.sh" ]
