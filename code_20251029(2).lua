-- 服务初始化
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

-- 玩家与UI初始化
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local ScreenGui = PlayerGui:FindFirstChild("RevolutionUI") or Instance.new("ScreenGui")
ScreenGui.Name = "RevolutionUI"
ScreenGui.IgnoreGuiInset = false
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = PlayerGui

-- 状态管理（新增UI动画状态）
local isUIVisible = true
local isClimbEnabled = false
local isFlyingEnabled = false
local isNoclipEnabled = false
local flySpeed = 30
local flyConnection, noclipConnection
local isUIAnimating = false

-- 颜色与样式常量（细化历史风格）
local CONTINENTAL_BLUE = Color3.fromRGB(40, 55, 90)
local RED_TRIM = Color3.fromRGB(180, 30, 30)
local OFF_WHITE = Color3.fromRGB(240, 230, 210)
local BUTTON_HOVER_COLOR = Color3.fromRGB(60, 80, 120)
local ACTIVE_COLOR = Color3.fromRGB(34, 197, 94)

-- 动画配置
local TWEEN_INFO = TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)

-- 创建独立战争风格UI（新增动画与细节）
local function createRevolutionUI()
    -- 主容器：独立宫建筑结构+入场动画
    local MainFrame = ScreenGui:FindFirstChild("IndependenceHallFrame") or Instance.new("Frame")
    MainFrame.Name = "IndependenceHallFrame"
    MainFrame.Size = UDim2.new(0.8, 0, 0.9, 0)
    MainFrame.Position = UDim2.new(0.1, 0, -1, 0) -- 初始在屏幕外
    MainFrame.BackgroundColor3 = OFF_WHITE
    MainFrame.BorderColor3 = Color3.fromRGB(150, 130, 110)
    MainFrame.BorderSizePixel = 2
    MainFrame.CornerRadius = UDim.new(0, 10)
    MainFrame.Parent = ScreenGui

    -- 建筑立柱（视觉分层+阴影）
    local function createColumn(posX)
        local column = Instance.new("Frame", MainFrame)
        column.Size = UDim2.new(0.1, 0, 1, 0)
        column.Position = UDim2.new(posX, 0, 0, 0)
        column.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
        column.BorderSizePixel = 0
        column.ZIndex = 2 -- 确保在按钮上层
        return column
    end
    createColumn(0.05)
    createColumn(0.85)

    -- 标题栏：《独立宣言》风格+渐变效果
    local TitleFrame = Instance.new("Frame", MainFrame)
    TitleFrame.Size = UDim2.new(1, 0, 0, 50)
    TitleFrame.Position = UDim2.new(0, 0, 0, 0)
    TitleFrame.BackgroundColor3 = CONTINENTAL_BLUE
    TitleFrame.BorderSizePixel = 0
    TitleFrame.ZIndex = 3

    local TitleLabel = Instance.new("TextLabel", TitleFrame)
    TitleLabel.Size = UDim2.new(1, 0, 1, 0)
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Text = "大陆军作战控制台"
    TitleLabel.TextColor3 = OFF_WHITE
    TitleLabel.TextFont = Enum.Font.Garamond
    TitleLabel.TextSize = 24
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Center
    TitleLabel.TextYAlignment = Enum.TextYAlignment.Center
    TitleLabel.ZIndex = 3

    -- 状态显示：战报滚动效果
    local StatusFrame = Instance.new("Frame", MainFrame)
    StatusFrame.Size = UDim2.new(1, 0, 0, 40)
    StatusFrame.Position = UDim2.new(0, 0, 0, 60)
    StatusFrame.BackgroundColor3 = Color3.fromRGB(230, 220, 200)
    StatusFrame.BorderSizePixel = 0
    StatusFrame.ZIndex = 2

    local StatusLabel = Instance.new("TextLabel", StatusFrame)
    StatusLabel.Size = UDim2.new(1, 0, 1, 0)
    StatusLabel.BackgroundTransparency = 1
    StatusLabel.Text = "攀爬：关 | 飞行：关 | 穿墙：关 | 速度：30"
    StatusLabel.TextColor3 = Color3.fromRGB(60, 40, 20)
    StatusLabel.TextFont = Enum.Font.Garamond
    StatusLabel.TextSize = 16
    StatusLabel.TextXAlignment = Enum.TextXAlignment.Center
    StatusLabel.ZIndex = 2

    -- 功能按钮区：军装风格+悬停/点击动画
    local ButtonFrame = Instance.new("Frame", MainFrame)
    ButtonFrame.Size = UDim2.new(1, 0, 0, 250)
    ButtonFrame.Position = UDim2.new(0, 0, 0, 110)
    ButtonFrame.BackgroundTransparency = 1
    ButtonFrame.Parent = MainFrame
    ButtonFrame.ZIndex = 2

    -- 通用按钮创建函数
    local function createStyledButton(name, text, posX, posY, callback)
        local btn = ButtonFrame:FindFirstChild(name) or Instance.new("TextButton")
        btn.Name = name
        btn.Size = UDim2.new(0.4, 0, 0, 50)
        btn.Position = UDim2.new(posX, 0, posY, 0)
        btn.BackgroundColor3 = CONTINENTAL_BLUE
        btn.BorderColor3 = RED_TRIM
        btn.BorderSizePixel = 2
        btn.CornerRadius = UDim.new(0, 5)
        btn.Text = text
        btn.TextColor3 = OFF_WHITE
        btn.TextFont = Enum.Font.Garamond
        btn.TextSize = 18
        btn.Parent = ButtonFrame
        btn.ZIndex = 3

        -- 悬停动画
        btn.MouseEnter:Connect(function()
            if not isUIAnimating then
                isUIAnimating = true
                TweenService:Create(btn, TWEEN_INFO, {BackgroundTransparency = 0.1}):Play()
                wait(0.3)
                isUIAnimating = false
            end
        end)
        btn.MouseLeave:Connect(function()
            if not isUIAnimating and not (name == "ClimbBtn" and isClimbEnabled) and not (name == "FlyBtn" and isFlyingEnabled) and not (name == "NoclipBtn" and isNoclipEnabled) then
                TweenService:Create(btn, TWEEN_INFO, {BackgroundTransparency = 0}):Play()
            end
        end)

        -- 点击回调
        btn.MouseButton1Click:Connect(function()
            callback()
            -- 点击反馈
            TweenService:Create(btn, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0.38, 0, 0, 48)}):Play()
            wait(0.1)
            TweenService:Create(btn, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0.4, 0, 0, 50)}):Play()
        end)

        return btn
    end

    -- 攀爬按钮
    createStyledButton("ClimbBtn", "开启攀爬", 0.05, 0.05, function()
        updateClimbState(not isClimbEnabled)
    end)

    -- 飞行按钮
    createStyledButton("FlyBtn", "开启飞行", 0.55, 0.05, function()
        updateFlyState(not isFlyingEnabled)
    end)

    -- 速度调节区
    local SpeedFrame = Instance.new("Frame", ButtonFrame)
    SpeedFrame.Size = UDim2.new(0.8, 0, 0, 40)
    SpeedFrame.Position = UDim2.new(0.1, 0, 0.3, 0)
    SpeedFrame.BackgroundTransparency = 1
    SpeedFrame.Parent = ButtonFrame
    SpeedFrame.ZIndex = 2

    local function createSpeedButton(name, text, posX, callback)
        local btn = SpeedFrame:FindFirstChild(name) or Instance.new("TextButton")
        btn.Name = name
        btn.Size = UDim2.new(0.2, 0, 1, 0)
        btn.Position = UDim2.new(posX, 0, 0, 0)
        btn.BackgroundColor3 = CONTINENTAL_BLUE
        btn.BorderColor3 = RED_TRIM
        btn.BorderSizePixel = 2
        btn.CornerRadius = UDim.new(0, 5)
        btn.Text = text
        btn.TextColor3 = OFF_WHITE
        btn.TextFont = Enum.Font.Garamond
        btn.TextSize = 14
        btn.Parent = SpeedFrame
        btn.ZIndex = 3

        btn.MouseEnter:Connect(function()
            if not isUIAnimating then
                isUIAnimating = true
                TweenService:Create(btn, TWEEN_INFO, {BackgroundTransparency = 0.1}):Play()
                wait(0.3)
                isUIAnimating = false
            end
        end)
        btn.MouseLeave:Connect(function()
            if not isUIAnimating then
                TweenService:Create(btn, TWEEN_INFO, {BackgroundTransparency = 0}):Play()
            end
        end)

        btn.MouseButton1Click:Connect(function()
            callback()
            TweenService:Create(btn, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0.18, 0, 0.9, 0)}):Play()
            wait(0.1)
            TweenService:Create(btn, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0.2, 0, 1, 0)}):Play()
        end)

        return btn
    end

    createSpeedButton("SpeedDownBtn", "速度-5", 0.1, function()
        updateFlySpeed(flySpeed - 5)
    end)
    createSpeedButton("SpeedUpBtn", "速度+5", 0.7, function()
        updateFlySpeed(flySpeed + 5)
    end)

    -- 穿墙按钮
    createStyledButton("NoclipBtn", "开启穿墙", 0.05, 0.6, function()
        updateNoclipState(not isNoclipEnabled)
    end)

    -- 旗帜开关按钮（视觉升级）
    local ToggleBtn = ScreenGui:FindFirstChild("FlagToggle") or Instance.new("ImageLabel")
    ToggleBtn.Name = "FlagToggle"
    ToggleBtn.Size = UDim2.new(0, 120, 0, 180)
    ToggleBtn.Position = UDim2.new(1, -130, 0, 20)
    ToggleBtn.BackgroundTransparency = 1
    ToggleBtn.Image = "rbxassetid://123456" -- 替换为实际美国国旗/大陆军军旗资源
    ToggleBtn.Parent = ScreenGui
    ToggleBtn.ZIndex = 5

    -- 旗帜悬停动画
    ToggleBtn.MouseEnter:Connect(function()
        if not isUIAnimating then
            isUIAnimating = true
            TweenService:Create(ToggleBtn, TWEEN_INFO, {Rotation = 5}):Play()
            wait(0.3)
            TweenService:Create(ToggleBtn, TWEEN_INFO, {Rotation = 0}):Play()
            wait(0.3)
            isUIAnimating = false
        end
    end)

    -- 旗帜点击逻辑（带动画）
    ToggleBtn.MouseButton1Click:Connect(function()
        isUIVisible = not isUIVisible
        local tweenPos = TweenService:Create(
            MainFrame, 
            TWEEN_INFO, 
            {Position = isUIVisible and UDim2.new(0.1, 0, 0.05, 0) or UDim2.new(0.1, 0, -1, 0)}
        )
        tweenPos:Play()
    end)

    -- 初始化入场动画
    TweenService:Create(
        MainFrame, 
        TWEEN_INFO, 
        {Position = UDim2.new(0.1, 0, 0.05, 0)}
    ):Play()
