ZIP_FILE=`cat "./info.json" | jq --raw-output '(.name) + "_" + (.version) + ".zip"'`
zip -r -X $ZIP_FILE \
	"./info.json" \
	"./thumbnail.png" \
	"./data-updates.lua" \
	"./LICENSE" \
	"./core/graphics/copper-wire.png" \
	"./core/graphics/green-wire.png" \
	"./core/graphics/hr-copper-wire.png" \
	"./core/graphics/hr-green-wire.png" \
	"./core/graphics/hr-red-wire.png" \
	"./core/graphics/hr-wire-highlight.png" \
	"./core/graphics/hr-wire-shadow.png" \
	"./core/graphics/red-wire.png" \
	"./core/graphics/wire-highlight.png" \
	"./core/graphics/wire-shadow.png"
