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

local function dts(a,func)
for _,v in pairs(a:GetDescendants()) do
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
      if v:IsA("TouchInterest") then
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
          v.ActionText = "☠️ PROMPT BUTTON ERROR | HoldDuration has been removed. ☠️"
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