end

-- 核心功能逻辑（性能优化+鲁棒性增强）
local function getCharacterParts()
    local Character = Player.Character
    if not Character then return nil, nil end
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Character:FindFirstChild("HumanoidRootPart")
    return Humanoid, RootPart
end

local function updateStatusText()
    local StatusLabel = ScreenGui:FindFirstChild("IndependenceHallFrame") and 
                        ScreenGui.IndependenceHallFrame:FindFirstChild("StatusFrame") and 
                        ScreenGui.IndependenceHallFrame.StatusFrame:FindFirstChild("StatusLabel")
    if not StatusLabel then return end
    StatusLabel.Text = string.format(
        "攀爬：%s | 飞行：%s | 穿墙：%s | 速度：%d",
        isClimbEnabled and "开" or "关",
        isFlyingEnabled and "开" or "关",
        isNoclipEnabled and "开" or "关",
        flySpeed
    )
end

local function updateClimbState(enabled)
    isClimbEnabled = enabled
    local Humanoid = getCharacterParts()
    if Humanoid then
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, enabled)
    end
    local ClimbBtn = ScreenGui.IndependenceHallFrame.ButtonFrame.ClimbBtn
    ClimbBtn.BackgroundColor3 = enabled and ACTIVE_COLOR or CONTINENTAL_BLUE
    ClimbBtn.Text = enabled and "关闭攀爬" or "开启攀爬"
    updateStatusText()
