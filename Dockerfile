FROM saneax/rubyonrails4

RUN mkdir -p /usr/local/src
WORKDIR /usr/local/src



EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ] 
