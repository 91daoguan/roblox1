-- Delta注入器专用：移动端飞行控制（按钮开关，下方按钮控制飞行）
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local uis = game:GetService("UserInputService")
local speed = 6
local flying = false
local bv, bg

-- 创建飞行按钮GUI
local screengui = Instance.new("ScreenGui", plr:WaitForChild("PlayerGui"))
screengui.Name = "FlyGui"
local btn = Instance.new("TextButton", screengui)
btn.Size = UDim2.new(0,120,0,50)
btn.Position = UDim2.new(1,-130,1,-60)
btn.AnchorPoint = Vector2.new(0,0)
btn.Text = "飞行"
btn.BackgroundColor3 = Color3.new(0.2,0.6,1)
btn.TextColor3 = Color3.new(1,1,1)
btn.Font = Enum.Font.SourceSansBold
btn.TextSize = 26

-- 飞行实现
function Fly()
    flying = true
    btn.Text = "停止飞行"
    local root = char:FindFirstChild("HumanoidRootPart")
    if not root then return end
    bv = Instance.new("BodyVelocity", root)
    bv.MaxForce = Vector3.new(9e9,9e9,9e9)
    bg = Instance.new("BodyGyro", root)
    bg.MaxTorque = Vector3.new(9e9,9e9,9e9)
    bg.P = 9000

    local jumpConn
    jumpConn = char:FindFirstChildOfClass("Humanoid").Jumping:Connect(function(active)
        if active and flying then
            bv.Velocity = bv.Velocity + Vector3.new(0,speed*2,0)
        end
    end)

    while flying and root and bv and bg do
        game:GetService('RunService').RenderStepped:wait()
        -- 使用摇杆控制方向
        local move = Vector3.new(0,0,0)
        local cam = workspace.CurrentCamera
        local dir = uis:GetDeviceRotation() or cam.CFrame.LookVector

        -- 检查虚拟摇杆方向
        if uis.TouchEnabled then
            local mv = plr.PlayerModule
            local controls = mv and mv:GetControls() -- 使用Roblox默认PlayerModule的摇杆（有些注入器下不可用）
            if controls and controls.MoveDirection then
                move = move + cam.CFrame.RightVector * controls.MoveDirection.X
                move = move + cam.CFrame.LookVector * controls.MoveDirection.Z
            end
        end

        -- 如果没有PlayerModule就用Humanoid的MoveDirection
        local humanoid = char:FindFirstChildOfClass("Humanoid")
        if humanoid and humanoid.MoveDirection.Magnitude > 0 then
            move = humanoid.MoveDirection
        end

        bv.Velocity = move * speed
        bg.CFrame = cam.CFrame
    end

    if bv then bv:Destroy() end
    if bg then bg:Destroy() end
    btn.Text = "飞行"
end

function StopFly()
    flying = false
end

btn.MouseButton1Click:Connect(function()
    if not flying then Fly() else StopFly() end
end)

-- 角色重生时清理GUI和飞行
plr.CharacterAdded:Connect(function()
    StopFly()
    if screengui then screengui:Destroy() end
end)

print("移动端飞行按钮已加载，点按下方飞行按钮以开关飞行。")
