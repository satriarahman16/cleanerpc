@echo off
title Auto PC Cleaner Ultimate
color 0A
echo ===================================================
echo        MEMULAI PEMBERSIHAN TOTAL FILE SAMPAH
echo ===================================================
echo.

rem 1. Membersihkan folder Temporary User
echo [1/6] Membersihkan folder User Temp...
del /q /f /s %temp%\* >nul 2>&1
for /d %%x in ("%temp%\*") do @rd /s /q "%%x" >nul 2>&1

rem 2. Membersihkan folder Temporary Windows
echo [2/6] Membersihkan folder Windows Temp...
del /q /f /s C:\Windows\Temp\* >nul 2>&1
for /d %%x in (C:\Windows\Temp\*) do @rd /s /q "%%x" >nul 2>&1

rem 3. Membersihkan folder Prefetch
echo [3/6] Membersihkan folder Prefetch...
del /q /f /s C:\Windows\Prefetch\* >nul 2>&1

rem 4. Membersihkan Cache Windows Update
echo [4/6] Membersihkan Cache Windows Update...
del /q /f /s C:\Windows\SoftwareDistribution\Download\* >nul 2>&1
for /d %%x in (C:\Windows\SoftwareDistribution\Download\*) do @rd /s /q "%%x" >nul 2>&1

rem 5. Membersihkan DNS Cache (Memperbaiki koneksi internet yang lambat)
echo [5/6] Membersihkan DNS Cache...
ipconfig /flushdns >nul 2>&1

rem 6. Mengosongkan Recycle Bin (Tempat Sampah)
echo [6/6] Mengosongkan Recycle Bin...
rd /s /q %systemdrive%\$Recycle.bin >nul 2>&1

echo.
echo ===================================================
echo     PEMBERSIHAN SELESAI! LAPTOP LEBIH RINGAN.
echo ===================================================
pause