FROM ubuntu:xenial

MAINTAINER Sergio Rodríguez <sergio.rdzsg@gmail.com>

RUN apt-get update \
  && apt-get install -y --no-install-recommends build-essential git \
  libxapian-dev libxapian22v5 uuid-dev ruby rails \
  zlib1g-dev ruby-dev libmysqlclient-dev libsqlite3-dev\
  && gem update --system \
  && gem install rails \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && git clone https://github.com/ch3k0/ddjj_front_rails_lanacion.git ddjj

WORKDIR /ddjj

COPY database.yml.example config/database.yml

COPY basic_authenticate.rb.example config/initializers/basic_authenticate.rb

RUN bundle install

EXPOSE 5000

CMD ["rails", "s"]
