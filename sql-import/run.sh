#!/bin/bash
mkdir -p garden
git clone https://github.com/codegod100/daily.git garden/vera
cd garden/vera
git pull
cd /workspace/sql-import
export GARDEN_DIR=/workspace/sql-import/garden
node sqlite-import.js
sleep 30 #so we don't thrash on restart