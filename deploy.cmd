echo :: 2. Tests
echo 2: Build and execute tests
echo 2a: Executing Unit Tests

%MSBUILD_PATH% "%DEPLOYMENT_SOURCE%\WebApp1.Tests\WebApp1.Tests.csproj" /nologo /verbosity:m /t:Build /p:Configuration=Debug
call mstest "%DEPLOYMENT_SOURCE%\WebApp1.Tests\bin\Debug\WebApp1.Tests.dll"

IF !ERRORLEVEL! NEQ 0 goto error
