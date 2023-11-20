# Criar um diretório para o site
#New-Item -ItemType Directory -Path 'C:\inetpub\wwwroot\webappiis'
New-Item -ItemType Directory -Path '%SystemDrive%\inetpub\wwwroot\webappiis2'

# Criar uma página de exemplo
@"
<html>
<head>
    <title>Exemplo de Site</title>
</head>
<body>
    <h1>Site de Exemplo</h1>
    <p>Este é um site de exemplo no IIS criado por um pipeline do Azure DevOps.</p>
</body>
</html>
#"@ | Out-File -FilePath 'C:\inetpub\wwwroot\webappiis\index.html'
"@ | Out-File -FilePath '%SystemDrive%\inetpub\wwwroot\webappiis2\index.html'

# Criar um site no IIS
#New-WebSite -Name "SiteExemplo" -PhysicalPath 'C:\inetpub\wwwroot\webappiis' -Port 80
New-WebSite -Name "SiteExemplo" -PhysicalPath '%SystemDrive%\inetpub\wwwroot\webappiis2' -Port 8082
