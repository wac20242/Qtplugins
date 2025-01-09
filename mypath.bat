@echo off
REM: This file is not used for path extraction
:: Extract the path of the current batch file
set myfiles_path=%~dp0
:: Check if the path is already in the PATH variable
for %%p in (%PATH%) do (
    if "%%~p" == "%myfiles_path%" goto already_in_path
)
:: Add the path to the PATH variable (users only)
:: setx PATH "%myfiles_path%;%PATH%"
setx PATH "%myfiles_path%;%PATH%" >nul 2>&1
:already_in_path

