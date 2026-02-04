@echo off
echo ⏳ Attente 20 secondes...
timeout /t 20 /nobreak
git pull origin master
echo ✅ Sync terminee !