$modInfo = ( Get-Content 'info.json' | ConvertFrom-Json )
$modName = ( $modInfo | Select-Object -ExpandProperty 'name' )
$modVersion = ( $modInfo | Select-Object -ExpandProperty 'version' )
$package = "$($modName)_$($modVersion)"

New-Item -Path $package -ItemType 'directory' -Force

@(
	'info.json',
	'changelog.txt',
	'thumbnail.png',
	'data-updates.lua',
	'LICENSE',
	"core/graphics"
).ForEach({
	Write-Output($_)
	Copy-Item -Path $_ -Recurse -Container -Destination $package
})

Compress-Archive -Path $package  -DestinationPath "$($package).zip" -CompressionLevel Optimal
