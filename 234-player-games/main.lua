--local file = fs.open("pgconfig.txt")
--local display = file.readLine()
local function clearterm()
    term.clear()
    term.setCursorPos(1, 1)
end

-- Basalt 2 Generated Code
local basalt = require("basalt")

-- Smart Margin System: Auto-adapt to different screen sizes
local w, h = term.getSize()
local designWidth, designHeight = 51, 19
local scaleX, scaleY = w / designWidth, h / designHeight
local function smartPos(x, y) return math.floor(x * scaleX + 0.5), math.floor(y * scaleY + 0.5) end
local function smartSize(width, height) return math.max(1, math.floor(width * scaleX + 0.5)), math.max(1, math.floor(height * scaleY + 0.5)) end

-- Create main frame
local main = basalt.createFrame()
    :setSize(w, h)

-- Button element
local element1 = main:addButton()
    :setPosition(smartPos(29, 8))
    :setSize(smartSize(16, 2))
    :setText("2 player")
    :setBackground(colors.red)

-- Label element
local element2 = main:addLabel()
    :setPosition(smartPos(18, 3))
    :setSize(smartSize(18, 1))
    :setText("2 3 4 Player Games")

-- Label element
local element3 = main:addLabel()
    :setPosition(smartPos(17, 5))
    :setSize(smartSize(21, 1))
    :setText("ComputerCraft Edition")

element1:onClick(function(self)
    shell.run("menus/rounds.lua")
end)
    -- Start the UI
basalt.run()


--[[term.clear()
term.setCursorPos(18, 9)
print("2 3 4 Player Games")
term.setCursorPos(22, 11)
print("CC Edition")
sleep(0.1)
term.setCursorPos(20, 15)
term.blit("Space to start", "eeeeeeeeeeeeee", "ffffffffffffff")
while true do
    local event, key = os.pullEvent()
    if event == "key" then
        if key == keys.space then
            break
        end
    end
end

clearterm()
print("loading")
sleep(0.5)
--]]