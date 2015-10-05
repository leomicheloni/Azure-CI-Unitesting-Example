:: 1. building

%MSBUILD_PATH% "%DEPLOYMENT_SOURCE%\WebApp1\WebApp1.csproj" /nologo /verbosity:d /t:Build /p:Configuration=Debug

:: 2. building tests

%MSBUILD_PATH% "%DEPLOYMENT_SOURCE%\WebApp1.Tests\WebApp1.Tests.csproj" /nologo /verbosity:d /t:Build /p:Configuration=Debug

:: 3. Testing
vstest.console.exe "%DEPLOYMENT_SOURCE%\WebApp1.Tests\bin\Debug\WebApp1.Tests.dll"

IF !ERRORLEVEL! NEQ 0 goto error
