FROM ruby:2.7.2-alpine3.12

ENV CHROME_PACKAGES="chromium-chromedriver zlib-dev chromium xvfb wait4ports xorg-server dbus ttf-freefont mesa-dri-swrast udev"

# RUN apk update && \
#     apk upgrade && \
#     apk add --no-cache --virtual=.build-deps \
#     build-base \
#     mariadb-dev \
#     nodejs \
#     tzdata \
#     yarn

# apk add --update --no-cache --virtual=.build-deps \

RUN apk update && \
    apk upgrade && \
    apk add --no-cache ${CHROME_PACKAGES} \
    build-base \
    imagemagick \
    mariadb-dev \
    nodejs \
    tzdata \
    vim \
    yarn

RUN mkdir /grade-management
ENV APP_ROOT /grade-management
WORKDIR $APP_ROOT
COPY Gemfile $APP_ROOT/Gemfile
COPY Gemfile.lock $APP_ROOT/Gemfile.lock
COPY package.json $APP_ROOT/package.json
COPY yarn.lock $APP_ROOT/yarn.lock
RUN bundle install
COPY . $APP_ROOT

RUN mkdir -p tmp/sockets tmp/pids
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["sh", "entrypoint.sh"]
EXPOSE  3000
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]