FROM saneax/rubyonrails4

RUN mkdir -p /usr/local/src
WORKDIR /usr/local/src



EXPOSE 80
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
