FROM saneax/rubyonrails4

RUN mkdir -p /usr/local/src
WORKDIR /usr/local/src



CMD ["rails", "server"]
EXPOSE 80
