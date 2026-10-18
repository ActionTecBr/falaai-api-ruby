@echo off
rem clean.bat - apaga os artefatos GERADOS do SDK ruby (exemplos + logs)
del /f /q "D:\ProjetoFalaAI\FalaAI\FalaAI_api\sdks\ruby\examples\*.rb" 2>nul
del /f /q "D:\ProjetoFalaAI\FalaAI\FalaAI_api\sdks\ruby\examples\README.md" 2>nul
del /f /q "D:\ProjetoFalaAI\FalaAI\FalaAI_api\sdks\ruby\tests\e2e\logs\ruby_*.json" 2>nul
del /f /q "D:\ProjetoFalaAI\FalaAI\FalaAI_api\sdks\ruby\tests\e2e\logs\ruby_*.html" 2>nul
echo done
pause