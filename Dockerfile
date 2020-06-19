FROM ruby:2.4
FROM nginx

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /usr/src/app
#COPY Gemfile* ./
#RUN bundle install
COPY app/views/ . 

CMD [ "nginx", "-g", "daemon off;" ] 



CMD ["rails", "server"]
EXPOSE 80
