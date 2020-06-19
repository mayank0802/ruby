FROM saneax/rubyonrails4

RUN mkdir -p /srv && useradd -d /srv -m -s /bin/bash ruby && chown -R ruby /srv
RUN mkdir -p /usr/local/src
WORKDIR /usr/local/src


USER ruby
