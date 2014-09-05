@echo off
ECHO %date% %time%: started QvRestart.bat >>"QvRestart.log"

REM -------------------------------------------------------
REM - Description: Stop all QlikView related services(v1.0)
REM -------------------------------------------------------
echo Stop QlikView Services
echo ======================================================

net stop "QlikView Server"
net stop "Qlikview Directory Service Connector"
net stop "QlikView Distribution Service"
net stop "QlikView Management Service"
net stop "QlikView WebServer"

echo ======================================================
echo All QlikView related services have been stopped ...

timeout /T 30

REM -------------------------------------------------------
REM - Description: Start all QlikView related services(v1.0)
REM -------------------------------------------------------
echo Start QlikView Services
echo ======================================================

net start "Qlikview Directory Service Connector"
net start "QlikView Distribution Service"
net start "QlikView Management Service"
net start "QlikView Server"
net start "QlikView WebServer"

echo ======================================================
echo All QlikView related services have been started ...

ECHO %date% %time%: finished QvRestart.bat >>"QvRestart.log"