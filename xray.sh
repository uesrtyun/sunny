#!/bin/sh
if [ ! -f UUID ]; then
  UUID="587a9712-6b79-4049-86c8-353d0793ce9f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

