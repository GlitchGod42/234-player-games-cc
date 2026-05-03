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