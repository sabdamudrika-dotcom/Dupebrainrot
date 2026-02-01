local Players = game:GetService("Players")
local player = Players.LocalPlayer

repeat task.wait() until player:FindFirstChild("PlayerGui")

local gui = Instance.new("ScreenGui")
gui.Name = "DebugGui"
gui.ResetOnSpawn = false
gui.Parent = player.PlayerGui

local btn = Instance.new("TextButton")
btn.Size = UDim2.new(0, 140, 0, 50)
btn.Position = UDim2.new(1, -150, 0, 20)
btn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
btn.TextColor3 = Color3.fromRGB(255, 255, 255)
btn.TextScaled = true
btn.Text = "DEBUG BUTTON"
btn.Parent = gui

btn.MouseButton1Click:Connect(function()
    print("DEBUG BUTTON CLICKED")
end)
