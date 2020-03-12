$nugetServer = "https://api.nuget.org/v3/index.json"
$packagePath = "bin\Debug\Contoso.nuget.example.*"

$API_Key_DO_NOT_LEAK = "oy2hoaultoo4yfuk4yzagueazkgztrxehnzajc2jcl6wqm"

dotnet pack

dotnet nuget push $packagePath -k $API_Key_DO_NOT_LEAK -s $nugetServer

Remove-Item $packagePath

