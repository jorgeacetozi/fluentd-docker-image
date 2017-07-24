FROM fluent/fluentd:v0.14.19

# Install plugins
RUN apk add --update --virtual .build-deps \
        sudo build-base ruby-dev \
 && sudo gem install \
        fluent-plugin-concat \
        fluent-plugin-gelf-hs \
        fluent-plugin-s3 \
 && sudo gem sources --clear-all \
 && apk del .build-deps \
 && rm -rf /var/cache/apk/* \
           /home/fluent/.gem/ruby/2.3.0/cache/*.gem

# Fluentd will write logs to forwarder filesystem when aggregators are unavailable
RUN mkdir -p /var/log/fluentd
