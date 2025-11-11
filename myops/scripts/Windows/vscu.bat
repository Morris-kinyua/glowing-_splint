@echo off

REM Set memory allocation
set JAVA_OPTS=-Xms512m -Xmx4096m

REM Specify the JAR file
set JAR_FILE=vscu-v2.0.5.jar

REM Run the JAR file in a new window and redirect output to the original command window
start /wait java %JAVA_OPTS% -jar "%JAR_FILE%" 2>&1

REM Exit the original command window
exit