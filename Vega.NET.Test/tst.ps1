$t = Add-Type -LiteralPath "/workspaces/Vega.NET/bin/Debug/net8.0/Vega.NET.dll" -PassThru -Verbose

$links = Invoke-WebRequest -Uri "https://raw.githubusercontent.com/eosfor/scripting-notes/refs/heads/main/notebooks/en/vnet-topology-d3js-demo-data/linkList.json" | ConvertFrom-Json
$nodes = Invoke-WebRequest -Uri "https://raw.githubusercontent.com/eosfor/scripting-notes/refs/heads/main/notebooks/en/vnet-topology-d3js-demo-data/idList.json" | ConvertFrom-Json


$nodes | ? { $_.color -eq "#ba150d" } | % { $_.color =  "#E4B1F0" } 

$jsonSpec = Get-Content -Path "/workspaces/Vega.NET/layout.json" -Raw
$spec = [Vega.Schema.Specification]::FromJson($jsonSpec)
$spec.Data

$nodeData = [Vega.Schema.Data]::new()
$nodeData.Name = "nodes"


$data.Values = $links
$data.Name = "links"

$spec.Data[-1].Values = $nodes
$spec.Data[-1].Format = $null
$spec.Data[-1].Url = $null



$spec.Data[0].Values.GetType()

$a = $spec.ToJson()

$PID

$links | ConvertTo-Json

$spec.Data[0].Values[0].GetType()


$links[0].ToString()

$a > ./zzz.json