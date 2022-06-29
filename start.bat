@echo off
set EXECUTABLE=%0
set XDG_DATA_HOME=%~dp0
set XDG_CONFIG_HOME=%~dp0
start nvim-qt %~1