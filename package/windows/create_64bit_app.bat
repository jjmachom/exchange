cd ..\..\
mkdir gui\deploy

:: edit iss file -> AppVersion

:: Copy gui/deploy.Bitsquare.jar file from mac build to windows
:: edit -> -BappVersion and -srcfiles

:: 64 bit build
:: Needs Inno Setup 5 or later (http://www.jrsoftware.org/isdl.php)

call "C:\Program Files\Java\jdk1.8.0_92\bin\javapackager.exe" -deploy ^
-BjvmOptions=-Xbootclasspath/a:^"jdkfix-0.4.9.jar^";^"C:\Program Files\Java\jdk1.8.0_92\jre\lib\ext\jfxrt.jar^" ^
-BappVersion=0.4.9 ^
-native exe ^
-name Bitsquare ^
-title Bitsquare ^
-vendor Bitsquare ^
-outdir "\\VBOXSVR\vm_shared_windows" ^
-appclass io.bitsquare.app.BitsquareAppMain ^
-srcfiles "\\VBOXSVR\vm_shared_windows\Bitsquare-0.4.9.jar;\\VBOXSVR\vm_shared_windows\jdkfix-0.4.9.jar" ^
-outfile Bitsquare ^
-Bruntime="C:\Program Files\Java\jdk1.8.0_92\jre" ^
-BjvmProperties=-Djava.net.preferIPv4Stack=true

:: -BjvmOptions=-verbose:class
:: java -Xbootclasspath/a:"jdkfix-0.4.9.jar";"C:\Program Files\Java\jdk1.8.0_92\jre\lib\ext\jfxrt.jar" -jar Bitsquare-0.4.9.jar
cd package\windows