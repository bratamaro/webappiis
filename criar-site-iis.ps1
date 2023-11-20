# Criar um diretório para o site
New-Item -ItemType Directory -Path -split 'C:\inetpub\wwwroot\WebSite'

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
"@ | Out-File -FilePath 'C:\inetpub\wwwroot\WebSite\index.htm'

# Criar um site no IIS
New-WebSite -Name "SiteExemplo" -PhysicalPath -split 'C:\inetpub\wwwroot\WebSite' -Port 80