end

local function updateFlyState(enabled)
    isFlyingEnabled = enabled
    local Humanoid, RootPart = getCharacterParts()
    if not Humanoid then return end

    if flyConnection then
        flyConnection:Disconnect()
        flyConnection = nil
    end

    Humanoid.Fly = enabled
    Humanoid.WalkSpeed = enabled and flySpeed or 16
    local FlyBtn = ScreenGui.IndependenceHallFrame.ButtonFrame.FlyBtn
    FlyBtn.BackgroundColor3 = enabled and ACTIVE_COLOR or CONTINENTAL_BLUE
    FlyBtn.Text = enabled and "关闭飞行" or "开启飞行"

    if enabled and RootPart then
        local moveDir = Vector3.new()
        flyConnection = UserInputService.InputChanged:Connect(function(input)
            if input.UserInputType ~= Enum.UserInputType.Keyboard then return end
            moveDir = Vector3.new()

            -- 按键映射优化（支持WASD与方向键）
            if UserInputService:IsKeyDown(Enum.KeyCode.W) or UserInputService:IsKeyDown(Enum.KeyCode.Up) then
                moveDir += RootPart.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) or UserInputService:IsKeyDown(Enum.KeyCode.Down) then
                moveDir -= RootPart.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) or UserInputService:IsKeyDown(Enum.KeyCode.Left) then
                moveDir -= RootPart.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) or UserInputService:IsKeyDown(Enum.KeyCode.Right) then
                moveDir += RootPart.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                moveDir += Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
                moveDir -= Vector3.new(0, 1, 0)
            end

            if moveDir.Magnitude > 0 then
                RootPart.Velocity = moveDir.Unit * flySpeed
            end
        end)
    end

    updateStatusText()
