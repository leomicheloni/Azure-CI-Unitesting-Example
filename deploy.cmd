:: 1. building
"%MSBUILD_PATH%" "%DEPLOYMENT_SOURCE%\WebApp1\WebApp1\WebApp1.csproj"


:: 2. building tests
"%MSBUILD_PATH%" "%DEPLOYMENT_SOURCE%\WebApp1\WebApp1.Tests\WebApp1.Tests.csproj"

:: 3. Testing
vstest.console.exe "%DEPLOYMENT_SOURCE%\WebApp1\WebApp1.Tests\bin\Debug\WebApp1.Tests.dll"

