@echo off
title batb
cd ./libs
java -jar selenium-server-standalone-2.45.0.jar -port 8888 -role node -hub http://localhost:4444/grid/register -Dwebdriver.chrome.driver="../resource/chromedriver.exe"
