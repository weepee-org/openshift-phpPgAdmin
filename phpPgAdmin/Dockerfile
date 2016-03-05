FROM weepee-registry/php-webserver

RUN apk --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --update add postgresql && rm -f /var/cache/apk/*

# Add clean phpPgAdmin
ADD app /app

# database config
ADD config.inc.php /app/conf/config.inc.php

# Entrypoint
ADD scripts/run.sh /scripts/run.sh

# Remove and mount attached storage
RUN chmod -R 755 /scripts && chmod a+rwx /app
