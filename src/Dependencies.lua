-- Include strategic libraries
Class = require 'libraries/class'
push = require "libraries/push"
anim8 = require 'libraries/anim8/anim8'
sti = require 'libraries/Simple-Tiled-Implementation/sti'
Camera = require 'libraries/hump/camera'
wf = require 'libraries/windfield/windfield'
name = require 'libraries/tween'

-- Used to require whole folders
require 'libraries/require'

-- Utils
require 'src/StateMachine'

-- States
require 'src/states/BaseState'
require 'src/states/StartState'
require 'src/states/GameState'
