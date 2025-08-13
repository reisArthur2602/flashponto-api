@echo off
echo ============================
echo Iniciando Sistema de Ponto
echo ============================

REM Ativa o ambiente virtual
call venv\Scripts\activate

REM Inicia o servidor Flask (em segundo plano)
start /min cmd /c "python app.py"

REM Aguarda 5 segundos antes de iniciar o ngrok
timeout /t 5 >nul

REM Inicia o ngrok apontando para o Flask
start /min cmd /c "ngrok http 5000"

echo Sistema iniciado. Pressione qualquer tecla para sair.
pause >nul