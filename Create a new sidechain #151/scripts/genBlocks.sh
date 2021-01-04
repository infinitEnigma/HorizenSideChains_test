#!/bin/bash

if [[ "$?" -ne 0 ]] ; then
  echo 'error'; exit $rc
fi

sleep 1
read -e -p "How many Blocks for Mainchain? : " BLOCKS
zen-cli generate $BLOCKS
sleep 10

read -e -p "epochNumber for Sidechain? : " EPOCH
read -e -p "slotNumber for Sidechain? : " SLOT

CREATE=`curl -X POST "http://127.0.0.1:9085/block/generate" -H  "accept: application/json" -H  "Content-Type: application/json" -d "{\"epochNumber\":$EPOCH,\"slotNumber\":$SLOT}"` && echo CREATE = $CREATE
sleep 1
