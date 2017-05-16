#!/bin/sh -e

if [ -e /etc/td-agent/extra/install.sh ]; then
	chmod +x /etc/td-agent/extra/install.sh
	/etc/td-agent/extra/install.sh
fi

CONF_FILE=/etc/td-agent/td-agent.conf
sed -i "s/elasticsearch-logging/$ES_HOST/" $CONF_FILE

/usr/sbin/td-agent