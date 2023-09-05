#!/bin/bash
mkdir -p data/garden
git clone https://github.com/codegod100/daily.git data/garden/vera
cd data/garden/vera
git pull
cd /workspace/sql-import
node sqlite-import.js
sleep 30 #so we don't thrash on restart