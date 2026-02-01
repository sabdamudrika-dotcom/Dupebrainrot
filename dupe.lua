local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")
local btn = Instance.new("TextButton")
btn.Size = UDim2.new(0, 100, 0, 50)
btn.Position = UDim2.new(1, -110, 0, 10)
btn.Text = "DUPE"
btn.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
btn.TextColor3 = Color3.fromRGB(255, 255, 255)
btn.Font = Enum.Font.SourceSansBold
btn.TextScaled = true
btn.Parent = screenGui
btn.Visible = false
local function checkBrainrot()
    if player.Backpack:FindFirstChild("brainrot") or player.Character:FindFirstChild("brainrot") then
        btn.Visible = true
    else
        btn.Visible = false
    end
end
btn.MouseButton1Click:Connect(function()
    local brainrot = player.Backpack:FindFirstChild("brainrot") or player.Character:FindFirstChild("brainrot")
    if brainrot then
        local clone = brainrot:Clone()
        clone.Parent = player.Backpack
    end
end)
while true do
    checkBrainrot()
    wait(0.5)
end
