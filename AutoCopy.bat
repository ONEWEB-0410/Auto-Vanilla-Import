@echo off 

Set _a=%
Set _b=%userprofile%

FOR /F "delims=" %%i IN ('dir "%_a%%_b%%_a%\AppData\Local\Roblox\Versions" /b /ad-h /t:c /od') DO SET a=%%i


if exist %_a%%_b%%_a%\AppData\Local\Roblox\Versions\%a% (echo "Loading...") else (echo "ERROR!")

if exist %0\..\ClassImages.png (echo "Copying files") else (echo "There is no file with the name ClassImages.png. Please make sure that you have put it in the same folder with the .bat program")

copy "%0\..\ClassImages.png"  "%_a%%_b%%_a%\AppData\Local\Roblox\Versions\%a%\content\textures"



echo "Process finished! 


pause
