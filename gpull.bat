@echo off
echo ⏳ synchronisarion en cours...
timeout /t 5 /nobreak
git pull origin master
echo ✅ Sync terminee !
git status