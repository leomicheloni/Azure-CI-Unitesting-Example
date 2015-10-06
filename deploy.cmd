dcd webapp1
nuget restore
REM Compilamos el proyecto web
"%MSBUILD_PATH%" "%DEPLOYMENT_SOURCE%\WebApp1\WebApp1\WebApp1.csproj"
REM Compilamos el proyecto de test
"%MSBUILD_PATH%" "%DEPLOYMENT_SOURCE%\WebApp1\WebApp1.Tests\WebApp1.Tests.csproj"
REM ejecutamos los test
vstest.console.exe "%DEPLOYMENT_SOURCE%\WebApp1\WebApp1.Tests\bin\Debug\WebApp1.Tests.dll"

