-- Include all needed dependencies
require 'src/Dependencies'

-- Loader
function love.load()
    -- Window sizing
    minWidth = 350
    minHeight = 200

    windowScaling = 1

    windowWidth = minWidth * windowScaling
    windowHeight = minHeight * windowScaling

    paused = false

    -- Window display options
    love.window.setMode(
        windowWidth,
        windowHeight,
        {resizable=true, vsync=false, minwidth=minWidth, minheight=minHeight}
    )
    love.window.setTitle("Game Title")

    local w, h = love.graphics.getDimensions()
    aspect_ratio:init(windowWidth, windowHeight, minWidth, minHeight) -- 320, 240 is the native resolution

    -- Setup the state machine
    gStateMachine = StateMachine {
        ['start'] = function() return StartState() end,
        ['game'] = function() return GameState() end
    }

    -- Setup the default game state
    gStateMachine:change('start')
end


-- When the window is resized
function love.resize(w, h)
    gStateMachine:resize(w, h)
    windowWidth = w
    windowHeight = h
end

-- Update loop
function love.update(dt)
    if not paused then
        gStateMachine:update(dt)
    end
end

-- Draw loop
function love.draw()
    gStateMachine:render()
end
