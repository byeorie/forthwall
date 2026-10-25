@echo off
chcp 65001 > nul
cd /d "%~dp0"
echo.
echo ==== GitHub upload (deploy) ====
echo.
git add -A
git commit -m "update works %date% %time%"
git push origin main
echo.
if errorlevel 1 (
  echo [!] Upload failed. Check internet / GitHub login and try again.
) else (
  echo [OK] Done. The site updates in 1-2 minutes.
)
echo.
pause
