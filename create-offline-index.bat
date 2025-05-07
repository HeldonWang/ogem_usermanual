@echo off
echo Installing dependencies...
npm install cheerio

echo Building HonKit documentation...
npx honkit build

echo Generating offline index.html...
node generate-offline-index.js

echo Offline index.html created successfully!
pause 