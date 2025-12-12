if game.PlaceId ~= 4342047058 then
    warn("⚠ 本辅助仅适用于指定游戏(4342047058)")
    return
end

-- 变量与引用
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local hrp = char:WaitForChild("HumanoidRootPart")

local auraEnabled, auraRadius = false, 15
local espEnabled = false
local minSpeed, maxSpeed = 8, 40
local currentSpeed = 16

-------------------------------------------------
-- UI组件
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DeltaGBUI"
screenGui.Parent = playerGui
screenGui.ResetOnSpawn = false

-- 展开/收起主按钮
local toggleBtn = Instance.new("TextButton")
toggleBtn.Size = UDim2.new(0, 46, 0, 46)
toggleBtn.Position = UDim2.new(0, 20, 0.5, -90)
toggleBtn.Text = "≡"
toggleBtn.BackgroundColor3 = Color3.fromRGB(30,160,220)
toggleBtn.TextColor3 = Color3.new(1,1,1)
toggleBtn.TextScaled = true
toggleBtn.Parent = screenGui
Instance.new("UICorner",toggleBtn).CornerRadius = UDim.new(1,0)

-- 主面板
local panel = Instance.new("Frame")
panel.Size = UDim2.new(0, 200, 0, 250)
panel.Position = UDim2.new(0, 80, 0.5, -110)
panel.BackgroundColor3 = Color3.fromRGB(37,43,85)
panel.BackgroundTransparency = 0.08
panel.Visible = false
panel.Parent = screenGui
Instance.new("UICorner",panel).CornerRadius = UDim.new(0,18)

-- 标题
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,40)
title.Position = UDim2.new(0,0,0,0)
title.BackgroundTransparency = 1
title.Text = "辅助菜单"
title.TextColor3 = Color3.fromRGB(210,255,255)
title.TextSize = 22
title.Font = Enum.Font.GothamBold
title.Parent = panel

-------------------------------------------------
-- 杀戮光环按钮
local auraBtn = Instance.new("TextButton")
auraBtn.Position = UDim2.new(0, 10, 0, 50)
auraBtn.Size = UDim2.new(0, 90, 0, 32)
auraBtn.BackgroundColor3 = Color3.fromRGB(88,190,90)
auraBtn.Text = "杀戮光环:关"
auraBtn.TextColor3 = Color3.new(1,1,1)
auraBtn.Font = Enum.Font.SourceSansBold
auraBtn.TextScaled = true
auraBtn.Parent = panel
Instance.new("UICorner",auraBtn).CornerRadius = UDim.new(0,12)

auraBtn.MouseButton1Click:Connect(function()
    auraEnabled = not auraEnabled
    auraBtn.Text = "杀戮光环:"..(auraEnabled and "开" or "关")
    auraBtn.BackgroundColor3 = auraEnabled and Color3.fromRGB(44,200,66) or Color3.fromRGB(88,190,90)
end)

-- 杀戮区域滑条
local auraSliderLabel = Instance.new("TextLabel")
auraSliderLabel.Position = UDim2.new(0,110,0,50)
auraSliderLabel.Size = UDim2.new(0, 80, 0, 16)
auraSliderLabel.Text = "范围:"..auraRadius
auraSliderLabel.TextColor3 = Color3.new(1,1,1)
auraSliderLabel.Font = Enum.Font.SourceSans
auraSliderLabel.TextSize = 15
auraSliderLabel.BackgroundTransparency = 1
auraSliderLabel.Parent = panel

local auraSlider = Instance.new("TextButton")
auraSlider.Position = UDim2.new(0,110,0,68)
auraSlider.Size = UDim2.new(0,70,0,16)
auraSlider.BackgroundColor3 = Color3.fromRGB(90,110,120)
auraSlider.AutoButtonColor = false
auraSlider.Text = ""
auraSlider.Parent = panel
Instance.new("UICorner",auraSlider).CornerRadius = UDim.new(1, 0)

local auraBall = Instance.new("Frame")
auraBall.Size = UDim2.new(0,12,0,16)
auraBall.Position = UDim2.new((auraRadius-5)/40,0,0,0)
auraBall.BackgroundColor3 = Color3.fromRGB(168,233,255)
Instance.new("UICorner",auraBall).CornerRadius = UDim.new(1,0)
auraBall.Parent = auraSlider

local function setAuraRadius(val)
    auraRadius = math.floor(val+0.5)
    auraSliderLabel.Text = "范围:"..auraRadius
    auraBall.Position = UDim2.new((auraRadius-5)/40,0,0,0)
end
setAuraRadius(auraRadius)

auraSlider.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        local con; con = game:GetService("UserInputService").InputChanged:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
                local x = math.clamp((inp.Position.X - auraSlider.AbsolutePosition.X)/auraSlider.AbsoluteSize.X,0,1)
                local val = 5 + 40 * x
                setAuraRadius(val)
            end
        end)
        game:GetService("UserInputService").InputEnded:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
                if con then con:Disconnect() end
            end
        end)
    end
