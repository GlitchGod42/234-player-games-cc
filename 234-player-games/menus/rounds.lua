-- Basalt 2 Generated Code
local basalt = require("modules/basalt")

-- Smart Margin System: Auto-adapt to different screen sizes
local w, h = term.getSize()
local designWidth, designHeight = 51, 19
local scaleX, scaleY = w / designWidth, h / designHeight
local function smartPos(x, y) return math.floor(x * scaleX + 0.5), math.floor(y * scaleY + 0.5) end
local function smartSize(width, height) return math.max(1, math.floor(width * scaleX + 0.5)), math.max(1, math.floor(height * scaleY + 0.5)) end

-- Create main frame
local main = basalt.createFrame()
    :setSize(w, h)

-- Label element
local element1 = main:addLabel()
    :setPosition(smartPos(19, 6))
    :setSize(smartSize(16, 1))
    :setText("How Many Rounds?")

-- Input element
local element2 = main:addInput()
    :setPosition(smartPos(23, 8))
    :setSize(smartSize(7, 1))
    :setText("3")
    :setPlaceholder("How much?")
    :setFocusedBackground(colors.lightGray)
    :setMaxLength(1)
    :setPattern("123456789")

-- Button element
local element3 = main:addButton()
    :setPosition(smartPos(21, 10))
    :setSize(smartSize(11, 3))
    :setText("Next")
    :setBackground(colors.green)

element3:onClick(function(self)
    local minigame = math.random(1, 4)
    --[[
    if minigame == 1 then
        shell.run("minigames/mashing.lua")
    end
    --]]
    shell.run("mashing.lua")
end)

-- Start the UI
basalt.run()