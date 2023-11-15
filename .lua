--[[
Only Supported: {
Click Detector
Touch Interest
ProximityPrompt
}

This script only works if the game supports the instances mentioned above
]]

local Library = 
loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local Window_1 = Library:NewWindow("Instant All")
local Player = game.Players.LocalPlayer
local char = Player.Character
local humanoid = char.Humanoid
local root = char.HumanoidRootPart
local workspace = game:GetService("Workspace")
local dev = "Rivanda_Cheater"

local function ntfy(title,text)
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = title, Text = text, Icon = "rbxassetid://13030062874", Button1 = "", Duration = 5})
end

local function Shoot(array)
    char["HyperlaserGun"].ServerControl:InvokeServer("Click",true,array)
end   

local function Shit(array)
    char["HyperLazer"].ServerControl:InvokeServer("Click",true,array)
end

local function dts(a,func)
for _,v in pairs(a:GetDescendants()) do
    func(v)
  end
end

local function getPlayer(func)
for _,v in pairs(game.Players:GetChildren()) do
        func(v)
    end
end

local function t(a)
firetouchinterest(a,root,0)
wait()
firetouchinterest(a,root,1)
end

local Tab1 = Window_1:NewSection("Click Detector")
local Tab2 = Window_1:NewSection("Touch Interest")
local Tab3 = Window_1:NewSection("ProximityPrompt")

Tab1:CreateToggle("Fire Click Detector", function(value)
_G.ClickDetector = value
while wait() do
    if _G.ClickDetector == false then break end
  dts(workspace,function(v)
      if v:IsA("ClickDetector") then
          fireclickdetector(v)
        end
    end)
  end
end)

Tab2:CreateToggle("Fire Touch Interest", function(value)
_G.TouchInterest = value
while wait() do
    if _G.TouchInterest == false then break end
  dts(workspace,function(v)
      if v:IsA("TouchInterest") or v:IsA("TouchTransmitter") then
          t(v)
        end
    end)
  end
end)
-- MaxActivationDistance = 1230
Tab3:CreateToggle("Fire ProximityPrompt", function(value)
_G.ProximityPrompt = value
while wait() do
    if _G.ProximityPrompt == false then break end
  dts(workspace,function(v)
      if v:IsA("ProximityPrompt") then
          fireproximityprompt(v)
        end
    end)
  end
end)

Tab3:CreateToggle("Remove Duraton", function(value)
_G.ProximityPrompt_Dur = value
while wait() do
    if _G.ProximityPrompt_Dur == false then break end
  dts(workspace,function(v)
      if v:IsA("ProximityPrompt") then
          v.HoldDuration = 0
          v.ActionText = v.Parent.Name
        end
    end)
  end
end)

Tab3:CreateToggle("Activation Distance", function(value)
_G.ProximityPrompt_Dis = value
while wait() do
    if _G.ProximityPrompt_Dis == false then break end
  dts(workspace,function(v)
      if v:IsA("ProximityPrompt") then
          v.MaxActivationDistance = 1230
        end
    end)
  end
end)

local anti = false
local function DescPart(str)
if anti == true then
    if str.Name:lower() == "acid" then
        str:Destroy()
    elseif str.Name:lower() == "water" then
        str:Destroy()
    elseif str.Name:lower() == "kill" then
        str:Destroy()
    elseif str.Name:lower() == "lava" then
        str:Destroy()
    elseif str.Name:lower() == "meshpart" then
        str:Destroy()
    elseif str.Name:lower() == "cube" then
        str:Destroy()
    elseif str.Name:lower() == "snowball" then
        str:Destroy()
    elseif str.Name:lower() == "damager" then
        str:Destroy()
    elseif str.Name:lower() == "ball" then
        str:Destroy()
    elseif str.Name:lower() == "main" then
        str:Destroy()
    elseif str.Name:lower() == "union" then
        str:Destroy()
    elseif str.Name:lower() == "wave" then
        str:Destroy()
    elseif str.Name:lower() == "laser" then
        str:Destroy()
    elseif str.Name:lower() == "beamkill" then
        str:Destroy()
    elseif str.Name:lower() == "spread" then
        str:Destroy()
    elseif str.Name:lower() == "activated" then
        str:Destroy()
    end
  end
end

workspace.DescendantAdded:Connect(DescPart)
-- Workspace.Coins.SpinningCoin.Coin
if game.PlaceId == 5171093784 then
local Tab4 = Window_1:NewSection("Dont Press The Button 4")
Tab4:CreateToggle("Anti-Kill Part", function(value)
anti = value
end)

Tab4:CreateToggle("Collect Coins", function(value)
_G.Grab = value
while wait() do
    if _G.Grab == false then break end
  dts(workspace,function(v)
      if v:IsA("TouchInterest") or v:IsA("TouchTransmitter") then
        if v.Parent.Name == "Coin" then
          t(v)
        end
        end
    end)
  end
end)
    
Tab4:CreateToggle("Troll (laser gun)", function(value)
        _G.Asshole = value
            while wait() do
                if _G.Asshole == false then break end
                getPlayer(function(v)
                        Shit(v.Character.HumanoidRootPart.Position)
                    end)
            end
end)

Tab4:CreateToggle("Aimbot (laser gun) (laser tag)", function(value)
        _G.Aim = value
            while wait() do
                if _G.Aim == false then break end
                getPlayer(function(v)
                        Shoot(v.Character.HumanoidRootPart.Position)
                    end)
            end
end)
end
