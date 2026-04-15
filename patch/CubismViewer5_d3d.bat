@echo off
setlocal
cd /d "%~dp0"

rem *********************************************************************
rem Live2D Cubism ver 5.3.02
rem *********************************************************************

rem ** Java VM
set JAVA_EXE=app\jre\bin\java.exe

rem ** Memory Size
rem set MAX_MEMORY=4000
rem set MAXMEMORY=-Xmx%MAX_MEMORY%m
set MAXMEMORY=-XX:MaxRAMPercentage=100

rem ** Library JAR file
set CLASS_PATH=app\lib\Live2D_Cubism.jar;app\lib\annotations-13.0.jar;app\lib\basicplayer3.0.jar;app\lib\commons-beanutils-1.9.4.jar;app\lib\commons-collections4-4.4.jar;app\lib\commons-lang3-3.13.0.jar;app\lib\commons-logging-api.jar;app\lib\commons-text-1.11.0.jar;app\lib\flatlaf-3.2.2.jar;app\lib\flatlaf-extras-3.2.2.jar;app\lib\Java-WebSocket-1.5.4.jar;app\lib\javax.activation-1.2.0.jar;app\lib\jdom-1.1.jar;app\lib\jl1.0.jar;app\lib\jna-5.6.0.jar;app\lib\jna-platform-5.6.0.jar;app\lib\jogg-0.0.7.jar;app\lib\jorbis-0.0.15.jar;app\lib\jpen-2.jar;app\lib\json-simple-1.1.jar;app\lib\jsonic-1.3.10.jar;app\lib\jsvg-1.2.0.jar;app\lib\kotlin-reflect-1.7.21.jar;app\lib\kotlin-stdlib-1.7.21.jar;app\lib\kotlin-stdlib-common-1.7.21.jar;app\lib\kotlin-stdlib-jdk7-1.7.21.jar;app\lib\kotlin-stdlib-jdk8-1.7.21.jar;app\lib\Live2DCubismCore.jar;app\lib\Live2DCubismMotionSync.jar;app\lib\Live2DCubismPFUtils.jar;app\lib\log4j-api-2.17.1.jar;app\lib\log4j-core-2.17.1.jar;app\lib\log4j-iostreams-2.17.1.jar;app\lib\log4j-jcl-2.17.1.jar;app\lib\log4j-jul-2.17.1.jar;app\lib\mp3spi1.9.4.jar;app\lib\onnxruntime-1.13.1.jar;app\lib\opencsv-5.9.jar;app\lib\rlm1603_mod.jar;app\lib\slf4j-api-2.0.6.jar;app\lib\slf4j-simple-2.0.6.jar;app\lib\tritonus_share.jar;app\lib\vorbisspi1.0.2.jar;app\lib\jogl\gluegen-rt.jar;app\lib\jogl\jocl.jar;app\lib\jogl\jogl-all.jar
rem ** Native library directory
set NATIVE_PATH=app\dll64;app\dll64\windows-amd64
rem ** Add DLL Directory to PATH
set PATH="%PATH%;%~dp0app\dll64;"

%JAVA_EXE% ^
  -classpath "%CLASS_PATH%" ^
  -Djava.library.path="%NATIVE_PATH%" ^
  -Djogamp.gluegen.UseTempJarCache=false ^
  -Duser.language=zh ^
  %MAXMEMORY% ^
  -showversion ^
  -Djava.locale.providers=COMPAT,SPI ^
  com.live2d.cubism.doc.modeling.ui.viewerForOriginalWorkflow.OWViewerDropFrame ^
  "%~f1"
