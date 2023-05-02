@echo off
echo Current working directory: %cd%
echo Location of convert_files.m: %cd%\convert_files.m
"C:\Program Files\MATLAB\R2022b\bin\matlab.exe" -batch "addpath('.'); convert_files"
