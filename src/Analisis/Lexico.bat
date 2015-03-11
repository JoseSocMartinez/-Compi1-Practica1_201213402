SET JAVA_HOME="C:\Program Files\Java\jdk1.7.0_25\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
SET JFLEX_HOME= C:\Fuentes\jflex-1.6.0
cd C:\Users\Jose\Documents\NetBeansProjects\Practica1C1\src\Analisis
java -jar %JFLEX_HOME%\lib\jflex-1.6.0.jar Scanner.jflex
pause