@echo off
title SwingEdge Launcher
color 0A

echo.
echo  ================================
echo   SwingEdge - NSE Swing Screener
echo  ================================
echo.

set PATH=%PATH%;C:\Program Files\nodejs

echo [1/2] Starting API Server...
start "SwingEdge API" cmd /k "cd C:\Users\shrid\SwingEdge\api && python server.py"

timeout /t 3 /nobreak >nul

echo [2/2] Starting React Frontend...
start "SwingEdge Frontend" cmd /k "set PATH=%PATH%;C:\Program Files\nodejs && cd C:\Users\shrid\SwingEdge\frontend && npm run dev"

timeout /t 5 /nobreak >nul

echo.
echo  Both servers starting...
echo  Opening browser...
echo.

start http://localhost:5173

echo  Done! SwingEdge is running.
echo  API:      http://localhost:8001
echo  Frontend: http://localhost:5173
echo.
pause
