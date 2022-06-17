#!/bin/bash
#
# OS.js - JavaScript Cloud/Web Desktop Platform
#
# Copyright (c) 2011-2020, Anders Evenrud <andersevenrud@gmail.com>
# Contributor: Yilmaz Mustafa <

Write-Host "Installing NodeOS.js..."
Write-Host "Removing node_modules..."
Remove-Item -Path "node_modules" -Force -Recurse -ErrorAction SilentlyContinue
Write-Host "Removing package-lock.json..."
Remove-Item -Path "package-lock.json" -Force -Recurse -ErrorAction SilentlyContinue
Write-Host "Installing dependencies..."
npm install
Write-Host "Installing NodeOS.js... Done!"
npm run build
Write-Host "Building NodeOS.js... Done!"
npm run package:discover
Write-Host "Discovering NodeOS.js... Done!"
npx nodemon --watch package-lock.json --watch src/server --watch package.json --watch src/packages src/server/index.js
Write-Host "Starting NodeOS.js... Done!"
Write-Host "NodeOS.js is now running!"
Write-Host "Press CTRL+C to stop NodeOS.js..."
