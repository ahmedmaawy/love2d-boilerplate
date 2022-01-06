-- Include all needed dependencies
require 'src/Dependencies'

-- Loader
function love.load()
    -- Window sizing. This is normally recommended resolution for Mobile Games
    -- You can also use 854 x 480
    gameWidth = 960
    gameHeight = 640
    
    paused = false
    
    love.window.setTitle("Game Title")

    -- Make use of push librarye to manage screen sizing and resizing
    local windowWidth, windowHeight = love.graphics.getDimensions()
    push:setupScreen(gameWidth, gameHeight, windowWidth, windowHeight, {fullscreen = false, resizable = true, pixelperfect=true})
    
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
    -- Resize using push
    return push:resize(w, h)
end

-- Update loop
function love.update(dt)
    if not paused then
        gStateMachine:update(dt)
    end
end

-- Draw loop
function love.draw()
    push:start()
    gStateMachine:render()
    push:finish()
end