end)

-------------------------------------------------
-- 僵尸ESP按钮
local espBtn = Instance.new("TextButton")
espBtn.Position = UDim2.new(0,10,0,98)
espBtn.Size = UDim2.new(0,90,0,32)
espBtn.BackgroundColor3 = Color3.fromRGB(230,180,30)
espBtn.Text = "僵尸ESP:关"
espBtn.TextColor3 = Color3.new(0,0,0)
espBtn.Font = Enum.Font.SourceSansBold
espBtn.TextScaled = true
espBtn.Parent = panel
Instance.new("UICorner",espBtn).CornerRadius = UDim.new(0,12)

espBtn.MouseButton1Click:Connect(function()
    espEnabled = not espEnabled
    espBtn.Text = "僵尸ESP:"..(espEnabled and "开" or "关")
    espBtn.BackgroundColor3 = espEnabled and Color3.fromRGB(255,255,0) or Color3.fromRGB(230,180,30)
end)

-------------------------------------------------
-- 移速滑条
local speedLabel = Instance.new("TextLabel")
speedLabel.Position = UDim2.new(0,10,0,138)
speedLabel.Size = UDim2.new(0,68,0,22)
speedLabel.Text = "移速:"..tostring(currentSpeed)
speedLabel.TextColor3 = Color3.fromRGB(188,255,188)
speedLabel.Font = Enum.Font.SourceSans
speedLabel.TextSize = 16
speedLabel.BackgroundTransparency = 1
speedLabel.Parent = panel

local speedBar = Instance.new("TextButton")
speedBar.Position = UDim2.new(0,85,0,142)
speedBar.Size = UDim2.new(0,90,0,14)
speedBar.BackgroundColor3 = Color3.fromRGB(70,106,177)
speedBar.Text = ""
speedBar.Parent = panel
Instance.new("UICorner",speedBar).CornerRadius = UDim.new(1, 0)

local speedBall = Instance.new("Frame")
speedBall.Size = UDim2.new(0,12,0,14)
speedBall.Position = UDim2.new((currentSpeed-minSpeed)/(maxSpeed-minSpeed),0,0,0)
speedBall.BackgroundColor3 = Color3.fromRGB(102,237,166)
Instance.new("UICorner",speedBall).CornerRadius = UDim.new(1,0)
speedBall.Parent = speedBar

local function setWS(val)
    val = math.floor(val+0.5)
    currentSpeed = val
    hum.WalkSpeed = val
    speedLabel.Text = "移速:"..val
    speedBall.Position = UDim2.new((val-minSpeed)/(maxSpeed-minSpeed),0,0,0)
end

setWS(currentSpeed)

speedBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        local con; con = game:GetService("UserInputService").InputChanged:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
                local x = math.clamp((inp.Position.X - speedBar.AbsolutePosition.X)/speedBar.AbsoluteSize.X,0,1)
                setWS(minSpeed + (maxSpeed-minSpeed) * x)
            end
        end)
        game:GetService("UserInputService").InputEnded:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
                if con then con:Disconnect() end
            end
        end)
    end
end)

-------------------------------------------------
-- UI展开/隐藏执行
toggleBtn.MouseButton1Click:Connect(function()
    panel.Visible = not panel.Visible
end)

-------------------------------------------------
-- 杀戮光环主逻辑(每帧心跳)
game:GetService("RunService").Heartbeat:Connect(function()
    if auraEnabled then
        local zps = workspace:FindFirstChild("Zombies") or workspace:FindFirstChild("zombies")
        if zps and hrp then
            for _, zombie in pairs(zps:GetChildren()) do
                local humRoot = zombie:FindFirstChild("HumanoidRootPart")
                local humz = zombie:FindFirstChildOfClass("Humanoid")
                if humRoot and humz and humz.Health > 0 then
                    if (humRoot.Position - hrp.Position).Magnitude <= auraRadius then
                        humz.Health = 0
                    end
                end
            end
        end
    end
end)

-------------------------------------------------
-- ESP主逻辑
game:GetService("RunService").Heartbeat:Connect(function()
    local zps = workspace:FindFirstChild("Zombies") or workspace:FindFirstChild("zombies")
    if not zps then return end
    for _, z in pairs(zps:GetChildren()) do
        if espEnabled then
            if not z:FindFirstChild("GBESP") and z:FindFirstChild("HumanoidRootPart") then
                local h = Instance.new("Highlight")
                h.Name = "GBESP"
                h.FillColor = Color3.fromRGB(240,50,66)
                h.OutlineColor = Color3.fromRGB(255,255,0)
                h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                h.Parent = z
            end
        else
            local h = z:FindFirstChild("GBESP")
            if h then h:Destroy() end
        end
    end
end)

-- 主动同步移动速度UI
hum:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
    setWS(hum.WalkSpeed)
end)

print("【GB辅助菜单加载完成】左侧[≡]弹出。功能：杀戮光环+范围 | 僵尸高亮ESP | 自定义移速")
