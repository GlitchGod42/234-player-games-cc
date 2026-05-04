if pocket then
    print("no")
    return
end

print("what path do you want to install the game to?")
local path = read()
fs.makeDir(path)
shell.run("cd " .. path)
term.clear()
term.setCursorPos(1, 1)
print("making directories")
fs.makeDir("menus")
fs.makeDir("minigames")
fs.makeDir("modules")
print("installing scripts")
shell.run("wget https://raw.githubusercontent.com/GlitchGod42/234-player-games-cc/refs/heads/main/234-player-games/main.lua")
shell.run("cd menus")
shell.run("wget https://raw.githubusercontent.com/GlitchGod42/234-player-games-cc/refs/heads/main/234-player-games/menus/rounds.lua")

shell.run("cd ../minigames")
shell.run("wget https://raw.githubusercontent.com/GlitchGod42/234-player-games-cc/refs/heads/main/234-player-games/minigames/mashing.lua")

print("Done!")
print("Hit enter to exit")
read()