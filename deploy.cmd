
"%MSBUILD_PATH%" "%DEPLOYMENT_SOURCE%\WebApp1\WebApp1\WebApp1.csproj"


"%MSBUILD_PATH%" "%DEPLOYMENT_SOURCE%\WebApp1\WebApp1.Tests\WebApp1.Tests.csproj"

vstest.console.exe "%DEPLOYMENT_SOURCE%\WebApp1\WebApp1.Tests\bin\Debug\WebApp1.Tests.dll"

