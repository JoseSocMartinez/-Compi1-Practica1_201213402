SET JAVA_HOME="C:\Program Files\Java\jdk1.7.0_25\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
cd C:\Users\Jose\Documents\NetBeansProjects\Practica1C1\src\Analisis
java -jar c:\Fuentes\java-cup-11b.jar -parser Sintactico -symbols TablaSimbolos Parser.cup
pause