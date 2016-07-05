@ECHO OFF
set WEB_ROOT=C:/inetpub/wwwroot/mytestsite
set PROJECT_ROOT=F:/Source/WebApplication1  
echo Publishing site %PROJECT_ROOT% to %WEB_ROOT%   
del /S /Q %WEB_ROOT%\*.* || goto Error
rmdir /S /Q %WEB_ROOT%\ || goto Error
aspnet_compiler -p "%PROJECT_ROOT%" / -v / "%WEB_ROOT%" || goto Error   

goto Success
:Error
echo Site was not published 
goto End  
:Success
echo Site published successfully   
:End