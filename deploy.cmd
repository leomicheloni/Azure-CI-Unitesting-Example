:: 1. building
%MSBUILD_PATH% "%DEPLOYMENT_SOURCE%\WebApp1\WebApp1.csproj"
IF !ERRORLEVEL! NEQ 0 goto error

:: 2. building tests
%MSBUILD_PATH% "%DEPLOYMENT_SOURCE%\WebApp1.Tests\WebApp1.Tests.csproj"
IF !ERRORLEVEL! NEQ 0 goto error

:: 3. Testing
vstest.console.exe "%DEPLOYMENT_SOURCE%\WebApp1.Tests\bin\Debug\WebApp1.Tests.dll"

IF !ERRORLEVEL! NEQ 0 goto error
