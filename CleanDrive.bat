@echo off
title Flash Drive Cleaner

echo.
echo This script will remove hidden macOS files (.DS_Store, ._* files, etc.)
echo from the drive you specify.
echo.

set /p DriveLetter="Enter the drive letter of your flash drive (e.g., E): "

:: Basic check to make sure a letter was entered and the drive exists
if not exist %DriveLetter%:\ (
    echo.
    echo ERROR: The drive %DriveLetter%: does not seem to exist.
    echo Please check the letter and run the script again.
    goto end
)

echo.
echo WARNING: This will permanently delete files from drive %DriveLetter%:\
pause

echo.
echo Changing to drive %DriveLetter%:\...
cd /d %DriveLetter%:\

echo Deleting .DS_Store files...
del /s /q /f /a:h .DS_Store > nul

echo Deleting ._* resource fork files...
del /s /q /f /a:h ._* > nul

echo Removing hidden macOS directories...
if exist ".Trashes" rmdir /s /q ".Trashes"
if exist ".Spotlight-V100" rmdir /s /q ".Spotlight-V100"
if exist ".fseventsd" rmdir /s /q ".fseventsd"

echo.
echo ---
echo Cleaning complete! You can now safely eject the drive.
echo.

:end
pause