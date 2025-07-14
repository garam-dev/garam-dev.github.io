@echo off
REM ===========================================
REM 자동 설치 스크립트: WSL, Node.js, Codex/Gemini CLI
REM ===========================================

echo [1/4] WSL 설치 (Ubuntu)
wsl --install -d Ubuntu

echo [2/4] Node.js LTS 설치
wsl curl -fsSL https://deb.nodesource.com/setup_lts.x ^| sudo -E bash -
wsl sudo apt-get install -y nodejs

echo [3/4] Codex CLI 및 Gemini CLI 설치
wsl npm install -g @openai/codex-cli @openai/gemini-cli

echo 설치가 완료되었습니다. WSL 셸에서 'codex --help' 명령을 실행해 보세요.
pause