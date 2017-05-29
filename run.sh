#!/bin/sh
sed -i -e "s/{{CUSTOM_DEFAULT_USER}}/$CUSTOM_DEFAULT_USER/g" /etc/rabbitmq/rabbitmq.config
sed -i -e "s/{{CUSTOM_DEFAULT_PASSWORD}}/$CUSTOM_DEFAULT_PASSWORD/g" /etc/rabbitmq/rabbitmq.config
/docker-entrypoint.sh rabbitmq-server
