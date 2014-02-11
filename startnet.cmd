@ECHO OFF
SETLOCAL

WPEINIT
FOR %%a IN (B C D E F G H I J K L M N O P Q R S T U V W X Y Z) DO (
IF EXIST %%a:\cd_media   SET _ROOT_MEDIA=%%a:
)
SET %ColLine%=x:\Windows\System32\cmdclr.exe

CLS
%ColLine% 0a
ECHO ====================================================================
ECHO  [ ##### Windows Loader ] : 설치 지원 초기화 작업
ECHO ====================================================================
%ColLine% 07
ECHO.
ECHO.
REM NETCFG.EXE -WINPE >NULL
REM NETCFG.EXE -WINPE >NULL
REM IPCONFIG /RENEW >NULL
REM IPCONFIG /RENEW >NULL

start cmd
pause

:WinInstall
%ColLine% 0a
ECHO ====================================================================
ECHO  ##### (http://www.#####.com) Windows PreInstallration Menu
ECHO ====================================================================
ECHO.
%ColLine% 0c
ECHO  **** 32비트만 설치가능한 모드입니다     ****
%ColLine% 07
ECHO.
ECHO  [1] : Windows 2003 Server STD - Korea
ECHO  [2] : Windows 2003 Server ENT - Korea
ECHO  [3] : Windows 2003 Server STD - English
ECHO  [4] : Windows 2003 Server ENT - English
ECHO.
ECHO.
ECHO  [0] : 작업 취소
ECHO.
%ColLine% 0a
ECHO ====================================================================
%ColLine% 07
ECHO.
SET CHOICE='0'
SET /P CHOICE=     * 설치를 원하는 OS를 선택하십시오 :

IF '%CHOICE%'=='1' GOTO WIN2003_STD_KOR
IF '%CHOICE%'=='2' GOTO WIN2003_ENT_KOR
IF '%CHOICE%'=='3' GOTO WIN2003_STD_ENG
IF '%CHOICE%'=='4' GOTO WIN2003_ENT_ENG

IF '%CHOICE%'=='0' GOTO QUIT

GOTO WinInstall


REM ####
REM ### 수동설치 부분 #
REM ####

:WIN2003_STD_KOR
CLS
%ColLine% 0f
ECHO [Windows 2003 Server STD] - 한국어
ECHO.
REM NET USE R: \\###.###.###.###\winsource /USER:winsource tkftkfqkedk@
REM DISKPART.EXE /S X:\WINDOWS\SYSTEM32\DISKPART.TXT
ECHO.
REM FORMAT J: /FS:NTFS /Q /V:윈도우 /Y
ECHO.
%_ROOT_MEDIA%\cd_media\W2K3\std\ko\setup.exe
REM %_ROOT_MEDIA%\cd_media\W2K3\std\ko\I386\WINNT32.EXE /SYSPART:J /TEMPDRIVE:J /MAKELOCALSOURCE /NOREBOOT
REM R:\WIN2003_STD\I386\WINNT32.EXE /SYSPART:J /TEMPDRIVE:J /MAKELOCALSOURCE /NOREBOOT
EXIT

:WIN2003_ENT_KOR
CLS
%ColLine% 0f
ECHO [Windows 2003 Server ENT] - 한국어
ECHO.
REM NET USE R: \\###.###.###.###\winsource /USER:winsource tkftkfqkedk@
REM DISKPART.EXE /S X:\WINDOWS\SYSTEM32\DISKPART.TXT
ECHO.
REM FORMAT J: /FS:NTFS /Q /V:윈도우 /Y
ECHO.
%_ROOT_MEDIA%\cd_media\W2K3\std\ko\i386\WINNT32.EXE

REM R:\WIN2003_ENT\I386\WINNT32.EXE /SYSPART:J /TEMPDRIVE:J /MAKELOCALSOURCE /NOREBOOT
EXIT

:WIN2003_STD_ENG
CLS
%ColLine% 0f
ECHO [Windows 2003 Server STD] - English
ECHO.
REM NET USE R: \\###.###.###.###\winsource /USER:winsource tkftkfqkedk@
REM DISKPART.EXE /S X:\WINDOWS\SYSTEM32\DISKPART.TXT
ECHO.
REM FORMAT J: /FS:NTFS /Q /V:윈도우 /Y
ECHO.
%_ROOT_MEDIA%\cd_media\W2K3\std\en\setup.exe
REM %_ROOT_MEDIA%\cd_media\W2K3\std\ko\I386\WINNT32.EXE /SYSPART:J /TEMPDRIVE:J /MAKELOCALSOURCE /NOREBOOT
REM R:\WIN2003_STD\I386\WINNT32.EXE /SYSPART:J /TEMPDRIVE:J /MAKELOCALSOURCE /NOREBOOT
EXIT

:WIN2003_ENT_ENG
CLS
%ColLine% 0f
ECHO [Windows 2003 Server ENT] - English
ECHO.
REM NET USE R: \\###.###.###.###\winsource /USER:winsource tkftkfqkedk@
REM DISKPART.EXE /S X:\WINDOWS\SYSTEM32\DISKPART.TXT
ECHO.
REM FORMAT J: /FS:NTFS /Q /V:윈도우 /Y
ECHO.
%_ROOT_MEDIA%\cd_media\W2K3\std\en\i386\WINNT32.EXE

REM R:\WIN2003_ENT\I386\WINNT32.EXE /SYSPART:J /TEMPDRIVE:J /MAKELOCALSOURCE /NOREBOOT
EXIT

:WIN2008_X86_WEB
CLS
ECHO [수동설치] - [Windows Server 2008 x86 WEB]
ECHO.
NET USE R: \\###.###.###.###\winsource /USER:winsource tkftkfqkedk@
DISKPART.EXE /S X:\WINDOWS\SYSTEM32\DISKPART.TXT
ECHO.
FORMAT J: /FS:NTFS /Q /V:윈도우 /Y
ECHO.
R:\WIN2008_x86_WEB\setup.exe
EXIT

:WIN2008_x86
CLS
ECHO [수동설치] - [Windows Server 2008 x86]
ECHO.
NET USE R: \\###.###.###.###\winsource /USER:winsource tkftkfqkedk@
DISKPART.EXE /S X:\WINDOWS\SYSTEM32\DISKPART.TXT
ECHO.
FORMAT J: /FS:NTFS /Q /V:윈도우 /Y
ECHO.
R:\WIN2008_x86_SP2\setup.exe
EXIT

:WIN2008_x64
CLS
ECHO [수동설치] - [Windows Server 2008 x64]
ECHO.
NET USE R: \\###.###.###.###\winsource /USER:winsource tkftkfqkedk@
DISKPART.EXE /S X:\WINDOWS\SYSTEM32\DISKPART.TXT
ECHO.
R:\WIN2008_x64\setup.exe
EXIT

:WIN2008_R2
CLS
ECHO [수동설치] - [Windows Server 2008 R2 All ver.]
ECHO.
NET USE R: \\###.###.###.###\winsource /USER:winsource tkftkfqkedk@
DISKPART.EXE /S X:\WINDOWS\SYSTEM32\DISKPART.TXT
ECHO.
FORMAT J: /FS:NTFS /Q /V:윈도우 /Y
ECHO.
R:\WIN2008_R2\setup.exe
EXIT


GOTO QUIT


:MAIN
CLS
ECHO ====================================================================
ECHO  ##### (http://www.#####.net) Windows PreInstallration Menu
ECHO  => 설치에 필요한 소스파일을 어디로부터 가져올 것인지 선택하십시오.
ECHO ====================================================================
ECHO.
ECHO  [1] : 오포 FACTORY
ECHO  [2] : 분당 KT-IDC
ECHO  [3] : 가산 IDC-SMILE

ECHO.
ECHO.
ECHO  [0] : 작업 취소
ECHO.
ECHO ====================================================================
ECHO  * 주의 : [무인설치 모드] : HDD DATA 백업 필수. (모든 DATA 제거됨)
ECHO ====================================================================
ECHO.

SET CHOICE='0'
SET /P CHOICE=     * 리모트 소스 위치를 선택하십시오 :

IF '%CHOICE%'=='1' GOTO OPO
IF '%CHOICE%'=='2' GOTO KT
IF '%CHOICE%'=='3' GOTO GASAN

IF '%CHOICE%'=='0' GOTO QUIT

GOTO MAIN

:OPO
CLS
INSTALL-OPO_2008.CMD
EXIT

:KT
CLS
INSTALL-KT.CMD
EXIT

:GASAN
CLS
INSTALL-GASAN.CMD
EXIT


:QUIT
ECHO.
ECHO.
ECHO.
ECHO ==========================================================================
ECHO [Windows 원격 설치] 작업이 종료 되었습니다....... Good-Bye....(^.^)
ECHO ==========================================================================
ECHO.
ECHO.
ECHO.
