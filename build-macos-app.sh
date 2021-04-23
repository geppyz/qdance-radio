#!/bin/sh
echo "[$(date)] Start Q-Dance Radio MacOS App build." 
mkdir -p build/macos
if [ -d "build/macos/Q-Dance Radio.app" ];
then
    echo "[$(date)] Removing previous build." 
    rm -r "build/macos/Q-Dance Radio.app"
fi
echo "[$(date)] Building go code."
go build -o qdance-radio .
echo "[$(date)] Creating MacOS App folders." 
mkdir -p build/macos/qdance-radio/Contents/
mkdir -p build/macos/qdance-radio/Contents/MacOS/
mkdir -p build/macos/qdance-radio/Contents/Resources/
echo "[$(date)] Copying MacOS App files." 
cp qdance-radio build/macos/qdance-radio/Contents/MacOS/qdance-radio
cp assets/macos/Info.plist build/macos/qdance-radio/Contents/Info.plist
cp assets/macos/qdanceradio_512x512x32.icns build/macos/qdance-radio/Contents/Resources/qdanceradio_512x512x32.icns
echo "[$(date)] Renaming folder to App." 
mv build/macos/qdance-radio build/macos/Q-Dance\ Radio.app/
echo "[$(date)] Cleaning-up."
rm qdance-radio
echo "[$(date)] Completed Q-Dance Radio MacOS App build."  
