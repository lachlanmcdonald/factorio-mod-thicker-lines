$modInfo = ( Get-Content 'info.json' | ConvertFrom-Json )
$modName = ( $modInfo | Select-Object -ExpandProperty 'name' )
$modVersion = ( $modInfo | Select-Object -ExpandProperty 'version' )
$package = "$($modName)_$($modVersion)"

New-Item -Path $package -ItemType 'directory' -Force
New-Item -Path "$package/core/graphics" -ItemType 'directory' -Force

@(
	'info.json',
	'changelog.txt',
	'thumbnail.png',
	'data-updates.lua',
	'LICENSE'
).ForEach({
	Copy-Item -Path $_ -Recurse -Container -Destination $package
})

Copy-Item -Path "core/graphics/*.png" -Destination "$package/core/graphics"

Compress-Archive -Path $package -DestinationPath "$($package).zip" -CompressionLevel Optimal
