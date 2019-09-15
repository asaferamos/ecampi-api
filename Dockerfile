FROM ruby:2.6.3
RUN apt-get update -qq
RUN mkdir /ecampi

WORKDIR /ecampi
COPY Gemfile /ecampi/Gemfile
COPY Gemfile.lock /ecampi/Gemfile.lock
RUN bundle install
COPY . /ecampi

EXPOSE 3000

ENTRYPOINT [ "/ecampi/entrypoint.sh" ]
