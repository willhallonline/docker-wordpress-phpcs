FROM willhallonline/phpcs:php-7.2

LABEL maintainer="will@willhallonline.co.uk" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.name="willhallonline/wordpress-phpcs" \
    org.label-schema.description="Ansible inside Docker" \
    org.label-schema.url="https://github.com/willhallonline/docker-wordpress-phpcs" \
    org.label-schema.vcs-url="https://github.com/willhallonline/docker-wordpress-phpcs" \
    org.label-schema.vendor="Will Hall Online" \
    org.label-schema.docker.cmd="docker run -it --rm -v $(pwd):/app willhallonline/wordpress-phpcs:alpine phpcs"

# Retrieve WordPress Coding Standards
RUN git clone -b master https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards.git /root/wpcs

# Set WordPress as default CodeSniffer Standard
RUN phpcs --config-set installed_paths /root/wpcs && phpcs --config-set default_standard WordPress

WORKDIR /app

CMD ["phpcs"]
