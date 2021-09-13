local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("top-pixel.eu - Counter Blox", "GrapeTheme")
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Credits")
Section:NewLabel("Made by: iiBrxkenAce")

local Tab = Window:NewTab("Aim")
local Section = Tab:NewSection("Aim")
Section:NewToggle("Aimbot", "Right Click on Player", function(state)
    if state then
        loadstring(game:HttpGet("https://pastebin.com/raw/ygp8Enye"))()
    else
        _G.AimbotEnabled = false
        _G.CircleSides = 0
        _G.CircleRadius = 0
    end
end)

Section:NewToggle("Team Check", "Allows to aimbot on teammates", function(state)
    if state then
    _G.TeamCheck = true
    else
    _G.TeamCheck = false
    end
    end)


Section:NewSlider("Aimbot FOV", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    _G.CircleRadius = s
end)
local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("Misc")
Section:NewButton("Anti Vote-kick", "all it does is detects when there’s a specific amount of votes left until you get kicked and then rejoins the server", function()
    local min_count = 2
repeat wait() until game:IsLoaded()
if game.PlaceId == 1480424328 or game.PlaceId == 301549746 then
local chat
repeat pcall(function() chat = game:GetService("Players").LocalPlayer.PlayerGui.GUI.Main.Chats end) wait() until chat
print(chat)
local c = coroutine.create(function()
while wait() do
   for i,child in pairs(chat:GetDescendants()) do
   if child:IsA"TextLabel" then
       repeat game:GetService"RunService".Stepped:Wait() until child.Text ~= "Label"
       local t= child.Text:split(" ")
if t[6] and t[7] and string.find(t[6],game.Players.LocalPlayer.Name) and (tonumber(t[7])) <= min_count then
   game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
   end end end end end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nagliuxas/Source/main/.lua",true))()
end
end)


local Tab = Window:NewTab("Gun Mods")
local Section = Tab:NewSection("Gun Mods")

Section:NewToggle("One Shot", "One Shot a player", function(state)
    if state then
        getgenv().OneShot = true

local mt = getrawmetatable(game)
setreadonly(mt, false)
local nc = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local Method = getnamecallmethod()
    local Args = {...}

    if Method == 'FireServer' and self.Name == 'HitPart' and OneShot then
        for i = 1, 3 do
            nc(self, unpack(Args))
        end
    end

    return nc(self, ...)
end)
    else
        getgenv().OneShot = false
    end
end)

Section:NewButton("No Recoil", "Gives you no recoil", function()
   local env = getsenv(game:service('Players').LocalPlayer.PlayerGui.Client)

env.KickBack = function() end
end)


Section:NewButton("Infinite Ammo", "Grants you infinite ammo", function()
loadstring(game:HttpGet("https://pastebin.com/raw/E6Th54nF", true))()
end)




local Tab = Window:NewTab("Fun")
local Section = Tab:NewSection("Fun")
Section:NewButton("Infinite Cash", "Grants you infinite cash", function()
local CashLoop = true

function CashLoopF()
    game.Players.LocalPlayer.Cash.Value = 9999999
end

while CashLoop == true do
    CashLoopF()
    wait(0.5)
end
end)

Section:NewButton("Throw Molotovs (OP)", "Throws infinite molotovs behind", function()
game.RunService.Heartbeat:Connect(function()
   game.ReplicatedStorage.Events.ThrowGrenade:FireServer(game.ReplicatedStorage.Weapons["Molotov"].Model, nil, 25, 35, Vector3.new(0, 0, 0), "", "")
end)
end)
