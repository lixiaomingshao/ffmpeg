@echo off
set "t=%time%"

ffmpeg -i D:\video\akb.avi -vcodec libx264 -preset veryfast -filter:v "setpts=12*PTS" D:\video\akb12very.avi

set "t1=%time%"
if "%t1:~,2%" lss "%t:~,2%" set "add=+24"
set /a "times=(%t1:~,2%-%t:~,2%%add%)*360000+(1%t1:~3,2%%%100-1%t:~3,2%%%100)*6000+(1%t1:~6,2%%%100-1%t:~6,2%%%100)*100+(1%t1:~-2%%%100-1%t:~-2%%%100)" 
echo 本次批处理运行时间为%times%ms
pause

