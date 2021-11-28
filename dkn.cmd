@for /F "tokens=2,3,4 delims=/(" %%A in ('git remote -v^|find "fetch"') do @ set "un=%%B" & set "repo=%%C"
@SET repo=%repo:~0,-5%
@echo.
@echo.
@ set/p "blank={%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&}" <nul
@ echo.
@ echo.
@ echo  the web is up at https://%un%.github.io/%repo%/
@ echo.
@ set/p "blank={%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&-~%&}" <nul
@ echo.
@echo.
@echo.
@choice /c YN /m "copy to clipboard?"
@if %errorlevel% EQU 1 (echo https://%un%.github.io/%repo%/|clip)