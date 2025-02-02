@echo off
for /f %%f in ('dir /b ..\lib\*.rb') do (
    ruby -c %~dp0\..\lib\%%f
)
