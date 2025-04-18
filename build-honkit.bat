@echo off
echo Building HonKit documentation...

REM Clean the _book directory if it exists
if exist _book (
    echo Cleaning _book directory...
    rmdir /s /q _book
)

REM Build the book
echo Building the book...
npx honkit build

REM Check if build was successful
if %ERRORLEVEL% NEQ 0 (
    echo Error building the book!
    exit /b %ERRORLEVEL%
)

echo Build completed successfully!
echo The book is available in the _book directory.
echo.
echo To serve the book locally, run: npx honkit serve
echo To generate PDF, run: npx honkit pdf
echo.

REM Ask if user wants to serve the book
set /p SERVE_BOOK=Do you want to serve the book locally? (y/n): 

if /i "%SERVE_BOOK%"=="y" (
    echo Starting local server...
    npx honkit serve
)

exit /b 0 