-- Include strategic libraries
Class = require 'libraries/class'
anim8 = require 'libraries/anim8/anim8'
sti = require 'libraries/Simple-Tiled-Implementation/sti'
Camera = require 'libraries/hump/camera'
aspect_ratio = require 'libraries/AspectRatio'
wf = require 'libraries/windfield/windfield'
name = require 'libraries/tween'

-- Utils
require 'src/StateMachine'

-- States
require 'src/states/BaseState'
require 'src/states/StartState'
require 'src/states/GameState'
