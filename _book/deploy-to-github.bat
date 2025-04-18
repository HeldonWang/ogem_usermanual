@echo off
echo Deploying HonKit documentation to GitHub Pages...

REM Build the book
echo Building the book...
npx honkit build

REM Check if build was successful
if %ERRORLEVEL% NEQ 0 (
    echo Error building the book!
    exit /b %ERRORLEVEL%
)

REM Create or update the gh-pages branch
echo Preparing for GitHub Pages deployment...

REM Check if git is installed
where git >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo Git is not installed or not in the PATH. Please install Git and try again.
    exit /b 1
)

REM Save current branch name
for /f "tokens=*" %%a in ('git rev-parse --abbrev-ref HEAD') do set CURRENT_BRANCH=%%a

REM Check if there are uncommitted changes
git diff-index --quiet HEAD --
if %ERRORLEVEL% NEQ 0 (
    echo There are uncommitted changes in your working directory.
    set /p CONTINUE=Do you want to continue anyway? (y/n): 
    if /i NOT "%CONTINUE%"=="y" (
        echo Deployment aborted.
        exit /b 1
    )
)

REM Create a temporary directory for the gh-pages branch
if exist .gh-pages-tmp (
    rmdir /s /q .gh-pages-tmp
)
mkdir .gh-pages-tmp

REM Copy the built book to the temporary directory
xcopy /s /e /y _book\* .gh-pages-tmp\

REM Create a .nojekyll file to prevent GitHub from processing the site with Jekyll
echo. > .gh-pages-tmp\.nojekyll

REM Switch to gh-pages branch or create it if it doesn't exist
git branch -f gh-pages
git checkout gh-pages

REM Remove all files from the gh-pages branch
for /d %%i in (*) do (
    if not "%%i"==".git" if not "%%i"==".gh-pages-tmp" (
        rmdir /s /q "%%i"
    )
)
del /q *

REM Copy the contents from the temporary directory
xcopy /s /e /y .gh-pages-tmp\* .

REM Remove the temporary directory
rmdir /s /q .gh-pages-tmp

REM Add all files, commit, and push
git add -A
git commit -m "Update documentation"
git push -f origin gh-pages

REM Switch back to the original branch
git checkout %CURRENT_BRANCH%

echo Deployment completed successfully!
echo Your documentation should be available at: https://[username].github.io/[repository-name]/
echo (Replace [username] and [repository-name] with your GitHub username and repository name)

exit /b 0 