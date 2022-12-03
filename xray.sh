#!/bin/sh
if [ ! -f UUID ]; then
  UUID="e9c1ef42-a8cb-4443-b497-5b2eefd6bb2f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

