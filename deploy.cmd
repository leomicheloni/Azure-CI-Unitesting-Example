::1. Compilamos el proyecto web
"%MSBUILD_PATH%" "%DEPLOYMENT_SOURCE%\WebApp1\WebApp1\WebApp1.csproj"

::2. Compilamos el proyecto de test
"%MSBUILD_PATH%" "%DEPLOYMENT_SOURCE%\WebApp1\WebApp1.Tests\WebApp1.Tests.csproj"

::3. Ejecutamos los test
vstest.console.exe "%DEPLOYMENT_SOURCE%\WebApp1\WebApp1.Tests\bin\Debug\WebApp1.Tests.dll"

