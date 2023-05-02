@echo off
matlab -batch "addpath('.'); convert_files"
git add .
git diff-index --quiet HEAD
if errorlevel 1 (
    git commit -m "Add generated PDF and HTML files"
    git push
)
