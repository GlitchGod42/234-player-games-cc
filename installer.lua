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
fs.makeDir(path .. "/menus")
fs.makeDir(path .. "/minigames")
fs.makeDir(path .. "/modules")
fs.makeDir(path .. "/nfps")
print("installing scripts")
shell.run("wget https://raw.githubusercontent.com/GlitchGod42/234-player-games-cc/refs/heads/main/234-player-games/main.lua")
shell.run("cd menus")
shell.run("wget https://raw.githubusercontent.com/GlitchGod42/234-player-games-cc/refs/heads/main/234-player-games/menus/rounds.lua")

shell.run("cd ../modules")
shell.run("wget https://raw.githubusercontent.com/GlitchGod42/234-player-games-cc/refs/heads/main/234-player-games/modules/basalt/basalt.lua")

shell.run("cd ../minigames")
shell.run("wget https://raw.githubusercontent.com/GlitchGod42/234-player-games-cc/refs/heads/main/234-player-games/minigames/mashing.lua")

shell.run("cd ../nfps")
shell.run("wget https://raw.githubusercontent.com/GlitchGod42/234-player-games-cc/refs/heads/main/234-player-games/nfps/mashing.nfp")

print("Done!")
print("Hit enter to exit")
read()