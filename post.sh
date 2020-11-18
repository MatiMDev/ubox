#!/usr/bin/env bash

DATE=$(date)
echo DATE
curl -d -XPOST -H "LinuxClass: True" -k https://wat11.azurewebsites.net/api/log -H "UboxDate: $DATE"  
