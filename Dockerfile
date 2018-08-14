FROM ruby:2.5.1-alpine
ENV LANG="ja_JP.UTF-8" \
    APP_PATH="/sinatra-json-api"
RUN apk --update --no-cache add build-base \
                                linux-headers \
                                git \
                                cmake \
                                less \
                                tzdata
WORKDIR $APP_PATH
COPY . $APP_PATH
RUN bundle install
EXPOSE 3000
CMD ["ruby", "api.rb", "-o", "0.0.0.0", "-p", "3000"]
