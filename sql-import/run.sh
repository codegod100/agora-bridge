#!/bin/bash
mkdir -p garden
git clone https://github.com/codegod100/daily.git garden/vera
export GARDEN_DIR=/workspace/sql-import/garden
node sqlite-import.js