
SET %FLAG%=C:\Flag.txt

IF EXIST %FLAG% GOTO END

mkdir C:\test

:END

ECHO "it ran already !"
pause