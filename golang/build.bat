@echo off
echo Building dll ...
go build -o goturnt.dll -buildmode=c-shared
echo Copying dll ...
copy /y goturnt.dll ..\prebuilt-binaries\ 
echo Completed dll

echo Building so ...
go build -o goturnt.so -buildmode=c-shared
echo Copying so ...
copy /y goturnt.so ..\prebuilt-binaries\ 
echo Completed so

echo Building dylib ...
go build -o goturnt.dylib -buildmode=c-shared
echo Copying dylib ...
copy /y goturnt.dylib ..\prebuilt-binaries\ 
echo Completed dylib