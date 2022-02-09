local core_graphics = "__ThickerLines__/core/graphics"
local sprites = data.raw["utility-sprites"]["default"]

if (settings.startup["thicker-lines-copper"].value) then
  sprites["copper_wire"].filename                      = core_graphics .. "/copper-wire.png"
  sprites["copper_wire"].hr_version.filename           = core_graphics .. "/hr-copper-wire.png"
end

if (settings.startup["thicker-lines-circuit"].value) then
  sprites["green_wire"].filename                       = core_graphics .. "/green-wire.png"
  sprites["green_wire"].hr_version.filename            = core_graphics .. "/hr-green-wire.png"
  sprites["red_wire"].filename                         = core_graphics .. "/red-wire.png"
  sprites["red_wire"].hr_version.filename              = core_graphics .. "/hr-red-wire.png"
  sprites["green_wire_hightlight"].filename            = core_graphics .. "/wire-highlight.png"
  sprites["green_wire_hightlight"].hr_version.filename = core_graphics .. "/hr-wire-highlight.png"
  sprites["red_wire_hightlight"].filename              = core_graphics .. "/wire-highlight.png"
  sprites["red_wire_hightlight"].hr_version.filename   = core_graphics .. "/hr-wire-highlight.png"
end

if (settings.startup["thicker-lines-shadow"].value) then
  sprites["wire_shadow"].filename                      = core_graphics .. "/wire-shadow.png"
  sprites["wire_shadow"].hr_version.filename           = core_graphics .. "/hr-wire-shadow.png"
end