end

local function updateFlySpeed(newSpeed)
    flySpeed = math.clamp(newSpeed, 10, 100)
    local Humanoid = getCharacterParts()
    if Humanoid and isFlyingEnabled then
        Humanoid.WalkSpeed = flySpeed
    end
    updateStatusText()
end

local function updateNoclipState(enabled)
    isNoclipEnabled = enabled
    local Character = Player.Character
    if not Character then return end

    if noclipConnection then
        noclipConnection:Disconnect()
        noclipConnection = nil
    end

    local NoclipBtn = ScreenGui.IndependenceHallFrame.ButtonFrame.NoclipBtn
    NoclipBtn.BackgroundColor3 = enabled and ACTIVE_COLOR or CONTINENTAL_BLUE
    NoclipBtn.Text = enabled and "关闭穿墙" or "开启穿墙"

    local parts = {}
    for _, part in ipairs(Character:GetDescendants()) do
        if part:IsA("BasePart") then
            table.insert(parts, part)
        end
    end

    if enabled then
        noclipConnection = RunService.RenderStepped:Connect(function(deltaTime)
            if deltaTime > 0.1 then return end -- 避免高延迟下性能浪费
            for _, part in ipairs(parts) do
                part.CanCollide = false
            end
        end)
    else
        for _, part in ipairs(parts) do
            part.CanCollide = true
        end
    end

    updateStatusText()
end

-- 角色重生与初始化
Player.CharacterAdded:Connect(function()
    if flyConnection then flyConnection:Disconnect() end
    if noclipConnection then noclipConnection:Disconnect() end
    isClimbEnabled = false
    isFlyingEnabled = false
    isNoclipEnabled = false
    createRevolutionUI()
    updateStatusText()
end)

-- 首次初始化
createRevolutionUI()
