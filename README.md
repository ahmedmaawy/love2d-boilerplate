# Love2D Boilerplate
Boilerplate for a Love2D Empty Game.

# Libraries included by default
* [anim8](https://github.com/kikito/anim8) - Spritesheet animation library.
* [class](https://github.com/jonstoler/class.lua) - Class management.
* [hump](https://github.com/vrld/hump) - Various Love2D helper classes.
* [windfield](https://github.com/a327ex/windfield) - Game Physics Automation Library for Love2D.
* [Simple-Tiled-Implementation](https://github.com/karai17/Simple-Tiled-Implementation) - Tiled Map
* [tween](https://github.com/kikito/tween.lua) - Tween functions for lua.

# Also includes
* State Machine Management.
* Central Dependencies Management.
* Aspect Ratio management.

# Random notes
## Managing Aspect Ratio
* This is already auto managed. Make reference to `BaseState.lua` and `main.lua`

## Automatic Graphics Off-setting with Aspect Ratio
```lua
function love.draw()
    -- Offset measurement
    local xDiff = 0
    local yDiff = 0

    -- Center window graphics
    if windowWidth > (minWidth * aspect_ratio.scale) then
        xDiff = windowWidth - (minWidth * aspect_ratio.scale)
    end

    if windowHeight > (minHeight * aspect_ratio.scale) then
        yDiff = windowHeight - (minHeight * aspect_ratio.scale)
    end

    love.graphics.translate(xDiff / 2, yDiff / 2)

    -- Implement scale
    love.graphics.scale(aspect_ratio.scale, aspect_ratio.scale)
end
```
