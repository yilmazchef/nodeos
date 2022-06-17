#!/bin/bash
#
# OS.js - JavaScript Cloud/Web Desktop Platform
#
# Copyright (c) 2011-2020, Anders Evenrud <andersevenrud@gmail.com>

npm install
npm run build
npm run package:discover
npx nodemon --watch package-lock.json --watch src/server --watch package.json --watch src/packages src/server/index.js
