#!/bin/sh
envsubst < /config.cfg.tpl > /etc/config.conf
exec "$@"

