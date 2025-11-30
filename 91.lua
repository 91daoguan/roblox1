-- filename: 
-- version: lua51
-- line: [0, 0] id: 0
local r0_0, r1_0 = pcall(function()
  -- line: [0, 0] id: 1
  local r0_1 = game:GetService("Players").LocalPlayer
  local r1_1 = game:GetService("RunService")
  local r2_1 = game:GetService("Stats")
  espRToggled = false
  espBToggled = false
  espIToggled = false
  espCuToggled = false
  espBossToggled = false
  espZToggled = false
  autoFaceToggled = false
  autoFaceConnection = nil
  autoFireToggled = false
  autoFireConnection = nil
  autoFireRange = 50
  isFiring = false
  isReloadingWeapon = false
  isFireAnimPlaying = false
  aimingForShot = false
  rotatingToTarget = false
  targetRotation = nil
  currentAimTrack = nil
  currentFireTrack = nil
  currentTarget = nil
  isHoldingAim = false
  autoFireHeadlessToggled = false
  autoFireHeadlessConnection = nil
  autoFireHeadlessRange = 100
  isFireHeadless = false
  isFireHeadlessAnimPlaying = false
  aimingForHeadless = false
  rotatingToHeadless = false
  targetHeadlessRotation = nil
  currentHeadlessAimTrack = nil
  currentHeadlessFireTrack = nil
  headlessBoss = nil
  wallbangEnabled = false
  local r3_1 = true
  local r4_1 = 0.15
  local r5_1 = r4_1
  local r6_1 = {
    BARREL = 1,
    IGNITER = 2,
  }
  local r7_1 = 8
  local function r8_1(r0_61, r1_61, r2_61)
    -- line: [0, 0] id: 61
    if not r0_61 then
      return 
    end
    local r3_61 = Vector3.new(r1_61.X - r0_61.Position.X, 0, r1_61.Z - r0_61.Position.Z)
    if r3_61.Magnitude > 0 then
      r0_61.CFrame = r0_61.CFrame:Lerp(CFrame.lookAt(r0_61.Position, r0_61.Position + r3_61.Unit), 1 - math.exp(-r7_1 * r2_61))
    end
  end
  local function r9_1(r0_65, r1_65)
    -- line: [0, 0] id: 65
    if not r0_65 then
      return nil
    end
    local r2_65 = nil
    pcall(function()
      -- line: [0, 0] id: 66
      local r0_66 = r0_1.Character and r0_1.Character:FindFirstChild("Humanoid")
      if not r0_66 then
        return 
      end
      local r1_66 = r0_66:FindFirstChild("Animator")
      if not r1_66 then
        return 
      end
      local r2_66 = r0_65:FindFirstChild("Animations")
      if r2_66 then
        local r3_66 = r2_66:FindFirstChild(r1_65)
        if r3_66 and r3_66:IsA("Animation") then
          r2_65 = r1_66:LoadAnimation(r3_66)
          r2_65.Looped = false
          r2_65:Play()
        end
      end
    end)
    return r2_65
  end
  local function r10_1(r0_29)
    -- line: [0, 0] id: 29
    if r0_29 then
      pcall(function()
        -- line: [0, 0] id: 30
        r0_29:Stop()
        r0_29:Destroy()
      end)
    end
  end
  local function r11_1(r0_144, r1_144)
    -- line: [0, 0] id: 144
    local r2_144 = {
      Fire = 0.5,
      Reload = 3.5,
      Aim = 0.3,
      Aiming = 999,
    }
    if r0_144 then
      local r3_144 = r0_144.Name:lower()
      if r3_144:find("musket") or r3_144:find("charleville") then
        r2_144.Reload = 4
      elseif r3_144:find("pistol") then
        r2_144.Reload = 3
        r2_144.Fire = 0.4
      elseif r3_144:find("blunderbuss") then
        r2_144.Reload = 3.5
        r2_144.Fire = 0.6
      elseif r3_144:find("carbine") then
        r2_144.Reload = 3.2
      end
    end
    return r2_144[r1_144] or 1
  end
  local function r12_1()
    -- line: [0, 0] id: 177
    if not r0_1.Character then
      return nil
    end
    for r3_177, r4_177 in pairs(r0_1.Character:GetChildren()) do
      if r4_177:IsA("Tool") and r4_177:FindFirstChild("Configuration") and (r4_177:FindFirstChild("RemoteEvent") or r4_177:FindFirstChild("Remote")) then
        return r4_177
      end
    end
    return nil
  end
  local function r13_1(r0_34, r1_34, r2_34)
    -- line: [0, 0] id: 34
    if wallbangEnabled then
      return true
    end
    local r3_34 = RaycastParams.new()
    r3_34.FilterDescendantsInstances = {
      r0_1.Character
    }
    r3_34.FilterType = Enum.RaycastFilterType.Exclude
    r3_34.IgnoreWater = true
    local r4_34 = {}
    for r8_34, r9_34 in pairs(workspace.Zombies:GetChildren()) do
      if r9_34 ~= r2_34 then
        table.insert(r4_34, r9_34)
      end
    end
    for r8_34, r9_34 in pairs(workspace.Camera:GetChildren()) do
      if r9_34.Name == "m_Zombie" then
        local r10_34 = r9_34:FindFirstChild("Orig")
        if r10_34 and r10_34.Value and r10_34.Value ~= r2_34 then
          table.insert(r4_34, r9_34)
          table.insert(r4_34, r10_34.Value)
        end
      end
    end
    r3_34.FilterDescendantsInstances = {
      r0_1.Character,
      unpack(r4_34)
    }
    local r5_34 = r1_34 - r0_34
    local r6_34 = workspace:Raycast(r0_34, r5_34, r3_34)
    if r6_34 then
      local r7_34 = r6_34.Instance
      if r7_34:IsDescendantOf(r2_34) then
        return true
      end
      if r7_34.Parent.Name == "m_Zombie" then
        local r8_34 = r7_34.Parent:FindFirstChild("Orig")
        if r8_34 and r8_34.Value == r2_34 then
          return true
        end
      end
      if r7_34.CanCollide == false then
        local r8_34 = RaycastParams.new()
        r8_34.FilterDescendantsInstances = {
          r0_1.Character,
          r7_34,
          unpack(r4_34)
        }
        r8_34.FilterType = Enum.RaycastFilterType.Exclude
        r8_34.IgnoreWater = true
        local r9_34 = workspace:Raycast(r0_34, r5_34, r8_34)
        if r9_34 then
          if r9_34.Instance:IsDescendantOf(r2_34) then
            return true
          end
          if r9_34.Instance.Parent.Name == "m_Zombie" then
            local r10_34 = r9_34.Instance.Parent:FindFirstChild("Orig")
            if r10_34 and r10_34.Value == r2_34 then
              return true
            end
          end
          return false
        end
        return false
      end
      return false
    end
    return true
  end
  local function r14_1(r0_51, r1_51, r2_51)
    -- line: [0, 0] id: 51
    if wallbangEnabled then
      return true
    end
    local r3_51 = RaycastParams.new()
    r3_51.FilterDescendantsInstances = {
      r0_1.Character
    }
    r3_51.FilterType = Enum.RaycastFilterType.Exclude
    r3_51.IgnoreWater = true
    local r4_51 = {}
    for r8_51, r9_51 in pairs(workspace.Zombies:GetChildren()) do
      table.insert(r4_51, r9_51)
    end
    for r8_51, r9_51 in pairs(workspace.Camera:GetChildren()) do
      if r9_51.Name == "m_Zombie" then
        table.insert(r4_51, r9_51)
        local r10_51 = r9_51:FindFirstChild("Orig")
        if r10_51 and r10_51.Value then
          table.insert(r4_51, r10_51.Value)
        end
      end
    end
    r3_51.FilterDescendantsInstances = {
      r0_1.Character,
      unpack(r4_51)
    }
    local r5_51 = r1_51 - r0_51
    local r6_51 = workspace:Raycast(r0_51, r5_51, r3_51)
    if r6_51 then
      local r7_51 = r6_51.Instance
      if r2_51 and r7_51:IsDescendantOf(r2_51) then
        return true
      end
      if r7_51.CanCollide == false then
        local r8_51 = RaycastParams.new()
        r8_51.FilterDescendantsInstances = {
          r0_1.Character,
          r7_51,
          unpack(r4_51)
        }
        r8_51.FilterType = Enum.RaycastFilterType.Exclude
        r8_51.IgnoreWater = true
        local r9_51 = workspace:Raycast(r0_51, r5_51, r8_51)
        if r9_51 then
          if r2_51 and r9_51.Instance:IsDescendantOf(r2_51) then
            return true
          end
          return false
        end
        return false
      end
      return false
    end
    return true
  end
  local function r15_1()
    -- line: [0, 0] id: 62
    if not r3_1 or not headlessBoss then
      return r4_1
    end
    local r0_62 = headlessBoss:FindFirstChild("Torso")
    if not r0_62 then
      return r4_1
    end
    local r1_62 = r0_62.AssemblyLinearVelocity or Vector3.new(0, 0, 0)
    local r2_62 = r1_62.Magnitude
    local r3_62 = r4_1
    if r2_62 < 5 then
      r3_62 = 0.05
    elseif r2_62 < 15 then
      r3_62 = 0.1
    elseif r2_62 < 25 then
      r3_62 = 0.15
    elseif r2_62 < 35 then
      r3_62 = 0.25
    else
      r3_62 = 0.35
    end
    local r4_62 = r0_1.Character and r0_1.Character:FindFirstChild("HumanoidRootPart")
    if r4_62 and r0_62 and math.abs((r0_62.Position - r4_62.Position).Unit:Dot(r1_62.Unit)) < 0.5 then
      r3_62 = r3_62 * 1.3
    end
    return r3_62
  end
  task.spawn(function()
    -- line: [0, 0] id: 100
    -- notice: unreachable block#3
    while true do
      task.wait(0.1)
      if r3_1 then
        local r0_100 = autoFireHeadlessToggled
        if r0_100 then
          r0_100 = r15_1()
          r5_1 = r0_100
        end
      end
    end
  end)
  local function r16_1()
    -- line: [0, 0] id: 31
    local r0_31, r1_31 = pcall(function()
      -- line: [0, 0] id: 32
      local r0_32 = workspace:FindFirstChild("Sleepy Hollow")
      if not r0_32 then
        return nil
      end
      local r1_32 = r0_32:FindFirstChild("Modes")
      if not r1_32 then
        return nil
      end
      local r2_32 = r1_32:FindFirstChild("Boss")
      if not r2_32 then
        return nil
      end
      local r3_32 = r2_32:FindFirstChild("HeadlessHorsemanBoss")
      if not r3_32 then
        return nil
      end
      return r3_32:FindFirstChild("HeadlessHorseman")
    end)
    local r2_31 = nil	-- notice: implicit variable refs by block#[3]
    if r0_31 then
      r2_31 = r1_31
      if r2_31 then
        ::label_7::
        r2_31 = nil
      end
    else
      goto label_7	-- block#2 is visited secondly
    end
    return r2_31
  end
  local function r17_1()
    -- line: [0, 0] id: 4
    if not headlessBoss or not headlessBoss.Parent then
      return nil
    end
    local r0_4 = headlessBoss:FindFirstChild("Torso")
    if not r0_4 then
      return nil
    end
    return r0_4.Position + (r0_4.AssemblyLinearVelocity or Vector3.new(0, 0, 0)) * r5_1
  end
  local function r18_1()
    -- line: [0, 0] id: 170
    if not r0_1.Character or not r0_1.Character:FindFirstChild("HumanoidRootPart") then
      return nil, nil, nil
    end
    local r0_170 = r0_1.Character.HumanoidRootPart
    local r1_170 = r0_1.Character:FindFirstChild("Head")
    if not r1_170 then
      return nil, nil, nil
    end
    local r2_170 = {}
    for r6_170, r7_170 in pairs(workspace.Zombies:GetChildren()) do
      local r8_170 = r7_170:FindFirstChild("HumanoidRootPart")
      local r9_170 = r7_170:FindFirstChild("Head")
      local r10_170 = r7_170:FindFirstChild("Barrel") ~= nil
      if r8_170 and r9_170 and r10_170 then
        local r11_170 = (r8_170.Position - r0_170.Position).Magnitude
        if r11_170 < autoFireRange then
          table.insert(r2_170, {
            zombie = r7_170,
            head = r9_170,
            distance = r11_170,
            priority = r6_1.BARREL,
            targetType = "Barrel",
          })
        end
      end
    end
    for r6_170, r7_170 in pairs(workspace.Camera:GetChildren()) do
      if r7_170.Name == "m_Zombie" then
        local r8_170 = r7_170:FindFirstChild("Orig")
        if r8_170 and r8_170.Value then
          local r9_170 = r8_170.Value
          local r10_170 = r9_170:FindFirstChild("HumanoidRootPart")
          local r11_170 = r9_170:FindFirstChild("Head")
          local r12_170 = r7_170:FindFirstChild("Barrel") ~= nil
          if r10_170 and r11_170 and r12_170 then
            local r13_170 = (r10_170.Position - r0_170.Position).Magnitude
            if r13_170 < autoFireRange then
              table.insert(r2_170, {
                zombie = r9_170,
                head = r11_170,
                distance = r13_170,
                priority = r6_1.BARREL,
                targetType = "Barrel",
              })
            end
          end
        end
      end
    end
    for r6_170, r7_170 in pairs(workspace.Camera:GetChildren()) do
      if r7_170.Name == "m_Zombie" and r7_170:FindFirstChild("Whale Oil Lantern") then
        local r9_170 = r7_170:FindFirstChild("Orig")
        if r9_170 and r9_170.Value then
          local r10_170 = r9_170.Value
          local r11_170 = r10_170:FindFirstChild("HumanoidRootPart")
          local r12_170 = r10_170:FindFirstChild("Head")
          if r11_170 and r12_170 then
            local r13_170 = (r11_170.Position - r0_170.Position).Magnitude
            if r13_170 < autoFireRange then
              table.insert(r2_170, {
                zombie = r10_170,
                head = r12_170,
                distance = r13_170,
                priority = r6_1.IGNITER,
                targetType = "Igniter",
              })
            end
          end
        end
      end
    end
    table.sort(r2_170, function(r0_171, r1_171)
      -- line: [0, 0] id: 171
      if r0_171.priority ~= r1_171.priority then
        return r0_171.priority < r1_171.priority
      end
      return r0_171.distance < r1_171.distance
    end)
    if wallbangEnabled and 0 < #r2_170 then
      local r3_170 = r2_170[1]
      return r3_170.zombie, r3_170.head, r3_170.targetType
    end
    for r6_170, r7_170 in ipairs(r2_170) do
      if r13_1(r1_170.Position, r7_170.head.Position, r7_170.zombie) then
        return r7_170.zombie, r7_170.head, r7_170.targetType
      end
    end
    return nil, nil, nil
  end
  local function r19_1()
    -- line: [0, 0] id: 180
    if not autoFireToggled or not r0_1.Character then
      return 
    end
    if isFiring or isReloadingWeapon or isFireAnimPlaying then
      return 
    end
    local r0_180 = r12_1()
    if not r0_180 then
      return 
    end
    local r1_180 = r0_180:FindFirstChild("Ammo") or r0_180:FindFirstChild("ShotsLoaded")
    if not r1_180 or r1_180.Value <= 0 then
      if isHoldingAim then
        r10_1(currentAimTrack)
        currentAimTrack = nil
        isHoldingAim = false
      end
      currentTarget = nil
      return 
    end
    local r2_180, r3_180, r4_180 = r18_1()
    if not r2_180 or not r3_180 then
      if isHoldingAim then
        r10_1(currentAimTrack)
        currentAimTrack = nil
        isHoldingAim = false
      end
      currentTarget = nil
      return 
    end
    local r5_180 = r0_180:FindFirstChild("RemoteEvent") or r0_180:FindFirstChild("Remote")
    if not r5_180 then
      return 
    end
    local r6_180 = r0_180:FindFirstChild("ModelReference") and r6_180.Value
    if not r6_180 then
      return 
    end
    isFiring = true
    isFireAnimPlaying = true
    aimingForShot = true
    currentTarget = r2_180
    local r7_180 = r0_1.Character:FindFirstChild("HumanoidRootPart")
    local r8_180 = isHoldingAim
    if not r8_180 then
      currentAimTrack = r9_1(r0_180, "Aim")
      r8_180 = currentAimTrack
      if r8_180 then
        r8_180 = currentAimTrack
        r8_180.Looped = false
      end
      task.wait(r11_1(r0_180, "Aim"))
      r10_1(currentAimTrack)
      currentAimTrack = r9_1(r0_180, "Aiming")
      r8_180 = currentAimTrack
      if r8_180 then
        r8_180 = currentAimTrack
        r8_180.Looped = true
      end
      r8_180 = true
      isHoldingAim = r8_180
    end
    local r9_180 = nil	-- notice: implicit variable refs by block#[40]
    local r10_180 = nil	-- notice: implicit variable refs by block#[40]
    if r7_180 then
      rotatingToTarget = true
      targetRotation = r3_180.Position
      r8_180 = 0
      r9_180 = 1
      r10_180 = nil
      r10_180 = r1_1.RenderStepped:Connect(function(r0_181)
        -- line: [0, 0] id: 181
        if not rotatingToTarget or not targetRotation then
          if r10_180 then
            r10_180:Disconnect()
          end
          return 
        end
        if currentTarget and currentTarget:FindFirstChild("Head") then
          targetRotation = currentTarget.Head.Position
        end
        r8_1(r7_180, targetRotation, r0_181)
        r8_180 = r8_180 + r0_181
        local r2_181 = (targetRotation - r7_180.Position).Unit
        if 0.98 < r7_180.CFrame.LookVector:Dot(Vector3.new(r2_181.X, 0, r2_181.Z).Unit) or r9_180 <= r8_180 then
          rotatingToTarget = false
          if r10_180 then
            r10_180:Disconnect()
          end
        end
      end)
      while rotatingToTarget do
        task.wait()
      end
      -- close: r8_180
    end
    r8_180 = r10_1
    r9_180 = currentAimTrack
    r8_180(r9_180)
    r8_180 = nil
    currentAimTrack = r8_180
    r8_180 = false
    aimingForShot = r8_180
    r8_180 = false
    isHoldingAim = r8_180
    r8_180 = pcall
    function r9_180()
      -- line: [0, 0] id: 182
      local r1_182 = workspace:GetServerTimeNow()
      currentFireTrack = r9_1(r0_180, "Fire")
      r5_180:FireServer("Fire", r6_180, r3_180.Position, r1_182)
    end
    r8_180(r9_180)
    r8_180 = r11_1
    r9_180 = r0_180
    r10_180 = "Fire"
    r8_180 = r8_180(r9_180, r10_180)
    r9_180 = task
    r9_180 = r9_180.wait
    r10_180 = r8_180
    r9_180(r10_180)
    r9_180 = r10_1
    r10_180 = currentFireTrack
    r9_180(r10_180)
    r9_180 = nil
    currentFireTrack = r9_180
    r9_180 = false
    isFireAnimPlaying = r9_180
    r9_180 = false
    isFiring = r9_180
    r9_180 = nil
    currentTarget = r9_180
    r9_180 = _G
    r9_180 = r9_180.AutoReloadV2
    r9_180 = r9_180.ReloadWeapon
    r10_180 = r0_180
    r9_180(r10_180)
  end
  local function r20_1()
    -- line: [0, 0] id: 37
    if not autoFireHeadlessToggled or not r0_1.Character then
      return 
    end
    if isFireHeadless or isReloadingWeapon or isFireHeadlessAnimPlaying then
      return 
    end
    headlessBoss = r16_1()
    if not headlessBoss or not headlessBoss.Parent then
      if isHoldingAim then
        r10_1(currentHeadlessAimTrack)
        currentHeadlessAimTrack = nil
        isHoldingAim = false
      end
      return 
    end
    local r0_37 = headlessBoss:FindFirstChild("Torso")
    if not r0_37 then
      return 
    end
    local r1_37 = r0_1.Character.HumanoidRootPart
    local r2_37 = r0_1.Character:FindFirstChild("Head")
    if not r1_37 or not r2_37 then
      return 
    end
    if autoFireHeadlessRange < (r0_37.Position - r1_37.Position).Magnitude then
      if isHoldingAim then
        r10_1(currentHeadlessAimTrack)
        currentHeadlessAimTrack = nil
        isHoldingAim = false
      end
      return 
    end
    local r4_37 = r17_1()
    if not r4_37 then
      return 
    end
    if not r14_1(r2_37.Position, r4_37, headlessBoss) then
      if isHoldingAim then
        r10_1(currentHeadlessAimTrack)
        currentHeadlessAimTrack = nil
        isHoldingAim = false
      end
      return 
    end
    local r5_37 = r12_1()
    if not r5_37 then
      return 
    end
    local r6_37 = r5_37:FindFirstChild("Ammo") or r5_37:FindFirstChild("ShotsLoaded")
    if not r6_37 or r6_37.Value <= 0 then
      if isHoldingAim then
        r10_1(currentHeadlessAimTrack)
        currentHeadlessAimTrack = nil
        isHoldingAim = false
      end
      return 
    end
    local r7_37 = r5_37:FindFirstChild("RemoteEvent") or r5_37:FindFirstChild("Remote")
    if not r7_37 then
      return 
    end
    local r8_37 = r5_37:FindFirstChild("ModelReference") and r8_37.Value
    if not r8_37 then
      return 
    end
    isFireHeadless = true
    isFireHeadlessAnimPlaying = true
    aimingForHeadless = true
    local r9_37 = isHoldingAim
    if not r9_37 then
      currentHeadlessAimTrack = r9_1(r5_37, "Aim")
      r9_37 = currentHeadlessAimTrack
      if r9_37 then
        r9_37 = currentHeadlessAimTrack
        r9_37.Looped = false
      end
      task.wait(r11_1(r5_37, "Aim"))
      r10_1(currentHeadlessAimTrack)
      currentHeadlessAimTrack = r9_1(r5_37, "Aiming")
      r9_37 = currentHeadlessAimTrack
      if r9_37 then
        r9_37 = currentHeadlessAimTrack
        r9_37.Looped = true
      end
      r9_37 = true
      isHoldingAim = r9_37
    end
    local r10_37 = nil	-- notice: implicit variable refs by block#[55]
    local r11_37 = nil	-- notice: implicit variable refs by block#[55]
    if r1_37 then
      rotatingToHeadless = true
      targetHeadlessRotation = r4_37
      r9_37 = 0
      r10_37 = 1
      r11_37 = nil
      r11_37 = r1_1.RenderStepped:Connect(function(r0_38)
        -- line: [0, 0] id: 38
        if not rotatingToHeadless or not targetHeadlessRotation then
          if r11_37 then
            r11_37:Disconnect()
          end
          return 
        end
        local r1_38 = r17_1()
        if r1_38 then
          targetHeadlessRotation = r1_38
        end
        r8_1(r1_37, targetHeadlessRotation, r0_38)
        r9_37 = r9_37 + r0_38
        local r3_38 = (targetHeadlessRotation - r1_37.Position).Unit
        if 0.98 < r1_37.CFrame.LookVector:Dot(Vector3.new(r3_38.X, 0, r3_38.Z).Unit) or r10_37 <= r9_37 then
          rotatingToHeadless = false
          if r11_37 then
            r11_37:Disconnect()
          end
        end
      end)
      while rotatingToHeadless do
        task.wait()
      end
      -- close: r9_37
    end
    r9_37 = r10_1
    r10_37 = currentHeadlessAimTrack
    r9_37(r10_37)
    r9_37 = nil
    currentHeadlessAimTrack = r9_37
    r9_37 = false
    aimingForHeadless = r9_37
    r9_37 = false
    isHoldingAim = r9_37
    r9_37 = pcall
    function r10_37()
      -- line: [0, 0] id: 39
      local r0_39 = workspace:GetServerTimeNow()
      currentHeadlessFireTrack = r9_1(r5_37, "Fire")
      r7_37:FireServer("Fire", r8_37, r4_37, r0_39)
    end
    r9_37(r10_37)
    r9_37 = r11_1
    r10_37 = r5_37
    r11_37 = "Fire"
    r9_37 = r9_37(r10_37, r11_37)
    r10_37 = task
    r10_37 = r10_37.wait
    r11_37 = r9_37
    r10_37(r11_37)
    r10_37 = r10_1
    r11_37 = currentHeadlessFireTrack
    r10_37(r11_37)
    r10_37 = nil
    currentHeadlessFireTrack = r10_37
    r10_37 = false
    isFireHeadlessAnimPlaying = r10_37
    r10_37 = false
    isFireHeadless = r10_37
    r10_37 = _G
    r10_37 = r10_37.AutoReloadV2
    r10_37 = r10_37.ReloadWeapon
    r11_37 = r5_37
    r10_37(r11_37)
  end
  local function r21_1(r0_186)
    -- line: [0, 0] id: 186
    wallbangEnabled = r0_186
  end
  local function r22_1()
    -- line: [0, 0] id: 117
    if autoFireConnection then
      autoFireConnection:Disconnect()
    end
    autoFireConnection = r1_1.Heartbeat:Connect(function()
      -- line: [0, 0] id: 118
      if not autoFireToggled then
        if autoFireConnection then
          autoFireConnection:Disconnect()
          autoFireConnection = nil
        end
        return 
      end
      task.spawn(function()
        -- line: [0, 0] id: 119
        r19_1()
      end)
    end)
  end
  local function r23_1()
    -- line: [0, 0] id: 105
    if autoFireHeadlessConnection then
      autoFireHeadlessConnection:Disconnect()
    end
    autoFireHeadlessConnection = r1_1.Heartbeat:Connect(function()
      -- line: [0, 0] id: 106
      if not autoFireHeadlessToggled then
        if autoFireHeadlessConnection then
          autoFireHeadlessConnection:Disconnect()
          autoFireHeadlessConnection = nil
        end
        return 
      end
      task.spawn(function()
        -- line: [0, 0] id: 107
        r20_1()
      end)
    end)
  end
  local function r24_1(r0_178)
    -- line: [0, 0] id: 178
    autoFireToggled = r0_178
    if r0_178 then
      isFiring = false
      isReloadingWeapon = false
      isFireAnimPlaying = false
      currentTarget = nil
      r22_1()
    else
      r10_1(currentAimTrack)
      r10_1(currentFireTrack)
      currentAimTrack = nil
      currentFireTrack = nil
      if autoFireConnection then
        autoFireConnection:Disconnect()
        autoFireConnection = nil
      end
      isFiring = false
      isReloadingWeapon = false
      isFireAnimPlaying = false
      aimingForShot = false
      currentTarget = nil
    end
  end
  local function r25_1(r0_8)
    -- line: [0, 0] id: 8
    autoFireHeadlessToggled = r0_8
    if r0_8 then
      isFireHeadless = false
      isReloadingWeapon = false
      isFireHeadlessAnimPlaying = false
      headlessBoss = nil
      r23_1()
    else
      r10_1(currentHeadlessAimTrack)
      r10_1(currentHeadlessFireTrack)
      currentHeadlessAimTrack = nil
      currentHeadlessFireTrack = nil
      if autoFireHeadlessConnection then
        autoFireHeadlessConnection:Disconnect()
        autoFireHeadlessConnection = nil
      end
      isFireHeadless = false
      isReloadingWeapon = false
      isFireHeadlessAnimPlaying = false
      aimingForHeadless = false
      headlessBoss = nil
    end
  end
  local r26_1 = false
  local r27_1 = nil
  local r28_1 = 2
  local r29_1 = false
  local r30_1 = {}
  local r31_1 = {}
  local r32_1 = {
    FAST = 1,
    ANIMATION = 2,
    BACKGROUND = 3,
  }
  local function r33_1()
    -- line: [0, 0] id: 91
    if not r0_1.Character then
      return nil
    end
    for r3_91, r4_91 in pairs(r0_1.Character:GetChildren()) do
      if r4_91:IsA("Tool") and (r4_91:FindFirstChild("RemoteEvent") or r4_91:FindFirstChild("Remote")) then
        return r4_91
      end
    end
    return nil
  end
  local function r34_1(r0_179)
    -- line: [0, 0] id: 179
    if not r0_179 or not r0_179.Parent then
      return false
    end
    if r0_1.Character and r0_1.Character:FindFirstChild(r0_179.Name) then
      return true
    end
    if r0_1.Backpack:FindFirstChild(r0_179.Name) then
      return true
    end
    return false
  end
  local function r35_1(r0_33)
    -- line: [0, 0] id: 33
    if not r0_33 then
      return 0
    end
    local r1_33 = r0_33:FindFirstChild("Ammo") or r0_33:FindFirstChild("ShotsLoaded")
    if r1_33 then
      return r1_33.Value
    end
    return 0
  end
  local function r36_1(r0_126)
    -- line: [0, 0] id: 126
    if not r0_126 then
      return 0
    end
    local r1_126 = r0_126:FindFirstChild("Cartridges")
    if r1_126 then
      return r1_126.Value
    end
    return 999
  end
  local function r37_1(r0_15)
    -- line: [0, 0] id: 15
    if not r0_15 then
      return false
    end
    local r1_15 = r35_1(r0_15)
    local r2_15 = r36_1(r0_15)
    local r3_15 = nil	-- notice: implicit variable refs by block#[6]
    if r1_15 <= 0 then
      r3_15 = 0 < r2_15
    else
      goto label_14	-- block#4 is visited secondly
    end
    return r3_15
  end
  local function r38_1(r0_206)
    -- line: [0, 0] id: 206
    if not r0_206 then
      return false
    end
    local r1_206 = r0_206:FindFirstChild("RemoteEvent") or r0_206:FindFirstChild("Remote")
    if not r1_206 then
      return false
    end
    pcall(function()
      -- line: [0, 0] id: 207
      r0_206:SetAttribute("Reloading", false)
      r0_206:SetAttribute("Stancing", false)
      r0_206:SetAttribute("Firing", false)
      local r0_207 = r0_206:FindFirstChild("ReloadStage")
      if r0_207 then
        r0_207.Value = 0
      end
      r1_206:FireServer("Reload")
    end)
    task.wait(0.5)
    return true
  end
  local function r39_1(r0_95)
    -- line: [0, 0] id: 95
    if not r0_95 or not r0_95.Parent then
      return false
    end
    if not r0_1.Character then
      return false
    end
    if r29_1 then
      return false
    end
    local r1_95 = r0_95:FindFirstChild("RemoteEvent") or r0_95:FindFirstChild("Remote")
    if not r1_95 then
      return false
    end
    if not (r0_1.Character:FindFirstChild(r0_95.Name) ~= nil) then
      return false
    end
    r29_1 = true
    local r3_95 = r9_1(r0_95, "Reload")
    pcall(function()
      -- line: [0, 0] id: 96
      r0_95:SetAttribute("Reloading", false)
      r0_95:SetAttribute("Stancing", false)
      r0_95:SetAttribute("Firing", false)
      r1_95:FireServer("Reload")
    end)
    task.wait(r11_1(r0_95, "Reload"))
    r10_1(r3_95)
    r29_1 = false
    return true
  end
  local function r40_1(r0_85)
    -- line: [0, 0] id: 85
    if not r0_85 then
      return false
    end
    if r30_1[r0_85] then
      return false
    end
    r30_1[r0_85] = true
    task.spawn(function()
      -- line: [0, 0] id: 86
      local r0_86 = r0_85:FindFirstChild("RemoteEvent") or r0_85:FindFirstChild("Remote")
      if not r0_86 then
        r30_1[r0_85] = nil
        return 
      end
      local r1_86 = 15
      local r2_86 = 0
      local r3_86 = r35_1(r0_85)
      local r4_86 = r0_85:FindFirstChild("ReloadStage")
      while r2_86 < r1_86 and r34_1(r0_85) do
        r2_86 = r2_86 + 1
        local r5_86 = r35_1(r0_85)
        local r6_86 = nil	-- notice: implicit variable refs by block#[11]
        if r4_86 then
          r6_86 = r4_86.Value
          if not r6_86 then
            ::label_41::
            r6_86 = 0
          end
        else
          goto label_41	-- block#9 is visited secondly
        end
        if r3_86 >= r5_86 then
          pcall(function()
            -- line: [0, 0] id: 88
            r0_85:SetAttribute("Reloading", false)
            r0_85:SetAttribute("Stancing", false)
            r0_85:SetAttribute("Firing", false)
            if r4_86 then
              r4_86.Value = 0
            end
          end)
          pcall(function()
            -- line: [0, 0] id: 87
            if r6_86 == 0 then
              r0_86:FireServer("Reload")
              task.wait(0.2)
            end
            if r6_86 <= 1 then
              r0_86:FireServer("Reload")
              task.wait(0.2)
              if r4_86 then
                r4_86.Value = 1
              end
            end
            if r6_86 <= 2 then
              r0_86:FireServer("Reload")
              task.wait(0.2)
              if r4_86 then
                r4_86.Value = 2
              end
            end
            r0_86:FireServer("Reload")
          end)
          task.wait(0.5)
          -- close: r5_86
        else
          break
        end
      end
      r30_1[r0_85] = nil
      pcall(function()
        -- line: [0, 0] id: 89
        r0_85:SetAttribute("Reloading", false)
        r0_85:SetAttribute("Stancing", false)
        r0_85:SetAttribute("Firing", false)
      end)
    end)
    return true
  end
  local function r41_1(r0_6)
    -- line: [0, 0] id: 6
    if not r0_6 or not r37_1(r0_6) then
      return false
    end
    local r1_6 = tick()
    if r31_1[r0_6] and r1_6 - r31_1[r0_6] < 0.8 then
      return false
    end
    r31_1[r0_6] = r1_6
    if r28_1 == r32_1.FAST then
      return r38_1(r0_6)
    end
    if r28_1 == r32_1.ANIMATION then
      return r39_1(r0_6)
    end
    if r28_1 == r32_1.BACKGROUND then
      return r40_1(r0_6)
    end
    return false
  end
  local r42_1 = 0
  local r43_1 = 0.3
  local function r44_1()
    -- line: [0, 0] id: 188
    if r27_1 then
      r27_1:Disconnect()
    end
    r27_1 = r1_1.Heartbeat:Connect(function()
      -- line: [0, 0] id: 189
      if not r26_1 then
        return 
      end
      local r0_189 = tick()
      if r0_189 - r42_1 < r43_1 then
        return 
      end
      r42_1 = r0_189
      local r1_189 = r33_1()
      if r1_189 and r37_1(r1_189) and (r28_1 == r32_1.ANIMATION or r28_1 == r32_1.FAST) then
        task.spawn(function()
          -- line: [0, 0] id: 191
          r41_1(r1_189)
        end)
      end
      if r28_1 == r32_1.BACKGROUND then
        for r5_189, r6_189 in pairs(r0_1.Backpack:GetChildren()) do
          if r6_189:IsA("Tool") and r37_1(r6_189) then
            task.spawn(function()
              -- line: [0, 0] id: 192
              r41_1(r6_189)
            end)
          end
          -- close: r5_189
        end
        if r1_189 and r37_1(r1_189) then
          task.spawn(function()
            -- line: [0, 0] id: 190
            r41_1(r1_189)
          end)
        end
      end
    end)
  end
  local function r45_1(r0_194)
    -- line: [0, 0] id: 194
    r26_1 = r0_194
    if r0_194 then
      r44_1()
    elseif r27_1 then
      r27_1:Disconnect()
      r27_1 = nil
    end
  end
  _G.AutoReloadV2 = {
    Toggle = r45_1,
    SetMode = function(r0_79)
      -- line: [0, 0] id: 79
      if r0_79 < 1 or 3 < r0_79 then
        return 
      end
      r28_1 = r0_79
      if r26_1 then
        r45_1(false)
        task.wait(0.1)
        r45_1(true)
      end
    end,
    IsEnabled = function()
      -- line: [0, 0] id: 78
      return r26_1
    end,
    GetMode = function()
      -- line: [0, 0] id: 173
      return r28_1
    end,
    ReloadWeapon = r41_1,
    Modes = r32_1,
  }
  print("Auto Reload V2 - Fixed Background Mode Loaded")
  local function r47_1(r0_139)
    -- line: [0, 0] id: 139
    _G.AutoReloadV2.Toggle(r0_139)
  end
  local function r48_1(r0_23)
    -- line: [0, 0] id: 23
    _G.AutoReloadV2.SetMode(r0_23)
  end
  local r49_1 = nil
  local r50_1 = nil
  local function r51_1()
    -- line: [0, 0] id: 19
    pcall(function()
      -- line: [0, 0] id: 20
      local r0_20 = workspace:WaitForChild("Sleepy Hollow", 5)
      if not r0_20 then
        return 
      end
      local r1_20 = r0_20:FindFirstChild("Modes")
      if not r1_20 then
        return 
      end
      local r2_20 = r1_20:FindFirstChild("Boss")
      if not r2_20 then
        return 
      end
      r49_1 = r2_20:FindFirstChild("HeadlessHorsemanBoss")
      if r49_1 then
        if not espBossToggled then
          for r6_20, r7_20 in pairs(r49_1:GetChildren()) do
            if r7_20:FindFirstChild("Highlight") then
              r7_20.Highlight:Destroy()
            end
          end
          return 
        end
        for r6_20, r7_20 in pairs(r49_1:GetChildren()) do
          if r7_20 and r7_20.Parent and not r7_20:FindFirstChild("Highlight") then
            local r8_20 = Instance.new("Highlight")
            r8_20.Parent = r7_20
            r8_20.Adornee = r7_20
            r8_20.FillColor = Color3.fromRGB(255, 0, 0)
            r8_20.OutlineColor = Color3.fromRGB(255, 255, 255)
            r8_20.OutlineTransparency = 0.5
          end
        end
      end
    end)
  end
  (function()
    -- line: [0, 0] id: 16
    if r50_1 then
      r50_1:Disconnect()
      r50_1 = nil
    end
    task.spawn(function()
      -- line: [0, 0] id: 17
      while task.wait(2) do
        local r0_17 = espBossToggled
        if not r0_17 then
          return 
        end
        r51_1()
        r0_17 = r49_1
        if r0_17 then
          r0_17 = r50_1
          if not r0_17 then
            r0_17 = r49_1.ChildAdded:Connect(function(r0_18)
              -- line: [0, 0] id: 18
              if espBossToggled and r0_18 and r0_18.Parent then
                task.wait(0.1)
                if not r0_18:FindFirstChild("Highlight") then
                  local r1_18 = Instance.new("Highlight")
                  r1_18.Parent = r0_18
                  r1_18.Adornee = r0_18
                  r1_18.FillColor = Color3.fromRGB(255, 0, 0)
                  r1_18.OutlineColor = Color3.fromRGB(255, 255, 255)
                  r1_18.OutlineTransparency = 0.5
                end
              end
            end)
            r50_1 = r0_17
          end
        end
        r0_17 = r49_1
        if not r0_17 then
          r0_17 = r50_1
          if r0_17 then
            r50_1:Disconnect()
            r0_17 = nil
            r50_1 = r0_17
          end
        end
      end
    end)
  end)()
  workspace.Camera.ChildAdded:Connect(function(r0_25)
    -- line: [0, 0] id: 25
    if r0_25.Name == "m_Zombie" then
      local r1_25 = r0_25:WaitForChild("Orig", 5)
      if r1_25 and r1_25.Value ~= nil then
        local r2_25 = r1_25.Value:FindFirstChild("Zombie")
        if not r2_25 then
          return 
        end
        if espRToggled and 16 < r2_25.WalkSpeed then
          local r3_25 = Instance.new("Highlight")
          r3_25.Parent = r0_25
          r3_25.Adornee = r0_25
        end
        if espBToggled and r0_25:FindFirstChild("Barrel") ~= nil then
          local r3_25 = Instance.new("Highlight")
          r3_25.Parent = r0_25
          r3_25.Adornee = r0_25
          r3_25.FillColor = Color3.fromRGB(65, 105, 225)
        end
        if espIToggled and r0_25:FindFirstChild("Whale Oil Lantern") ~= nil then
          local r3_25 = Instance.new("Highlight")
          r3_25.Parent = r0_25
          r3_25.Adornee = r0_25
          r3_25.FillColor = Color3.fromRGB(255, 255, 51)
        end
        if espCuToggled and r0_25:FindFirstChild("Sword") ~= nil then
          local r3_25 = Instance.new("Highlight")
          r3_25.Parent = r0_25
          r3_25.Adornee = r0_25
          r3_25.FillColor = Color3.fromRGB(65, 105, 225)
        end
        if espZToggled and r0_25:FindFirstChild("Axe") ~= nil then
          local r3_25 = Instance.new("Highlight")
          r3_25.Parent = r0_25
          r3_25.Adornee = r0_25
          r3_25.FillColor = Color3.fromRGB(255, 0, 255)
        end
      end
    end
  end)
  espMedicToggled = false
  espInfectionToggled = false
  function checkPlayersLife()
    -- line: [0, 0] id: 67
    if not espMedicToggled and not espInfectionToggled then
      for r4_67, r5_67 in pairs(workspace.Players:GetChildren()) do
        if r5_67:FindFirstChild("Highlight") then
          r5_67.Highlight:Destroy()
        end
      end
      return 
    end
    while true do
      if not espMedicToggled then
        local r0_67 = espInfectionToggled
        if r0_67 then
          ::label_31::
          r0_67 = workspace.Players:GetChildren()
          for r4_67, r5_67 in pairs(r0_67) do
            if espMedicToggled then
              local r6_67 = r5_67:FindFirstChild("Humanoid")
              if r6_67 and r6_67.Health < 60 and r5_67.Name ~= r0_1.Name and (r0_1.Backpack:FindFirstChild("Medical Supplies") or r0_1.Character and r0_1.Character:FindFirstChild("Medical Supplies")) and not r5_67:FindFirstChild("Highlight") then
                local r7_67 = Instance.new("Highlight")
                r7_67.Parent = r5_67
                r7_67.Adornee = r5_67
                r7_67.FillColor = Color3.fromRGB(255, 169, 108)
                r7_67.FillTransparency = 0.8
                r7_67.OutlineColor = Color3.fromRGB(255, 206, 108)
                r7_67.OutlineTransparency = 0.2
              elseif r5_67:FindFirstChild("Highlight") then
                r5_67.Highlight:Destroy()
              end
            end
            if espInfectionToggled and (r0_1.Backpack:FindFirstChild("Mercy") or r0_1.Character and r0_1.Character:FindFirstChild("Mercy")) then
              local r6_67 = r5_67:FindFirstChild("UserStates")
              if r6_67 and r6_67:FindFirstChild("Infected") then
                local r7_67 = r6_67.Infected.Value
                if r7_67 > 10 then
                  local r8_67 = r5_67:FindFirstChild("Highlight")
                  if r7_67 > 89 then
                    local r9_67 = r8_67 or Instance.new("Highlight")
                    r9_67.Parent = r5_67
                    r9_67.Adornee = r5_67
                    r9_67.FillColor = Color3.fromRGB(178, 34, 34)
                  elseif not r8_67 then
                    local r9_67 = Instance.new("Highlight")
                    r9_67.Parent = r5_67
                    r9_67.Adornee = r5_67
                    r9_67.FillColor = Color3.fromRGB(255, 169, 108)
                    r9_67.FillTransparency = 0.8
                    r9_67.OutlineColor = Color3.fromRGB(255, 206, 108)
                    r9_67.OutlineTransparency = 0.2
                  end
                elseif r5_67:FindFirstChild("Highlight") and r7_67 == 0 then
                  r5_67.Highlight:Destroy()
                end
              end
            end
          end
          task.wait(2)
        else
          break
        end
      else
        goto label_31	-- block#9 is visited secondly
      end
    end
  end
  toolEquip = true
  r0_1.CharacterAdded:Connect(function(r0_183)
    -- line: [0, 0] id: 183
    r10_1(currentAimTrack)
    r10_1(currentFireTrack)
    currentAimTrack = nil
    currentFireTrack = nil
    r10_1(currentHeadlessAimTrack)
    r10_1(currentHeadlessFireTrack)
    currentHeadlessAimTrack = nil
    currentHeadlessFireTrack = nil
    r29_1 = false
    r30_1 = {}
    r31_1 = {}
    isFiring = false
    isFireAnimPlaying = false
    currentTarget = nil
    isFireHeadless = false
    isFireHeadlessAnimPlaying = false
    headlessBoss = nil
    if autoFireToggled then
      task.wait(1)
      r22_1()
    end
    if autoFireHeadlessToggled then
      task.wait(1)
      r23_1()
    end
    if r26_1 then
      task.wait(1)
      _G.AutoReloadV2.Toggle(false)
      task.wait(0.1)
      _G.AutoReloadV2.Toggle(true)
    end
  end)
  observerOnline = false
  killAuraToggled = false
  shoveAuraToggled = false
  isDead = false
  killAuraConnection = nil
  shoveRadius = 8
  maxShovePerCycle = 30
  local r53_1 = {}
  local r54_1 = 0
  local r55_1 = 0.15
  local r56_1 = 0
  local r57_1 = 13
  local r58_1 = 1
  local r59_1 = 0.2
  local r60_1 = 0.2
  local r61_1 = true
  local r62_1 = tick()
  local r63_1 = 0.1
  local r64_1 = 1
  local r65_1 = 0
  local r66_1 = 1
  local r67_1 = 1
  (function()
    -- line: [0, 0] id: 203
    task.spawn(function()
      -- line: [0, 0] id: 204
      while task.wait(2) do
        pcall(function()
          -- line: [0, 0] id: 205
          r65_1 = r2_1.Network.ServerStatsItem["Data Ping"]:GetValue()
          if r65_1 > 200 then
            r66_1 = 1.3
            r60_1 = 0.3
            r64_1 = 1.5
          elseif r65_1 > 100 then
            r66_1 = 1.15
            r60_1 = 0.25
            r64_1 = 1.2
          else
            r66_1 = 1
            r60_1 = 0.2
            r64_1 = 1
          end
        end)
      end
    end)
  end)()
  local r69_1 = RaycastParams.new()
  r69_1.FilterDescendantsInstances = {
    r0_1.Character
  }
  r69_1.FilterType = Enum.RaycastFilterType.Exclude
  local r70_1 = OverlapParams.new()
  r70_1.FilterDescendantsInstances = {
    r0_1.Character
  }
  function r33_1()
    -- line: [0, 0] id: 136
    if not r0_1.Character then
      return nil
    end
    for r3_136, r4_136 in pairs(r0_1.Character:GetChildren()) do
      if r4_136:IsA("Tool") and (r4_136:FindFirstChild("RemoteEvent") or r4_136:FindFirstChild("Remote")) then
        return r4_136
      end
    end
    for r3_136, r4_136 in pairs(r0_1.Backpack:GetChildren()) do
      if r4_136:IsA("Tool") and r4_136.Parent == r0_1.Character and (r4_136:FindFirstChild("RemoteEvent") or r4_136:FindFirstChild("Remote")) then
        return r4_136
      end
    end
    return nil
  end
  function canWeaponShove(r0_129)
    -- line: [0, 0] id: 129
    if not r0_129 then
      return false
    end
    for r5_129, r6_129 in pairs({
      "Pickaxe",
      "Axe",
      "Carbine",
      "Navy Pistol",
      "Baguette"
    }) do
      if r0_129.Name:lower():find(r6_129:lower()) then
        return true
      end
    end
    if r0_129:GetAttribute("CanShove") == true then
      return true
    end
    return false
  end
  function batchShoveAttack(r0_121, r1_121)
    -- line: [0, 0] id: 121
    if not r0_121 or #r1_121 == 0 then
      return 
    end
    local r2_121 = tick()
    local r3_121 = r0_121:FindFirstChild("RemoteEvent") or r0_121:FindFirstChild("Remote")
    if not r3_121 then
      return 
    end
    local r4_121 = r0_121.Name:lower()
    for r8_121, r9_121 in ipairs(r1_121) do
      local r10_121 = r9_121.hit
      r53_1[tostring(r10_121)] = r2_121
      task.spawn(function()
        -- line: [0, 0] id: 122
        pcall(function()
          -- line: [0, 0] id: 123
          r3_121:FireServer("FeedbackStun", r10_121, r9_121.hitPart.Position)
          if r4_121:find("axe") then
            r3_121:FireServer("BraceBlock")
            r3_121:FireServer("StopBraceBlock")
            r3_121:FireServer("FeedbackStunObject", r10_121, r9_121.hitPart.Position)
          elseif r4_121:find("pickaxe") then
            r3_121:FireServer("Swing", "Shove")
            r3_121:FireServer("FeedbackStun", r10_121, r9_121.hitPart.Position)
          elseif r4_121:find("carbine") then
            r3_121:FireServer("Shove")
            r3_121:FireServer("FeedbackStun", r10_121, r9_121.hitPart.Position)
          elseif r4_121:find("navy pistol") then
            r3_121:FireServer("Shove")
          elseif r4_121:find("baguette") then
            r3_121:FireServer("FeedbackStun", r10_121, r9_121.hitPart.Position)
          end
          local r0_123 = game:GetService("ReplicatedStorage")
          if r0_123:FindFirstChild("Remotes") then
            local r1_123 = r0_123.Remotes
            if r1_123:FindFirstChild("Stun") then
              r1_123.Stun:FireServer(r10_121)
            end
            if r1_123:FindFirstChild("ZombieStun") then
              r1_123.ZombieStun:FireServer(r10_121)
            end
          end
        end)
      end)
      -- close: r10_121
      -- close: r8_121
    end
  end
  function getPredictedPosition(r0_26, r1_26, r2_26)
    -- line: [0, 0] id: 26
    if not r0_26 or not r1_26 then
      return r1_26
    end
    return r1_26 + r2_26 * r65_1 / 1000 * r66_1
  end
  function attackWithWeapon(r0_44, r1_44, r2_44, r3_44, r4_44)
    -- line: [0, 0] id: 44
    if not r0_44 then
      return 
    end
    local r5_44 = r0_44:FindFirstChild("RemoteEvent") or r0_44:FindFirstChild("Remote")
    if not r5_44 then
      return 
    end
    pcall(function()
      -- line: [0, 0] id: 46
      game:GetService("ReplicatedStorage").Remotes.Gib:FireServer(r1_44, "Head", r2_44.CFrame.Position, r4_44, true)
    end)
    local r6_44 = false
    pcall(function()
      -- line: [0, 0] id: 48
      r5_44:FireServer("Swing", "Thrust")
      r5_44:FireServer("HitZombie", r1_44, r2_44.CFrame.Position, true, r3_44 * 25, "Head", r4_44)
      r6_44 = true
    end)
    if not r6_44 then
      pcall(function()
        -- line: [0, 0] id: 45
        r5_44:FireServer("Bayonet_HitZombie", r1_44, r2_44.CFrame.Position, true, "Head")
        r6_44 = true
      end)
    end
    if not r6_44 then
      pcall(function()
        -- line: [0, 0] id: 47
        r5_44:FireServer("HitZombie", r1_44, r2_44.CFrame.Position, true, r3_44 * 25, "Head", r4_44)
      end)
    end
  end
  function detectEnemy(r0_72, r1_72)
    -- line: [0, 0] id: 72
    if killAuraConnection then
      killAuraConnection:Disconnect()
    end
    killAuraConnection = r1_1.Heartbeat:Connect(function()
      -- line: [0, 0] id: 73
      if not killAuraToggled and not shoveAuraToggled then
        isDead = false
        observerOnline = false
        r61_1 = true
        if killAuraConnection then
          killAuraConnection:Disconnect()
          killAuraConnection = nil
        end
        return 
      end
      if not r0_1.Character or not r0_1.Character:FindFirstChild("HumanoidRootPart") then
        return 
      end
      if not r0_72 or not r0_72.Parent then
        return 
      end
      local r0_73 = tick()
      if killAuraToggled then
        local r1_73 = r0_73 - r62_1
        if r63_1 + r64_1 < r1_73 then
          r62_1 = r0_73
          r61_1 = true
        elseif r63_1 < r1_73 then
          r61_1 = false
          return 
        end
      end
      local r1_73, r2_73 = pcall(function()
        -- line: [0, 0] id: 77
        return workspace:GetPartsInPart(r0_72, r70_1)
      end)
      if not r1_73 then
        return 
      end
      local r3_73 = {}
      local r4_73 = {}
      local r5_73 = r33_1()
      for r9_73, r10_73 in pairs(r2_73) do
        if r10_73.Parent and r10_73.Parent.Name == "m_Zombie" then
          local r11_73 = r10_73.Parent:FindFirstChild("Orig")
          if r11_73 and r11_73.Value then
            local r12_73 = r11_73.Value
            local r13_73 = r12_73:FindFirstChild("Zombie")
            local r14_73 = r12_73:FindFirstChild("Head")
            local r15_73 = r12_73:FindFirstChild("HumanoidRootPart")
            if r14_73 and r15_73 and r13_73 then
              local r18_73 = (getPredictedPosition(r12_73, r15_73.Position, (r15_73.AssemblyLinearVelocity or Vector3.new(0, 0, 0))) - r1_72.Position).Magnitude
              if shoveAuraToggled and r5_73 and canWeaponShove(r5_73) and r18_73 <= shoveRadius then
                local r19_73 = tostring(r12_73)
                if not r53_1[r19_73] or r55_1 <= r0_73 - r53_1[r19_73] then
                  local r20_73 = workspace:Raycast(r1_72.CFrame.Position, r14_73.CFrame.Position - r1_72.CFrame.Position, r69_1)
                  if r20_73 then
                    local r21_73 = table.insert
                    local r22_73 = r3_73
                    local r23_73 = {
                      hit = r12_73,
                      hitPart = r14_73,
                      zombie = r13_73,
                      raycast = r20_73,
                    }
                    local r24_73 = r13_73.WalkSpeed
                    if r24_73 > 16 then
                      r24_73 = 1 or 2
                    else
                      goto label_184	-- block#37 is visited secondly
                    end
                    r23_73.priority = r24_73
                    r23_73.distance = r18_73
                    r21_73(r22_73, r23_73)
                  end
                end
              end
              if killAuraToggled and r61_1 and r18_73 <= r57_1 then
                local r19_73 = tostring(r12_73)
                local r20_73 = false
                if shoveAuraToggled and r5_73 and canWeaponShove(r5_73) and r18_73 <= shoveRadius and (not r53_1[r19_73] or r55_1 <= r0_73 - r53_1[r19_73]) then
                  r20_73 = true
                end
                if not r20_73 then
                  local r21_73 = workspace:Raycast(r1_72.CFrame.Position, r14_73.CFrame.Position - r1_72.CFrame.Position, r69_1)
                  if r21_73 then
                    local r22_73 = r21_73.Position - r1_72.CFrame.Position
                    if r22_73:Dot(r22_73) > 1 then
                      r22_73 = r22_73.Unit
                    end
                    local r23_73 = table.insert
                    local r24_73 = r4_73
                    local r25_73 = {
                      hit = r12_73,
                      part = r10_73,
                      zombie = r13_73,
                      raycast = r21_73,
                      calc = r22_73,
                    }
                    local r26_73 = r13_73.WalkSpeed
                    if r26_73 > 16 then
                      r26_73 = 1 or 2
                    else
                      goto label_268	-- block#55 is visited secondly
                    end
                    r25_73.priority = r26_73
                    r25_73.distance = r18_73
                    r23_73(r24_73, r25_73)
                  end
                end
              end
            end
          end
        end
      end
      if 0 < #r3_73 and r5_73 and canWeaponShove(r5_73) and toolEquip then
        table.sort(r3_73, function(r0_74, r1_74)
          -- line: [0, 0] id: 74
          if r0_74.priority ~= r1_74.priority then
            return r0_74.priority < r1_74.priority
          end
          return r0_74.distance < r1_74.distance
        end)
        local r6_73 = math.min(#r3_73, maxShovePerCycle)
        local r7_73 = {}
        for r11_73 = 1, r6_73, 1 do
          table.insert(r7_73, r3_73[r11_73])
        end
        batchShoveAttack(r5_73, r7_73)
        r54_1 = r0_73
        return 
      end
      if 0 < #r4_73 and r5_73 and toolEquip and r61_1 then
        if r0_73 - r56_1 < r59_1 * r67_1 then
          return 
        end
        table.sort(r4_73, function(r0_75, r1_75)
          -- line: [0, 0] id: 75
          if r0_75.priority ~= r1_75.priority then
            return r0_75.priority < r1_75.priority
          end
          return r0_75.distance < r1_75.distance
        end)
        local r7_73 = math.min(#r4_73, r58_1)
        for r11_73 = 1, r7_73, 1 do
          local r12_73 = r4_73[r11_73]
          task.spawn(function()
            -- line: [0, 0] id: 76
            if r12_73.zombie.WalkSpeed > 16 then
              attackWithWeapon(r5_73, r12_73.hit, r12_73.hit.Head, r12_73.calc, r12_73.raycast.Normal)
            elseif not r12_73.part.Parent:FindFirstChild("Barrel") then
              attackWithWeapon(r5_73, r12_73.hit, r12_73.hit.Head, r12_73.calc, r12_73.raycast.Normal)
            end
          end)
          if r11_73 < r7_73 then
            task.wait(r60_1 * r67_1)
          end
          -- close: r12_73
        end
        r56_1 = r0_73
      end
    end)
  end
  function startAutoFace()
    -- line: [0, 0] id: 155
    if autoFaceConnection then
      return 
    end
    autoFaceConnection = r1_1.RenderStepped:Connect(function(r0_156)
      -- line: [0, 0] id: 156
      if not killAuraToggled and not shoveAuraToggled and not bayonetKillAuraToggled or not autoFaceToggled then
        return 
      end
      local r1_156 = r0_1.Character:FindFirstChild("HumanoidRootPart")
      if not r1_156 then
        return 
      end
      local r2_156 = math.max
      local r3_156 = killAuraToggled
      if r3_156 then
        r3_156 = r57_1 or 0
      else
        goto label_29	-- block#9 is visited secondly
      end
      local r4_156 = shoveAuraToggled
      if r4_156 then
        r4_156 = shoveRadius or 0
      else
        goto label_36	-- block#12 is visited secondly
      end
      local r5_156 = bayonetKillAuraToggled
      if r5_156 then
        r5_156 = bayonetKillAuraRadius or 0
      else
        goto label_43	-- block#15 is visited secondly
      end
      r2_156 = r2_156(r3_156, r4_156, r5_156)
      if r2_156 == 0 then
        return 
      end
      r3_156 = math.huge
      r4_156 = nil
      for r8_156, r9_156 in pairs(workspace.Zombies:GetChildren()) do
        local r10_156 = r9_156:FindFirstChild("HumanoidRootPart")
        if r10_156 then
          local r11_156 = (r10_156.Position - r1_156.Position).Magnitude
          if r11_156 < r3_156 and r11_156 <= r2_156 then
            r3_156 = r11_156
            r4_156 = r10_156
          end
        end
      end
      for r8_156, r9_156 in pairs(workspace.Camera:GetChildren()) do
        if r9_156.Name == "m_Zombie" then
          local r10_156 = r9_156:FindFirstChild("Orig")
          if r10_156 and r10_156.Value then
            local r11_156 = r10_156.Value:FindFirstChild("HumanoidRootPart")
            if r11_156 then
              local r12_156 = (r11_156.Position - r1_156.Position).Magnitude
              if r12_156 < r3_156 and r12_156 <= r2_156 then
                r3_156 = r12_156
                r4_156 = r11_156
              end
            end
          end
        end
      end
      if r4_156 then
        r8_1(r1_156, r4_156.Position, r0_156)
      end
    end)
  end
  function stopAutoFace()
    -- line: [0, 0] id: 40
    if autoFaceConnection then
      autoFaceConnection:Disconnect()
      autoFaceConnection = nil
    end
  end
  function setShoveRadius(r0_60)
    -- line: [0, 0] id: 60
    shoveRadius = r0_60
    if (killAuraToggled or shoveAuraToggled) and r0_1.Character and r0_1.Character:FindFirstChild("HumanoidRootPart") then
      observerOnline = false
      if killAuraConnection then
        killAuraConnection:Disconnect()
        killAuraConnection = nil
      end
      local r1_60 = r0_1.Character.HumanoidRootPart:FindFirstChild("Hitbox")
      if r1_60 then
        r1_60:Destroy()
      end
      task.wait(0.1)
      createHitBox()
    end
  end
  function setMaxShovePerCycle(r0_52)
    -- line: [0, 0] id: 52
    maxShovePerCycle = r0_52
  end
  function setMaxKillPerCycle(r0_175)
    -- line: [0, 0] id: 175
    r58_1 = r0_175
  end
  function createHitBox()
    -- line: [0, 0] id: 202
    if not r0_1.Character or not r0_1.Character:FindFirstChild("HumanoidRootPart") then
      return false
    end
    local r0_202 = r0_1.Character.HumanoidRootPart
    local r1_202 = r0_202:FindFirstChild("Hitbox")
    local r2_202 = nil
    local r3_202 = nil
    if shoveAuraToggled and not killAuraToggled then
      r2_202 = Vector3.new(shoveRadius * 2, 6, shoveRadius * 2)
      r3_202 = CFrame.new(0, 0, -shoveRadius * 0.6)
    elseif killAuraToggled and not shoveAuraToggled then
      r2_202 = Vector3.new(r57_1 * 2, 7, r57_1 * 2)
      r3_202 = CFrame.new(0, 0, -r57_1 * 0.6)
    else
      local r4_202 = math.max(shoveRadius, r57_1)
      r2_202 = Vector3.new(r4_202 * 2, 7, r4_202 * 2)
      r3_202 = CFrame.new(0, 0, -r4_202 * 0.6)
    end
    if r1_202 then
      r1_202.Size = r2_202
      r1_202.CFrame = r0_202.CFrame * r3_202
      if not observerOnline then
        observerOnline = true
        detectEnemy(r1_202, r0_202)
      end
      return true
    end
    local r4_202 = Instance.new("Part")
    r4_202.Name = "Hitbox"
    r4_202.Parent = r0_202
    r4_202.Anchored = false
    r4_202.Massless = true
    r4_202.CanCollide = false
    r4_202.CanTouch = false
    r4_202.Transparency = 1
    r4_202.Size = r2_202
    r4_202.CFrame = r0_202.CFrame * r3_202
    local r5_202 = Instance.new("WeldConstraint")
    r5_202.Parent = r0_202
    r5_202.Part0 = r4_202
    r5_202.Part1 = r0_202
    if not observerOnline then
      observerOnline = true
      detectEnemy(r4_202, r0_202)
    end
    return true
  end
  task.spawn(function()
    -- line: [0, 0] id: 36
    -- notice: unreachable block#5
    while true do
      task.wait(3)
      local r0_36 = tick()
      for r4_36, r5_36 in pairs(r53_1) do
        if r0_36 - r5_36 > 5 then
          r53_1[r4_36] = nil
        end
      end
    end
  end)
  bayonetKillAuraToggled = false
  bayonetKillAuraConnection = nil
  bayonetKillAuraRadius = 13
  lastBayonetAttack = 0
  bayonetAttackCooldown = 0.05
  maxBayonetPerCycle = 5
  local r71_1 = {}
  local function r72_1()
    -- line: [0, 0] id: 11
    if not r0_1.Character then
      return nil
    end
    for r3_11, r4_11 in pairs(r0_1.Character:GetChildren()) do
      if r4_11:IsA("Tool") and r4_11:FindFirstChild("Configuration") and r4_11.Configuration:GetAttribute("HasBayonet") and (r4_11:FindFirstChild("RemoteEvent") or r4_11:FindFirstChild("Remote")) then
        return r4_11
      end
    end
    return nil
  end
  local function r73_1(r0_172)
    -- line: [0, 0] id: 172
    local r1_172 = r0_172:FindFirstChild("Orig")
    if not r1_172 or not r1_172.Value then
      return nil
    end
    local r2_172 = r1_172.Value
    if r2_172 and r2_172.Parent == workspace.Zombies then
      return r2_172
    end
    return nil
  end
  local function r74_1(r0_110, r1_110, r2_110, r3_110)
    -- line: [0, 0] id: 110
    if not r0_110 or not r1_110 or not r2_110 then
      return 
    end
    local r4_110 = r0_110:FindFirstChild("RemoteEvent") or r0_110:FindFirstChild("Remote")
    if not r4_110 then
      return 
    end
    pcall(function()
      -- line: [0, 0] id: 111
      r4_110:FireServer("ThrustBayonet")
      r4_110:FireServer("Bayonet_HitZombie", r1_110, r2_110, true, "Head")
      local r0_111 = tick()
      local r1_111 = r3_110 * 10
      r1_110:SetAttribute("WepHitID", r0_111)
      r1_110:SetAttribute("WepHitDirection", r1_111)
      r1_110:SetAttribute("WepHitPos", r2_110)
      task.delay(0.2, function()
        -- line: [0, 0] id: 112
        if r1_110:GetAttribute("WepHitID") == r0_111 then
          r1_110:SetAttribute("WepHitDirection", nil)
          r1_110:SetAttribute("WepHitPos", nil)
          r1_110:SetAttribute("WepHitID", nil)
        end
      end)
      local r2_111 = game:GetService("ReplicatedStorage").Remotes:FindFirstChild("Gib")
      if r2_111 then
        r2_111:FireServer(r1_110, "Head", r2_110, r3_110.Unit, true)
      end
    end)
  end
  local function r75_1()
    -- line: [0, 0] id: 208
    if not r0_1.Character or not r0_1.Character:FindFirstChild("HumanoidRootPart") then
      return nil
    end
    local r0_208 = r0_1.Character.HumanoidRootPart
    local r1_208 = r0_208:FindFirstChild("BayonetHitbox")
    if r1_208 then
      r1_208.Size = Vector3.new(bayonetKillAuraRadius * 2, 7, bayonetKillAuraRadius * 2)
      r1_208.CFrame = r0_208.CFrame * CFrame.new(0, 0, -bayonetKillAuraRadius * 0.6)
      return r1_208
    end
    local r2_208 = Instance.new("Part")
    r2_208.Name = "BayonetHitbox"
    r2_208.Parent = r0_208
    r2_208.Anchored = false
    r2_208.Massless = true
    r2_208.CanCollide = false
    r2_208.CanTouch = false
    r2_208.Transparency = 1
    r2_208.Size = Vector3.new(bayonetKillAuraRadius * 2, 7, bayonetKillAuraRadius * 2)
    r2_208.CFrame = r0_208.CFrame * CFrame.new(0, 0, -bayonetKillAuraRadius * 0.6)
    local r3_208 = Instance.new("WeldConstraint")
    r3_208.Parent = r0_208
    r3_208.Part0 = r2_208
    r3_208.Part1 = r0_208
    return r2_208
  end
  local function r76_1()
    -- line: [0, 0] id: 101
    if bayonetKillAuraConnection then
      bayonetKillAuraConnection:Disconnect()
    end
    local r0_101 = r75_1()
    if not r0_101 then
      return 
    end
    local r1_101 = OverlapParams.new()
    r1_101.FilterDescendantsInstances = {
      r0_1.Character
    }
    bayonetKillAuraConnection = r1_1.Heartbeat:Connect(function()
      -- line: [0, 0] id: 102
      if not bayonetKillAuraToggled then
        if bayonetKillAuraConnection then
          bayonetKillAuraConnection:Disconnect()
          bayonetKillAuraConnection = nil
        end
        if r0_101 and r0_101.Parent then
          r0_101:Destroy()
        end
        return 
      end
      if not r0_1.Character or not r0_1.Character:FindFirstChild("HumanoidRootPart") then
        return 
      end
      if not r0_101 or not r0_101.Parent then
        r0_101 = r75_1()
        if not r0_101 then
          return 
        end
      end
      local r0_102 = tick()
      if r0_102 - lastBayonetAttack < bayonetAttackCooldown then
        return 
      end
      local r1_102 = r72_1()
      if not r1_102 or not toolEquip then
        return 
      end
      local r2_102 = r0_1.Character.HumanoidRootPart
      local r3_102 = {}
      local r4_102, r5_102 = pcall(function()
        -- line: [0, 0] id: 104
        return workspace:GetPartsInPart(r0_101, r1_101)
      end)
      if not r4_102 then
        return 
      end
      for r9_102, r10_102 in pairs(r5_102) do
        if r10_102.Parent and r10_102.Parent.Name == "m_Zombie" then
          local r11_102 = r73_1(r10_102.Parent)
          if r11_102 then
            local r12_102 = r11_102:FindFirstChild("Zombie")
            local r13_102 = r11_102:FindFirstChild("Head")
            local r14_102 = r11_102:FindFirstChild("HumanoidRootPart")
            if r12_102 and r13_102 and r14_102 then
              local r17_102 = (r14_102.Position + (r14_102.AssemblyLinearVelocity or Vector3.new(0, 0, 0)) * 0.13 - r2_102.Position).Magnitude
              if r17_102 <= bayonetKillAuraRadius then
                local r18_102 = tostring(r11_102)
                if not r71_1[r18_102] or 1 <= r0_102 - r71_1[r18_102] then
                  local r19_102 = RaycastParams.new()
                  r19_102.FilterDescendantsInstances = {
                    r0_1.Character
                  }
                  r19_102.FilterType = Enum.RaycastFilterType.Exclude
                  local r20_102 = workspace:Raycast(r2_102.Position, r13_102.Position - r2_102.Position, r19_102)
                  if r20_102 and r20_102.Instance:IsDescendantOf(r11_102) then
                    local r21_102 = (r13_102.Position - r2_102.Position).Unit
                    local r22_102 = table.insert
                    local r23_102 = r3_102
                    local r24_102 = {
                      agent = r11_102,
                      head = r13_102,
                      distance = r17_102,
                    }
                    local r25_102 = r12_102.WalkSpeed
                    if r25_102 > 16 then
                      r25_102 = 1 or 2
                    else
                      goto label_182	-- block#37 is visited secondly
                    end
                    r24_102.priority = r25_102
                    r24_102.zombieId = r18_102
                    r24_102.direction = r21_102
                    r24_102.hitPosition = r13_102.Position
                    r22_102(r23_102, r24_102)
                  end
                end
              end
            end
          end
        end
      end
      if #r3_102 > 0 then
        table.sort(r3_102, function(r0_103, r1_103)
          -- line: [0, 0] id: 103
          if r0_103.priority ~= r1_103.priority then
            return r0_103.priority < r1_103.priority
          end
          return r0_103.distance < r1_103.distance
        end)
        local r6_102 = r3_102[1]
        r74_1(r1_102, r6_102.agent, r6_102.hitPosition, r6_102.direction)
        r71_1[r6_102.zombieId] = r0_102
        lastBayonetAttack = r0_102
      end
    end)
  end
  local function r77_1(r0_49)
    -- line: [0, 0] id: 49
    bayonetKillAuraToggled = r0_49
    if r0_49 then
      r76_1()
      if autoFaceToggled then
        stopAutoFace()
        startAutoFace()
      end
    else
      if bayonetKillAuraConnection then
        bayonetKillAuraConnection:Disconnect()
        bayonetKillAuraConnection = nil
      end
      if r0_1.Character and r0_1.Character:FindFirstChild("HumanoidRootPart") then
        local r1_49 = r0_1.Character.HumanoidRootPart:FindFirstChild("BayonetHitbox")
        if r1_49 then
          r1_49:Destroy()
        end
      end
      r71_1 = {}
    end
  end
  task.spawn(function()
    -- line: [0, 0] id: 42
    -- notice: unreachable block#5
    while true do
      task.wait(5)
      local r0_42 = tick()
      for r4_42, r5_42 in pairs(r71_1) do
        if r0_42 - r5_42 > 10 then
          r71_1[r4_42] = nil
        end
      end
    end
  end)
  function onLights()
    -- line: [0, 0] id: 137
    local r0_137 = workspace:FindFirstChild("Saint Petersburg")
    if not r0_137 then
      return 
    end
    local r1_137 = r0_137:FindFirstChild("Modes")
    if not r1_137 then
      return 
    end
    local r2_137 = r1_137:FindFirstChild("Holdout")
    if not r2_137 then
      return 
    end
    local r3_137 = r2_137:FindFirstChild("LampPosts")
    if not r3_137 then
      return 
    end
    for r7_137, r8_137 in pairs(r3_137:GetChildren()) do
      local r9_137 = r8_137:FindFirstChild("Metal")
      if r9_137 and r9_137:FindFirstChild("Light") then
        r9_137.Light.PointLight.Enabled = true
        r9_137.Light.Visible = true
      end
    end
  end
  local r78_1 = nil
  local function r79_1(r0_163, r1_163)
    -- line: [0, 0] id: 163
    local r2_163 = r0_1.Character
    if r2_163 and r2_163:FindFirstChild("Humanoid") then
      r2_163.Humanoid.WalkSpeed = r0_163
      if r1_163 then
        if r78_1 then
          r78_1:Disconnect()
        end
        r78_1 = r2_163.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
          -- line: [0, 0] id: 164
          r2_163.Humanoid.WalkSpeed = r0_163
        end)
      elseif r78_1 then
        r78_1:Disconnect()
        r78_1 = nil
      end
    end
  end
  walkSpeedToggled = false
  walkSpeedValue = 16
  workspace.Players.ChildAdded:Connect(function(r0_68)
    -- line: [0, 0] id: 68
    r79_1(walkSpeedValue, walkSpeedToggled)
  end)
  autoplay = false
  local r80_1 = nil
  local r81_1 = 0
  local r82_1 = 0.5
  local r83_1 = nil
  local r84_1 = nil
  local r85_1 = {}
  local r86_1 = {}
  local r87_1 = nil
  r87_1 = hookmetamethod(game, "__namecall", function(r0_69, ...)
    -- line: [0, 0] id: 69
    local r2_69 = {
      ...
    }
    local r3_69 = getnamecallmethod():lower()
    if not checkcaller() and r0_69.Name == "RemoteEvent" and r3_69 == "fireserver" and autoplay then
      if r2_69[1] ~= nil and r2_69[1] == "UpdateAccuracy" then
        r2_69[2] = 100
        print("[DEBUG] AutoPlay Working!")
        return r87_1(r0_69, unpack(r2_69))
      end
      return r87_1(r0_69, unpack(r2_69))
    end
    return r87_1(r0_69, ...)
  end)
  local function r88_1(r0_195)
    -- line: [0, 0] id: 195
    local r1_195 = nil	-- notice: implicit variable refs by block#[6]
    if r0_195 then
      r1_195 = Color3.fromRGB(255, 255, 255)
      if not r1_195 then
        ::label_10::
        r1_195 = nil
      end
    else
      goto label_10	-- block#2 is visited secondly
    end
    local r2_195 = nil	-- notice: implicit variable refs by block#[6]
    if r0_195 then
      r2_195 = 0
      if not r2_195 then
        ::label_16::
        r2_195 = nil
      end
    else
      goto label_16	-- block#5 is visited secondly
    end
    pcall(function()
      -- line: [0, 0] id: 196
      local r0_196 = r0_1:WaitForChild("PlayerGui")
      local r1_196 = r0_196:FindFirstChild("FifeGui") or game:GetService("ReplicatedStorage").Modules.Weapons:FindFirstChild("Fife"):FindFirstChild("FifeGui")
      if r1_196 then
        local r2_196 = r1_196:FindFirstChild("Root")
        if r2_196 then
          local r3_196 = r2_196:FindFirstChild("BG")
          if r3_196 then
            if r0_195 and not r86_1.fife then
              r86_1.fife = {
                r3_196.BackgroundColor3,
                r3_196.BackgroundTransparency
              }
            end
            if r0_195 then
              r3_196.BackgroundColor3 = r1_195
              r3_196.BackgroundTransparency = r2_195
            elseif r86_1.fife then
              r3_196.BackgroundColor3 = r86_1.fife[1]
              r3_196.BackgroundTransparency = r86_1.fife[2]
            end
          end
        end
      end
      local r2_196 = r0_196:FindFirstChild("DrumGui") or game:GetService("ReplicatedStorage").Modules.Weapons:FindFirstChild("Drums"):FindFirstChild("DrumGui")
      if r2_196 then
        local r3_196 = r2_196:FindFirstChild("Root")
        if r3_196 then
          local r4_196 = r3_196:FindFirstChild("BG")
          if r4_196 then
            if r0_195 and not r86_1.drum then
              r86_1.drum = {
                r4_196.BackgroundColor3,
                r4_196.BackgroundTransparency
              }
            end
            if r0_195 then
              r4_196.BackgroundColor3 = r1_195
              r4_196.BackgroundTransparency = r2_195
            elseif r86_1.drum then
              r4_196.BackgroundColor3 = r86_1.drum[1]
              r4_196.BackgroundTransparency = r86_1.drum[2]
            end
          end
        end
      end
      local r3_196 = r0_196:FindFirstChild("BagpipesGui") or game:GetService("ReplicatedStorage").Modules.Weapons:FindFirstChild("Bagpipes"):FindFirstChild("BagpipesGui")
      if r3_196 then
        local r4_196 = r3_196:FindFirstChild("Root")
        if r4_196 then
          local r5_196 = r4_196:FindFirstChild("BG")
          if r5_196 then
            if r0_195 and not r86_1.bagpipe then
              r86_1.bagpipe = {
                r5_196.BackgroundColor3,
                r5_196.BackgroundTransparency
              }
            end
            if r0_195 then
              r5_196.BackgroundColor3 = r1_195
              r5_196.BackgroundTransparency = r2_195
            elseif r86_1.bagpipe then
              r5_196.BackgroundColor3 = r86_1.bagpipe[1]
              r5_196.BackgroundTransparency = r86_1.bagpipe[2]
            end
          end
        end
      end
    end)
  end
  local function r89_1()
    -- line: [0, 0] id: 70
    if not autoplay then
      return 
    end
    if not r0_1.Character then
      return 
    end
    pcall(function()
      -- line: [0, 0] id: 71
      for r3_71, r4_71 in pairs(r0_1.Character:GetChildren()) do
        if r4_71:IsA("Tool") and (r4_71.Name:find("Fife") or r4_71.Name:find("Drum") or r4_71.Name:find("Bagpipe")) then
          local r5_71 = r4_71:FindFirstChild("RemoteEvent")
          if r5_71 then
            local r6_71 = r4_71:FindFirstChild("Model") and r4_71.Model:FindFirstChild("Handle") and r4_71.Model.Handle:FindFirstChild("SoundSource")
            if r6_71 and not r6_71.IsPlaying then
              r5_71:FireServer("Play", "La Marseillaise")
              task.wait(0.5)
            end
          end
        end
      end
    end)
  end
  local function r90_1()
    -- line: [0, 0] id: 63
    if not autoplay then
      return 
    end
    if not r0_1.Character then
      return 
    end
    pcall(function()
      -- line: [0, 0] id: 64
      for r3_64, r4_64 in pairs(r0_1.Character:GetChildren()) do
        if r4_64:IsA("Tool") and (r4_64.Name:find("Fife") or r4_64.Name:find("Drum") or r4_64.Name:find("Bagpipe")) then
          local r5_64 = r4_64:FindFirstChild("RemoteEvent")
          if r5_64 then
            r5_64:FireServer("UpdateAccuracy", 100)
            break
          end
        end
      end
    end)
  end
  local function r91_1()
    -- line: [0, 0] id: 131
    if r80_1 then
      r80_1:Disconnect()
    end
    if r83_1 then
      task.cancel(r83_1)
    end
    if r84_1 then
      r84_1:Disconnect()
    end
    r81_1 = 0
    r88_1(true)
    r83_1 = task.spawn(function()
      -- line: [0, 0] id: 133
      while autoplay do
        r89_1()
        task.wait(2)
      end
    end)
    r80_1 = r1_1.Heartbeat:Connect(function(r0_132)
      -- line: [0, 0] id: 132
      if not autoplay then
        if r80_1 then
          r80_1:Disconnect()
          r80_1 = nil
        end
        if r83_1 then
          task.cancel(r83_1)
          r83_1 = nil
        end
        r88_1(false)
        return 
      end
      r81_1 = r81_1 - r0_132
      if r81_1 <= 0 then
        r81_1 = r82_1
        r90_1()
      end
    end)
    local r0_131 = 0
    r84_1 = r1_1.Heartbeat:Connect(function(r0_134, r1_134)
      -- line: [0, 0] id: 134
      if autoplay and 0.5 <= r0_134 - r0_131 then
        r88_1(true)
        r0_131 = r0_134
      end
    end)
  end
  r0_1.CharacterAdded:Connect(function(r0_198)
    -- line: [0, 0] id: 198
    r0_198.ChildAdded:Connect(function(r0_199)
      -- line: [0, 0] id: 199
      if r0_199:IsA("Tool") and (r0_199.Name:find("Fife") or r0_199.Name:find("Drum") or r0_199.Name:find("Bagpipe")) then
        if r85_1[r0_199] then
          r85_1[r0_199]:Disconnect()
        end
        r85_1[r0_199] = r0_199.Equipped:Connect(function()
          -- line: [0, 0] id: 200
          if autoplay then
            task.wait(0.5)
            r88_1(true)
          end
        end)
      end
    end)
    r0_198.ChildRemoved:Connect(function(r0_201)
      -- line: [0, 0] id: 201
      if r85_1[r0_201] then
        r85_1[r0_201]:Disconnect()
        r85_1[r0_201] = nil
      end
    end)
  end)
  local r92_1, r93_1 = pcall(require, game:GetService("ReplicatedStorage").Modules.Weapons:FindFirstChild("Flintlock"))
  local r94_1 = nil	-- notice: implicit variable refs by block#[3]
  local r95_1 = nil	-- notice: implicit variable refs by block#[3, 5]
  local r96_1 = nil	-- notice: implicit variable refs by block#[6]
  if not r92_1 then
    warn("Flintlock module not found!")
  else
    r94_1 = r93_1.BayonetHitCheck
    r95_1 = {}
    r95_1.__index = r95_1
    function r95_1.BayonetHitCheck(r0_161, r1_161, r2_161, r3_161, r4_161)
      -- line: [0, 0] id: 161
      local r5_161 = workspace:Raycast(r1_161, r2_161, r3_161)
      if r5_161 then
        local r10_161 = nil	-- notice: implicit variable refs by block#[16, 20, 21]
        local r11_161 = nil	-- notice: implicit variable refs by block#[16, 21]
        if r5_161.Instance.Parent.Name == "m_Zombie" then
          local r6_161 = r3_161.FilterDescendantsInstances
          table.insert(r6_161, r5_161.Instance)
          r3_161.FilterDescendantsInstances = r6_161
          local r8_161 = r5_161.Instance.Parent:FindFirstChild("Orig")
          if r8_161 then
            local r9_161 = nil
            r10_161 = pairs
            r11_161 = r5_161.Instance.Parent
            for r13_161, r14_161 in r10_161(r11_161:GetChildren()) do
              if r14_161.Name == "Head" and (r14_161.ClassName == "Part" or r14_161.ClassName == "MeshPart") then
                r9_161 = r14_161
                break
              end
            end
            if r9_161 then
              r0_161.remoteEvent:FireServer("Bayonet_HitZombie", r8_161.Value, r9_161.CFrame.Position, true, "Head")
              r10_161 = r8_161.Value
              r11_161 = tick()
              r10_161:SetAttribute("WepHitID", tick())
              r10_161:SetAttribute("WepHitDirection", r2_161 * 10)
              r10_161:SetAttribute("WepHitPos", r5_161.Position)
              task.delay(0.2, function()
                -- line: [0, 0] id: 162
                if r10_161:GetAttribute("WepHitID") == r11_161 then
                  r10_161:SetAttribute("WepHitDirection", nil)
                  r10_161:SetAttribute("WepHitPos", nil)
                  r10_161:SetAttribute("WepHitID", nil)
                end
              end)
              -- close: r10_161
            end
          end
          return 1
        end
        local r6_161 = r5_161.Instance.Parent:FindFirstChild("DoorHit") or r5_161.Instance:FindFirstChild("BreakGlass")
        if r6_161 and not table.find(r4_161, r6_161) then
          table.insert(r4_161, r6_161)
          r10_161 = r5_161.Instance
          r11_161 = r5_161.Position
          r0_161.remoteEvent:FireServer("Bayonet_HitCon", r10_161, r11_161, r5_161.Normal, r5_161.Material)
          return 2
        end
        local r7_161 = r5_161.Instance.Parent:FindFirstChild("Humanoid") or r5_161.Instance.Parent.Parent:FindFirstChild("Humanoid")
        if r7_161 then
          r10_161 = r7_161
          if not table.find(r4_161, r10_161) then
            r10_161 = r7_161
            table.insert(r4_161, r10_161)
            r10_161 = "Bayonet_HitPlayer"
            r11_161 = r7_161
            r0_161.remoteEvent:FireServer(r10_161, r11_161, r5_161.Position)
            return 2
          end
        end
      end
      return 0
    end
    function r96_1(r0_187)
      -- line: [0, 0] id: 187
      local r1_187 = r93_1
      local r2_187 = nil	-- notice: implicit variable refs by block#[3]
      if r0_187 then
        r2_187 = r95_1.BayonetHitCheck
        if not r2_187 then
          ::label_7::
          r2_187 = r94_1
        end
      else
        goto label_7	-- block#2 is visited secondly
      end
      r1_187.BayonetHitCheck = r2_187
    end
    changeBayonet = r96_1
    -- close: r94_1
  end
  r94_1 = pcall
  r95_1 = require
  local r94_1, r95_1 = r94_1(r95_1, game:GetService("ReplicatedStorage").Modules.Weapons:FindFirstChild("MeleeBase"))
  local r97_1 = nil	-- notice: implicit variable refs by block#[6, 12]
  local r98_1 = nil	-- notice: implicit variable refs by block#[6]
  local r99_1 = nil	-- notice: implicit variable refs by block#[6]
  local r101_1 = nil	-- notice: implicit variable refs by block#[6]
  local r102_1 = nil	-- notice: implicit variable refs by block#[6]
  local r104_1 = nil	-- notice: implicit variable refs by block#[12]
  if not r94_1 then
    warn("MeleeBase module not found!")
  else
    r96_1 = r95_1.MeleeHitCheck
    r97_1 = {}
    r97_1.__index = r97_1
    r98_1 = game:GetService("CollectionService")
    r99_1 = require(game.ReplicatedStorage:WaitForChild("Modules"):WaitForChild("RbxUtil"):WaitForChild("DebugVisualizer"))
    local r100_1 = game.Players.LocalPlayer:WaitForChild("Options")
    r101_1 = r100_1:WaitForChild("Gore")
    r102_1 = r100_1:WaitForChild("WeaponStains")
    r104_1 = game.ReplicatedStorage:WaitForChild("GameStates"):WaitForChild("Gameplay"):WaitForChild("PVP")
    function r97_1.MeleeHitCheck(r0_147, r1_147, r2_147, r3_147, r4_147, r5_147)
      -- line: [0, 0] id: 147
      local r6_147 = workspace:Raycast(r1_147, r2_147, r3_147)
      local r11_147 = nil	-- notice: implicit variable refs by block#[33, 36, 43, 47, 48, 49, 50, 51, 53, 54, 57, 58, 59, 60, 61, 62, 64, 67, 69, 70, 71]
      local r14_147 = nil	-- notice: implicit variable refs by block#[43, 48, 62, 65, 69, 70, 71]
      if r6_147 then
        if r6_147.Instance.Parent.Name == "m_Zombie" then
          local r7_147 = r3_147.FilterDescendantsInstances
          table.insert(r7_147, r6_147.Instance)
          r3_147.FilterDescendantsInstances = r7_147
          local r9_147 = r6_147.Instance.Parent:FindFirstChild("Orig")
          if r9_147 then
            if r0_147.sharp and shared.Gib ~= nil then
              if r9_147.Value then
                local r10_147 = r9_147.Value:FindFirstChild("Zombie")
                r11_147 = r0_147.Stats.HeadshotMulti
                if not r11_147 then
                  r11_147 = 2.3 or r0_147.Stats.HeadshotMulti
                else
                  goto label_49	-- block#8 is visited secondly
                end
                if r10_147 and r10_147.Health - r0_147.Stats.Damage * r11_147 <= 0 then
                  shared.Gib(r9_147.Value, r6_147.Instance.Name, r6_147.Position, r6_147.Normal, true)
                end
              else
                shared.Gib(r9_147.Value, r6_147.Instance.Name, r6_147.Position, r6_147.Normal, true)
              end
            end
            if r4_147[r9_147] then
              local r10_147 = r4_147[r9_147]
              r11_147 = r0_147.Stats.MaxHits or 3
              if r10_147 < r11_147 then
                ::label_90::
                if r5_147 then
                  r0_147.remoteEvent:FireServer("ThrustCharge", r9_147.Value, r6_147.Position, r6_147.Normal)
                else
                  r10_147 = nil
                  r11_147 = pairs
                  for r14_147, r15_147 in r11_147(r6_147.Instance.Parent:GetChildren()) do
                    if r15_147.Name == "Head" and (r15_147.ClassName == "Part" or r15_147.ClassName == "MeshPart") then
                      r10_147 = r15_147
                      break
                    end
                  end
                  if r10_147 then
                    r11_147 = r9_147.Value
                    local r12_147 = r10_147.CFrame.Position - r1_147
                    if r12_147:Dot(r12_147) > 1 then
                      r12_147 = r12_147.Unit
                    end
                    local r13_147 = r12_147 * 25
                    r0_147.remoteEvent:FireServer("HitZombie", r11_147, r10_147.CFrame.Position, true, r13_147, "Head", r6_147.Normal)
                    r14_147 = r11_147:GetAttribute("WepHitDirection")
                    if not r14_147 then
                      r14_147 = tick()
                      r11_147:SetAttribute("WepHitID", tick())
                      r11_147:SetAttribute("WepHitDirection", r13_147)
                      r11_147:SetAttribute("WepHitPos", r6_147.Position)
                      task.delay(0.2, function()
                        -- line: [0, 0] id: 148
                        if r11_147:GetAttribute("WepHitID") == r14_147 then
                          r11_147:SetAttribute("WepHitDirection", nil)
                          r11_147:SetAttribute("WepHitPos", nil)
                          r11_147:SetAttribute("WepHitID", nil)
                        end
                      end)
                      -- close: r14_147
                    end
                    r14_147 = r99_1
                    r14_147:CastSphere("MeleeHitValid", CFrame.new(r1_147), Color3.fromRGB(0, 255, 0))
                    r14_147 = r99_1
                    r14_147:CastSphere("PartPosition", CFrame.new(r6_147.Position), Color3.fromRGB(255, 85, 0))
                    r14_147 = r99_1
                    r14_147:CastLine("MeleeHit", CFrame.new(r1_147, (r1_147 + r2_147)) * CFrame.new(0, 0, -r2_147.Magnitude / 2), Color3.fromRGB(0, 255, 0), r2_147.Magnitude / 1)
                    -- close: r11_147
                  end
                end
                if r4_147[r9_147] then
                  r4_147[r9_147] = r4_147[r9_147] + 1
                else
                  r11_147 = r4_147
                  table.insert(r11_147, r9_147)
                  r4_147[r9_147] = 1
                  if r101_1.Value and r102_1.Value and r0_147.player:GetAttribute("Platform") ~= "Console" then
                    r11_147 = math
                    r11_147 = r11_147.min
                    r11_147 = r11_147(r0_147.bloodSaturation + 0.1, 1)
                    r0_147.bloodSaturation = r11_147
                  end
                end
              end
            else
              goto label_90	-- block#17 is visited secondly
            end
          end
          return 1
        end
        if not r5_147 then
          local r7_147 = r6_147.Instance.Parent:FindFirstChild("DoorHit") or r6_147.Instance:FindFirstChild("BreakGlass")
          if r7_147 and not table.find(r4_147, r7_147) then
            table.insert(r4_147, r7_147)
            r11_147 = r6_147.Instance
            r0_147.remoteEvent:FireServer("HitCon", r11_147)
            r11_147 = CFrame
            r11_147 = r11_147.new
            r11_147 = r11_147(r1_147)
            r14_147 = 255
            r99_1:CastSphere("MeleeHitValid", r11_147, Color3.fromRGB(0, r14_147, 0))
            r11_147 = CFrame
            r11_147 = r11_147.new
            r11_147 = r11_147(r1_147, r1_147 + r2_147)
            r14_147 = 0
            r11_147 = r11_147 * CFrame.new(0, r14_147, -r2_147.Magnitude / 2)
            r14_147 = 255
            r99_1:CastLine("MeleeHit", r11_147, Color3.fromRGB(255, r14_147, 0), r2_147.Magnitude / 1)
            return 2
          end
          local r8_147 = r6_147.Instance.Parent:FindFirstChild("Humanoid") or r6_147.Instance.Parent.Parent:FindFirstChild("Humanoid")
          if r8_147 then
            r11_147 = r8_147
            if not table.find(r4_147, r11_147) then
              r11_147 = r8_147
              table.insert(r4_147, r11_147)
              r11_147 = "HitPlayer"
              r0_147.remoteEvent:FireServer(r11_147, r8_147, r6_147.Position)
              r11_147 = "MeleeHitValid"
              local r12_147 = CFrame.new(r1_147)
              r14_147 = 0
              r99_1:CastSphere(r11_147, r12_147, Color3.fromRGB(r14_147, 255, 0))
              r11_147 = "MeleeHit"
              r14_147 = r1_147 + r2_147
              r12_147 = CFrame.new(r1_147, r14_147)
              r14_147 = 0
              r14_147 = 0
              local r13_147 = Color3.fromRGB(r14_147, 255, 0)
              r14_147 = r2_147.Magnitude
              r14_147 = r14_147 / 1
              r99_1:CastLine(r11_147, r12_147 * CFrame.new(r14_147, 0, -r2_147.Magnitude / 2), r13_147, r14_147)
              return 2
            end
          end
          r11_147 = "Active"
          if r104_1:GetAttribute(r11_147) == true then
            r11_147 = "BuildingHealth"
            local r9_147 = r6_147.Instance.Parent:FindFirstChild(r11_147)
            if not r9_147 then
              r11_147 = "BuildingHealth"
              r9_147 = r6_147.Instance.Parent.Parent:FindFirstChild(r11_147)
            end
            if r9_147 ~= nil then
              r11_147 = r4_147
              if not table.find(r11_147, r9_147) then
                r11_147 = r4_147
                table.insert(r11_147, r9_147)
                local r10_147 = r9_147.Parent:FindFirstChild("Creator") and r10_147.Value
                if r10_147 ~= nil then
                  r11_147 = r10_147.Neutral
                  if r11_147 == false then
                    r11_147 = r0_147.player
                    r11_147 = r11_147.Team
                    if r11_147 ~= nil then
                      r11_147 = r10_147.Team
                      if r11_147 ~= nil then
                        r11_147 = r0_147.player
                        r11_147 = r11_147.Team
                        r11_147 = r11_147.Name
                        if r11_147 == r10_147.Team.Name then
                          r11_147 = 2
                          return r11_147
                        end
                      end
                    end
                  end
                end
                r11_147 = r0_147.remoteEvent
                r14_147 = r9_147.Parent
                r11_147:FireServer("HitBuilding", r14_147)
                r11_147 = r99_1
                r14_147 = CFrame
                r14_147 = r14_147.new
                r14_147 = r14_147(r1_147)
                r11_147:CastSphere("MeleeHitValid", r14_147, Color3.fromRGB(0, 255, 0))
                r11_147 = r99_1
                r14_147 = CFrame
                r14_147 = r14_147.new
                r14_147 = r14_147(r1_147, r1_147 + r2_147)
                r14_147 = r14_147 * CFrame.new(0, 0, -r2_147.Magnitude / 2)
                r11_147:CastLine("MeleeHit", r14_147, Color3.fromRGB(255, 255, 0), r2_147.Magnitude / 1)
                r11_147 = 2
                return r11_147
              end
            end
          end
          if r0_147.Stats.BreaksDown then
            r11_147 = r6_147.Instance
            if r98_1:HasTag(r11_147, "Breakable") then
              local r9_147 = OverlapParams.new()
              r9_147.FilterDescendantsInstances = r3_147.FilterDescendantsInstances
              r14_147 = r9_147
              local r10_147 = workspace:GetPartBoundsInRadius(r6_147.Position, 0.1, r14_147)
              r11_147 = {}
              r14_147 = 1
              for r15_147 = 1, #r10_147, r14_147 do
                if r98_1:HasTag(r10_147[r15_147], "Breakable") then
                  table.insert(r11_147, r10_147[r15_147])
                end
              end
              r14_147 = "HitBreakable"
              r0_147.remoteEvent:FireServer(r14_147, r11_147, (r6_147.Position - r1_147).Unit)
              r14_147 = "MeleeHitValid"
              r99_1:CastSphere(r14_147, CFrame.new(r1_147), Color3.fromRGB(0, 255, 0))
              r14_147 = "MeleeHit"
              r99_1:CastLine(r14_147, CFrame.new(r1_147, (r1_147 + r2_147)) * CFrame.new(0, 0, -r2_147.Magnitude / 2), Color3.fromRGB(255, 255, 0), r2_147.Magnitude / 1)
              return 2
            end
          end
          r11_147 = "MeleeHit"
          r14_147 = r1_147 + r2_147
          local r12_147 = CFrame.new(r1_147, r14_147)
          r14_147 = 0
          r14_147 = 255
          local r13_147 = Color3.fromRGB(r14_147, 0, 0)
          r14_147 = r2_147.Magnitude
          r14_147 = r14_147 / 1
          r99_1:CastLine(r11_147, r12_147 * CFrame.new(r14_147, 0, -r2_147.Magnitude / 2), r13_147, r14_147)
        end
      else
        r11_147 = r1_147
        local r10_147 = CFrame.new(r11_147, r1_147 + r2_147)
        r11_147 = CFrame
        r11_147 = r11_147.new
        r14_147 = r2_147.Magnitude
        r14_147 = -r14_147
        r14_147 = r14_147 / 2
        r11_147 = r11_147(0, 0, r14_147)
        r11_147 = Color3
        r11_147 = r11_147.fromRGB
        r14_147 = 0
        r11_147 = r11_147(255, 0, r14_147)
        r99_1:CastLine("MeleeHit", r10_147 * r11_147, r11_147, r2_147.Magnitude / 1)
      end
      return 0
    end
    function changeMelee(r0_160)
      -- line: [0, 0] id: 160
      local r1_160 = r95_1
      local r2_160 = nil	-- notice: implicit variable refs by block#[3]
      if r0_160 then
        r2_160 = r97_1.MeleeHitCheck
        if not r2_160 then
          ::label_7::
          r2_160 = r96_1
        end
      else
        goto label_7	-- block#2 is visited secondly
      end
      r1_160.MeleeHitCheck = r2_160
    end
    -- close: r96_1
  end
  r96_1 = false
  r97_1 = 10
  r98_1 = workspace
  r98_1 = r98_1:WaitForChild("Zombies")
  function r99_1(r0_108)
    -- line: [0, 0] id: 108
    if not r0_108 or not r0_108.Parent then
      return 
    end
    local r1_108 = r0_108:FindFirstChild("HumanoidRootPart")
    if r1_108 and not r0_108:FindFirstChild("OuterHitbox") then
      pcall(function()
        -- line: [0, 0] id: 109
        local r0_109 = Instance.new("Part")
        r0_109.Name = "OuterHitbox"
        r0_109.Size = Vector3.new(r97_1, r97_1, r97_1)
        r0_109.Transparency = 1
        r0_109.Anchored = false
        r0_109.CanCollide = false
        r0_109.Massless = true
        r0_109.CanTouch = true
        r0_109.CFrame = r1_108.CFrame
        r0_109.Parent = r0_108
        local r1_109 = Instance.new("WeldConstraint")
        r1_109.Part0 = r1_108
        r1_109.Part1 = r0_109
        r1_109.Parent = r0_109
      end)
    end
  end
  local function r100_1(r0_97)
    -- line: [0, 0] id: 97
    if not r0_97 or not r0_97.Parent then
      return 
    end
    local r1_97 = r0_97:FindFirstChild("Head")
    if r1_97 and not r0_97:FindFirstChild("HeadHitbox") then
      pcall(function()
        -- line: [0, 0] id: 98
        local r0_98 = Instance.new("Part")
        r0_98.Name = "HeadHitbox"
        r0_98.Size = Vector3.new(r97_1 / 2, r97_1 / 2, r97_1 / 2)
        r0_98.Transparency = 1
        r0_98.Anchored = false
        r0_98.CanCollide = false
        r0_98.Massless = true
        r0_98.CanTouch = true
        r0_98.CFrame = r1_97.CFrame
        r0_98.Parent = r0_97
        local r1_98 = Instance.new("WeldConstraint")
        r1_98.Part0 = r1_97
        r1_98.Part1 = r0_98
        r1_98.Parent = r0_98
      end)
    end
  end
  function r101_1(r0_83)
    -- line: [0, 0] id: 83
    if not r0_83 then
      return 
    end
    pcall(function()
      -- line: [0, 0] id: 84
      local r0_84 = r0_83:FindFirstChild("OuterHitbox")
      local r1_84 = r0_83:FindFirstChild("HeadHitbox")
      if r0_84 then
        r0_84:Destroy()
      end
      if r1_84 then
        r1_84:Destroy()
      end
    end)
  end
  function r102_1(r0_120)
    -- line: [0, 0] id: 120
    if not r0_120 then
      return 
    end
    if r96_1 then
      r101_1(r0_120)
      task.wait(0.05)
      r99_1(r0_120)
      r100_1(r0_120)
    else
      r101_1(r0_120)
    end
  end
  local function r103_1(r0_80)
    -- line: [0, 0] id: 80
    r97_1 = r0_80
    if r96_1 then
      pcall(function()
        -- line: [0, 0] id: 81
        for r3_81, r4_81 in pairs(r98_1:GetChildren()) do
          r102_1(r4_81)
        end
        for r3_81, r4_81 in pairs(workspace.Camera:GetChildren()) do
          if r4_81.Name == "m_Zombie" then
            r102_1(r4_81)
          end
        end
      end)
    end
  end
  function r104_1(r0_93)
    -- line: [0, 0] id: 93
    r96_1 = r0_93
    pcall(function()
      -- line: [0, 0] id: 94
      for r3_94, r4_94 in pairs(r98_1:GetChildren()) do
        r102_1(r4_94)
      end
      for r3_94, r4_94 in pairs(workspace.Camera:GetChildren()) do
        if r4_94.Name == "m_Zombie" then
          r102_1(r4_94)
        end
      end
    end)
  end
  r98_1.ChildAdded:Connect(function(r0_53)
    -- line: [0, 0] id: 53
    if r96_1 then
      task.wait(0.2)
      r102_1(r0_53)
    end
  end)
  workspace.Camera.ChildAdded:Connect(function(r0_92)
    -- line: [0, 0] id: 92
    if r0_92.Name == "m_Zombie" and r96_1 then
      task.wait(0.2)
      r102_1(r0_92)
    end
  end)
  local r105_1 = game:GetService("Lighting")
  local r106_1 = false
  local r107_1 = nil
  local r108_1 = {
    Ambient = r105_1.Ambient,
    ColorShift_Bottom = r105_1.ColorShift_Bottom,
    ColorShift_Top = r105_1.ColorShift_Top,
    OutdoorAmbient = r105_1.OutdoorAmbient,
    Brightness = r105_1.Brightness,
  }
  local function r109_1()
    -- line: [0, 0] id: 209
    if not r106_1 then
      return 
    end
    r105_1.Ambient = Color3.new(1, 1, 1)
    r105_1.ColorShift_Bottom = Color3.new(1, 1, 1)
    r105_1.ColorShift_Top = Color3.new(1, 1, 1)
    r105_1.OutdoorAmbient = Color3.new(1, 1, 1)
    r105_1.Brightness = 2
  end
  local function r110_1()
    -- line: [0, 0] id: 27
    r105_1.Ambient = r108_1.Ambient
    r105_1.ColorShift_Bottom = r108_1.ColorShift_Bottom
    r105_1.ColorShift_Top = r108_1.ColorShift_Top
    r105_1.OutdoorAmbient = r108_1.OutdoorAmbient
    r105_1.Brightness = r108_1.Brightness
  end
  local function r111_1(r0_128)
    -- line: [0, 0] id: 128
    r106_1 = r0_128
    if r107_1 then
      r107_1:Disconnect()
      r107_1 = nil
    end
    if r0_128 then
      r109_1()
      r107_1 = r105_1.LightingChanged:Connect(r109_1)
    else
      r110_1()
    end
  end
  local r112_1 = true
  local r113_1 = nil
  local function r114_1(r0_115)
    -- line: [0, 0] id: 115
    r112_1 = r0_115
    if r113_1 then
      r113_1:Disconnect()
      r113_1 = nil
    end
    if not r0_115 then
      r113_1 = r1_1.Heartbeat:Connect(function()
        -- line: [0, 0] id: 116
        if not r0_1.Character or not r0_1.Character:FindFirstChild("HumanoidRootPart") then
          return 
        end
        for r4_116, r5_116 in ipairs(workspace:GetPartBoundsInRadius(r0_1.Character.HumanoidRootPart.Position, 10)) do
          r5_116.CanTouch = false
        end
      end)
    end
  end
  local r115_1 = false
  local r116_1 = false
  local r117_1 = nil
  local r118_1 = 0
  local r119_1 = false
  local function r120_1()
    -- line: [0, 0] id: 21
    local r0_21 = r0_1.Backpack:FindFirstChild("Hammer")
    if not r0_21 then
      return false
    end
    pcall(function()
      -- line: [0, 0] id: 22
      r0_1.Character.Humanoid:EquipTool(r0_21)
    end)
    task.wait(0.2)
    return r0_1.Character:FindFirstChild("Hammer") ~= nil
  end
  local function r121_1()
    -- line: [0, 0] id: 113
    if r119_1 or not r115_1 or not r0_1.Character then
      return false
    end
    local r0_113 = tick()
    if r0_113 - r118_1 < 0.1 then
      return false
    end
    local r1_113 = r0_1.Character:FindFirstChild("Hammer")
    if not r1_113 and r116_1 then
      if not r120_1() then
        return false
      end
      r1_113 = r0_1.Character:FindFirstChild("Hammer")
    end
    if not r1_113 then
      return false
    end
    r119_1 = true
    local r2_113 = r1_113:FindFirstChild("RemoteEvent")
    if not r2_113 then
      r119_1 = false
      return false
    end
    local r3_113 = RaycastParams.new()
    r3_113.IgnoreWater = true
    r3_113.FilterDescendantsInstances = {
      r0_1.Character
    }
    r3_113.FilterType = Enum.RaycastFilterType.Exclude
    local r4_113 = r0_1.Character:FindFirstChild("Head")
    if not r4_113 then
      r119_1 = false
      return false
    end
    local r5_113 = false
    pcall(function()
      -- line: [0, 0] id: 114
      local r1_114 = workspace:Raycast(r4_113.Position, workspace.CurrentCamera.CFrame.LookVector * 8, r3_113)
      if r1_114 and r1_114.Instance then
        local r2_114 = r1_114.Instance.Parent:FindFirstChild("BuildingHealth") or r1_114.Instance.Parent.Parent:FindFirstChild("BuildingHealth")
        local r3_114 = r1_114.Instance:FindFirstChild("ConstructHealth")
        if r2_114 or r3_114 then
          r2_113:FireServer("Repair", r2_114 or r3_114)
          r118_1 = r0_113
          r5_113 = true
        end
      end
    end)
    r119_1 = false
    return r5_113
  end
  local function r122_1(r0_54)
    -- line: [0, 0] id: 54
    r115_1 = r0_54
    if r117_1 then
      r117_1:Disconnect()
      r117_1 = nil
    end
    if r115_1 then
      r119_1 = false
      r117_1 = r1_1.Heartbeat:Connect(function()
        -- line: [0, 0] id: 55
        if not r115_1 then
          if r117_1 then
            r117_1:Disconnect()
            r117_1 = nil
          end
          return 
        end
        if tick() - r118_1 >= 0.1 then
          task.spawn(function()
            -- line: [0, 0] id: 56
            pcall(r121_1)
          end)
        end
      end)
    else
      r119_1 = false
    end
  end
  r0_1.CharacterAdded:Connect(function(r0_210)
    -- line: [0, 0] id: 210
    task.wait(1)
    r53_1 = {}
    r54_1 = 0
    r56_1 = 0
    if killAuraToggled or shoveAuraToggled then
      observerOnline = false
      if killAuraConnection then
        killAuraConnection:Disconnect()
        killAuraConnection = nil
      end
      task.wait(0.1)
      createHitBox()
    end
    if bayonetKillAuraToggled then
      r77_1(false)
      task.wait(0.2)
      r77_1(true)
    end
    r69_1.FilterDescendantsInstances = {
      r0_210
    }
    r70_1.FilterDescendantsInstances = {
      r0_210
    }
    if not r112_1 then
      r114_1(false)
    end
  end)
  task.spawn(function()
    -- line: [0, 0] id: 124
    -- notice: unreachable block#5
    while true do
      task.wait(5)
      local r0_124 = tick()
      for r4_124, r5_124 in pairs(r53_1) do
        if r0_124 - r5_124 > 10 then
          r53_1[r4_124] = nil
        end
      end
    end
  end)
  local r123_1 = game:GetService("Players")
  local r124_1 = game:GetService("RunService")
  local r125_1 = r123_1.LocalPlayer
  local r126_1 = workspace.CurrentCamera
  local r127_1 = r125_1:WaitForChild("PlayerGui"):FindFirstChild("HorsemanLockOn") or Instance.new("ScreenGui")
  r127_1.Name = "HorsemanLockOn"
  r127_1.ResetOnSpawn = false
  r127_1.Parent = r125_1:WaitForChild("PlayerGui")
  local r128_1 = false
  local r129_1 = false
  local r130_1 = 0.1
  local r131_1 = nil
  local r132_1 = nil
  local r133_1 = nil
  if not r127_1:FindFirstChild("MainFrame") then
    local r134_1 = Instance.new("Frame")
    r134_1.Name = "MainFrame"
    r134_1.Parent = r127_1
    r134_1.Size = UDim2.new(0, 200, 0, 120)
    r134_1.Position = UDim2.new(0, 50, 0, 150)
    r134_1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    r134_1.BackgroundTransparency = 0.3
    r134_1.Active = true
    r134_1.Draggable = true
    r134_1.Visible = false
    local r135_1 = Instance.new("UICorner")
    r135_1.CornerRadius = UDim.new(0, 12)
    r135_1.Parent = r134_1
    local r136_1 = Instance.new("TextLabel")
    r136_1.Parent = r134_1
    r136_1.Size = UDim2.new(1, 0, 0, 30)
    r136_1.Text = "Headless Horseman Lock-On"
    r136_1.BackgroundTransparency = 1
    r136_1.TextColor3 = Color3.new(1, 1, 1)
    r136_1.TextScaled = true
    local r137_1 = Instance.new("TextButton")
    r137_1.Name = "Toggle"
    r137_1.Parent = r134_1
    r137_1.Size = UDim2.new(0, 80, 0, 30)
    r137_1.Position = UDim2.new(0, 10, 0, 40)
    r137_1.Text = "OFF"
    r137_1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    r137_1.TextColor3 = Color3.new(1, 1, 1)
    r137_1.TextScaled = true
    local r138_1 = Instance.new("UICorner")
    r138_1.CornerRadius = UDim.new(0, 8)
    r138_1.Parent = r137_1
    local r139_1 = Instance.new("TextBox")
    r139_1.Name = "Prediction"
    r139_1.Parent = r134_1
    r139_1.Size = UDim2.new(0, 180, 0, 30)
    r139_1.Position = UDim2.new(0, 10, 0, 80)
    r139_1.Text = "0.1"
    r139_1.PlaceholderText = "Prediction"
    r139_1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    r139_1.TextColor3 = Color3.new(1, 1, 1)
    r139_1.ClearTextOnFocus = false
    r139_1.TextScaled = true
    local r140_1 = Instance.new("UICorner")
    r140_1.CornerRadius = UDim.new(0, 8)
    r140_1.Parent = r139_1
  end
  local r134_1 = r127_1.MainFrame
  local r135_1 = r134_1.Toggle
  local r136_1 = r134_1.Prediction
  r135_1.MouseButton1Click:Connect(function()
    -- line: [0, 0] id: 2
    r129_1 = not r129_1
    local r0_2 = r135_1
    local r1_2 = r129_1
    if r1_2 then
      r1_2 = "ON" or "OFF"
    else
      goto label_10	-- block#2 is visited secondly
    end
    r0_2.Text = r1_2
    r0_2 = r135_1
    r1_2 = r129_1
    if r1_2 then
      r1_2 = Color3.fromRGB(0, 150, 0) or Color3.fromRGB(40, 40, 40)
    else
      goto label_24	-- block#5 is visited secondly
    end
    r0_2.BackgroundColor3 = r1_2
  end)
  r136_1.FocusLost:Connect(function()
    -- line: [0, 0] id: 50
    local r0_50 = tonumber(r136_1.Text)
    if r0_50 then
      r130_1 = r0_50
    end
  end)
  local function r137_1()
    -- line: [0, 0] id: 58
    if r132_1 then
      task.cancel(r132_1)
    end
    r132_1 = task.spawn(function()
      -- line: [0, 0] id: 59
      while r128_1 do
        task.wait(2)
        local r0_59 = r129_1
        if r0_59 then
          r0_59 = workspace:FindFirstChild("Sleepy Hollow")
          local r1_59 = r0_59 and r0_59:FindFirstChild("Modes")
          local r2_59 = r1_59 and r1_59:FindFirstChild("Boss")
          local r3_59 = r2_59 and r2_59:FindFirstChild("HeadlessHorsemanBoss")
          r131_1 = r3_59 and r3_59:FindFirstChild("HeadlessHorseman")
        else
          r0_59 = nil
          r131_1 = r0_59
        end
      end
      r131_1 = nil
    end)
  end
  local function r138_1()
    -- line: [0, 0] id: 167
    if r133_1 then
      r133_1:Disconnect()
    end
    r133_1 = r124_1.RenderStepped:Connect(function()
      -- line: [0, 0] id: 168
      if r128_1 and r129_1 and r131_1 and r131_1.Parent then
        local r0_168 = r131_1:FindFirstChild("Torso") or r131_1:FindFirstChild("UpperTorso")
        if r0_168 then
          r126_1.CFrame = CFrame.new(r126_1.CFrame.Position, r0_168.Position + r0_168.Velocity * r130_1)
        end
      end
    end)
  end
  local function r139_1(r0_135)
    -- line: [0, 0] id: 135
    r128_1 = r0_135
    r134_1.Visible = r0_135
    if r0_135 then
      r137_1()
      r138_1()
    else
      r129_1 = false
      r135_1.Text = "OFF"
      r135_1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
      r131_1 = nil
      if r132_1 then
        task.cancel(r132_1)
        r132_1 = nil
      end
      if r133_1 then
        r133_1:Disconnect()
        r133_1 = nil
      end
    end
  end
  local r140_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua"))()
  if not r140_1 then
    warn("Failed to load Rayfield library")
    return 
  end
  local r141_1 = r140_1:CreateWindow({
    Name = "Chaos Hub",
    Icon = 0,
    LoadingTitle = "Chaos",
    LoadingSubtitle = "by Chaos Hub",
    Theme = "Ocean",
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "G&B Hub",
    },
    Discord = {
      Enabled = true,
      Invite = "",
      RememberJoins = true,
    },
  })
  local r142_1 = r141_1:CreateTab("Combat", "album")
  local r143_1 = r142_1:CreateSection("Combat Functions")
  local r144_1 = r141_1:CreateTab("Auto", "settings")
  local r145_1 = r144_1:CreateSection("Auto Functions")
  local r146_1 = r141_1:CreateTab("ESP", "target")
  local r147_1 = r146_1:CreateSection("ESP Functions")
  local r148_1 = r141_1:CreateTab("Player", "person-standing")
  local r149_1 = r148_1:CreateSection("Player Functions")
  local r150_1 = r141_1:CreateTab("Visual", "eye")
  local r151_1 = r150_1:CreateSection("Visual Functions")
  local r152_1 = r141_1:CreateTab("Event", "crosshair")
  local r153_1 = r152_1:CreateSection("Event Functions")
  local r154_1 = r141_1:CreateTab("Misc", "settings")
  local r155_1 = r154_1:CreateSection("Miscellaneous Functions")
  r142_1:CreateToggle({
    Name = "Kill Aura",
    CurrentValue = false,
    Flag = "KillAura",
    Callback = function(r0_184)
      -- line: [0, 0] id: 184
      killAuraToggled = r0_184
      if r0_184 then
        task.wait(0.1)
        createHitBox()
        if autoFaceToggled then
          startAutoFace()
        end
      else
        if not shoveAuraToggled then
          if killAuraConnection then
            killAuraConnection:Disconnect()
            killAuraConnection = nil
          end
          observerOnline = false
          isDead = false
          if r0_1.Character and r0_1.Character:FindFirstChild("HumanoidRootPart") then
            local r1_184 = r0_1.Character.HumanoidRootPart:FindFirstChild("Hitbox")
            if r1_184 then
              r1_184:Destroy()
            end
          end
        end
        if not shoveAuraToggled and autoFaceToggled then
          stopAutoFace()
        end
      end
    end,
  })
  r142_1:CreateToggle({
    Name = "Shove Aura",
    CurrentValue = false,
    Flag = "ShoveAura",
    Callback = function(r0_158)
      -- line: [0, 0] id: 158
      shoveAuraToggled = r0_158
      if r0_158 then
        task.wait(0.1)
        createHitBox()
        if autoFaceToggled then
          startAutoFace()
        end
      else
        if not killAuraToggled then
          if killAuraConnection then
            killAuraConnection:Disconnect()
            killAuraConnection = nil
          end
          observerOnline = false
          isDead = false
          if r0_1.Character and r0_1.Character:FindFirstChild("HumanoidRootPart") then
            local r1_158 = r0_1.Character.HumanoidRootPart:FindFirstChild("Hitbox")
            if r1_158 then
              r1_158:Destroy()
            end
          end
        end
        if not killAuraToggled and autoFaceToggled then
          stopAutoFace()
        end
      end
    end,
  })
  r142_1:CreateToggle({
    Name = "Bayonet Kill Aura",
    CurrentValue = false,
    Flag = "BayonetKillAura",
    Callback = function(r0_176)
      -- line: [0, 0] id: 176
      r77_1(r0_176)
    end,
  })
  r142_1:CreateToggle({
    Name = "Auto Face Zombies",
    CurrentValue = false,
    Flag = "AutoFace",
    Callback = function(r0_35)
      -- line: [0, 0] id: 35
      autoFaceToggled = r0_35
      if r0_35 and (killAuraToggled or shoveAuraToggled or bayonetKillAuraToggled) then
        startAutoFace()
      else
        stopAutoFace()
      end
    end,
  })
  r142_1:CreateToggle({
    Name = "Head Lock",
    CurrentValue = false,
    Flag = "HeadLock",
    Callback = function(r0_5)
      -- line: [0, 0] id: 5
      changeBayonet(r0_5)
      changeMelee(r0_5)
    end,
  })
  local r158_1 = "CreateSlider"
  r158_1 = {
    Name = "Shove Radius",
    Range = {
      1,
      15
    },
    Increment = 1,
    Suffix = " studs",
    CurrentValue = shoveRadius,
    Flag = "ShoveRadiusSlider",
    Callback = function(r0_193)
      -- line: [0, 0] id: 193
      setShoveRadius(r0_193)
    end,
  }
  r142_1:[r158_1](r158_1)
  r158_1 = "CreateSlider"
  r158_1 = {
    Name = "Max Shove Per Cycle",
    Range = {
      1,
      20
    },
    Increment = 1,
    Suffix = " zombies",
    CurrentValue = maxShovePerCycle,
    Flag = "MaxShoveSlider",
    Callback = function(r0_166)
      -- line: [0, 0] id: 166
      setMaxShovePerCycle(r0_166)
    end,
  }
  r142_1:[r158_1](r158_1)
  r158_1 = "CreateSlider"
  r158_1 = {
    Name = "Max Kill Per Cycle",
    Range = {
      1,
      20
    },
    Increment = 1,
    Suffix = " zombies",
    CurrentValue = r58_1,
    Flag = "MaxKillSlider",
    Callback = function(r0_138)
      -- line: [0, 0] id: 138
      setMaxKillPerCycle(r0_138)
    end,
  }
  r142_1:[r158_1](r158_1)
  r158_1 = "CreateSlider"
  r158_1 = {
    Name = "Bayonet Kill Radius",
    Range = {
      5,
      20
    },
    Increment = 1,
    Suffix = " studs",
    CurrentValue = bayonetKillAuraRadius,
    Flag = "BayonetKillRadiusSlider",
    Callback = function(r0_174)
      -- line: [0, 0] id: 174
      bayonetKillAuraRadius = r0_174
      if bayonetKillAuraToggled then
        r77_1(false)
        task.wait(0.1)
        r77_1(true)
      end
    end,
  }
  r142_1:[r158_1](r158_1)
  r158_1 = "CreateSlider"
  r158_1 = {
    Name = "Bayonet Attack Cooldown",
    Range = {
      0.1,
      1
    },
    Increment = 0.05,
    Suffix = " seconds",
    CurrentValue = bayonetAttackCooldown,
    Flag = "BayonetCooldownSlider",
    Callback = function(r0_57)
      -- line: [0, 0] id: 57
      bayonetAttackCooldown = r0_57
    end,
  }
  r142_1:[r158_1](r158_1)
  r158_1 = "CreateSlider"
  r158_1 = {
    Name = "KillAura Speed",
    Range = {
      0.1,
      2
    },
    Increment = 0.1,
    Suffix = "x (lower = faster)",
    CurrentValue = r67_1,
    Flag = "KillSpeedSlider",
    Callback = function(r0_7)
      -- line: [0, 0] id: 7
      r67_1 = r0_7
    end,
  }
  r142_1:[r158_1](r158_1)
  r158_1 = "CreateLabel"
  r158_1 = "Kill Speed: 0.5x = Fast x2, 2.0x = slow x2"
  r142_1:[r158_1](r158_1)
  r144_1:CreateToggle({
    Name = "Auto Fire",
    CurrentValue = false,
    Flag = "AutoFire",
    Callback = function(r0_151)
      -- line: [0, 0] id: 151
      r24_1(r0_151)
    end,
  })
  r158_1 = "CreateSlider"
  r158_1 = {
    Name = "Auto Fire Range",
    Range = {
      10,
      100
    },
    Increment = 5,
    Suffix = " studs",
    CurrentValue = autoFireRange,
    Flag = "AutoFireRangeSlider",
    Callback = function(r0_159)
      -- line: [0, 0] id: 159
      autoFireRange = r0_159
    end,
  }
  r144_1:[r158_1](r158_1)
  r144_1:CreateToggle({
    Name = "Wallbang Mode",
    CurrentValue = false,
    Flag = "Wallbang",
    Callback = function(r0_146)
      -- line: [0, 0] id: 146
      r21_1(r0_146)
    end,
  })
  r144_1:CreateToggle({
    Name = "Auto Reload",
    CurrentValue = false,
    Flag = "AutoReload",
    Callback = function(r0_12)
      -- line: [0, 0] id: 12
      _G.AutoReloadV2.Toggle(r0_12)
    end,
  })
  local r156_1 = {
    ["Fast (No Animation)"] = 1,
    ["Animation (Full)"] = 2,
    ["Background (Continue)"] = 3,
  }
  local r159_1 = "CreateDropdown"
  r159_1 = {
    Name = "Reload Mode",
    Options = {
      "Fast (No Animation)",
      "Animation (Full)",
      "Background (Continue)"
    },
    CurrentOption = {
      "Animation (Full)"
    },
    Flag = "ReloadMode",
    Callback = function(r0_125)
      -- line: [0, 0] id: 125
      _G.AutoReloadV2.SetMode(r156_1[r0_125[1]] or 2)
    end,
  }
  r144_1:[r159_1](r159_1)
  task.spawn(function()
    -- line: [0, 0] id: 141
    task.wait(1)
    local r0_141 = r140_1.Library.Flags.ReloadMode
    if r0_141 and r0_141[1] then
      _G.AutoReloadV2.SetMode(r156_1[r0_141[1]] or 2)
    end
  end)
  r159_1 = "CreateLabel"
  r159_1 = "������ Noanimation"
  r144_1:[r159_1](r159_1)
  r159_1 = "CreateLabel"
  r159_1 = "������ Animation"
  r144_1:[r159_1](r159_1)
  r159_1 = "CreateLabel"
  r159_1 = "������ BackgroundUnequip"
  r144_1:[r159_1](r159_1)
  r144_1:CreateToggle({
    Name = "Auto Repair",
    CurrentValue = false,
    Flag = "AutoRepair",
    Callback = function(r0_157)
      -- line: [0, 0] id: 157
      r122_1(r0_157)
    end,
  })
  r144_1:CreateToggle({
    Name = "Auto Equip Hammer",
    CurrentValue = false,
    Flag = "AutoEquipHammer",
    Callback = function(r0_165)
      -- line: [0, 0] id: 165
      r116_1 = r0_165
    end,
  })
  r144_1:CreateToggle({
    Name = "Auto Play",
    CurrentValue = false,
    Flag = "auto_play",
    Callback = function(r0_24)
      -- line: [0, 0] id: 24
      autoplay = r0_24
      if r0_24 then
        r91_1()
      else
        if r80_1 then
          r80_1:Disconnect()
          r80_1 = nil
        end
        if r83_1 then
          task.cancel(r83_1)
          r83_1 = nil
        end
        if r84_1 then
          r84_1:Disconnect()
          r84_1 = nil
        end
        for r4_24, r5_24 in pairs(r85_1) do
          if r5_24 then
            r5_24:Disconnect()
          end
        end
        r85_1 = {}
        r88_1(false)
        r81_1 = 0
      end
    end,
  })
  r146_1:CreateToggle({
    Name = "ESP Runner",
    CurrentValue = false,
    Flag = "ESP_1",
    Callback = function(r0_10)
      -- line: [0, 0] id: 10
      espRToggled = r0_10
    end,
  })
  r146_1:CreateToggle({
    Name = "ESP Bomber",
    CurrentValue = false,
    Flag = "ESP_2",
    Callback = function(r0_185)
      -- line: [0, 0] id: 185
      espBToggled = r0_185
    end,
  })
  r146_1:CreateToggle({
    Name = "ESP Igniter",
    CurrentValue = false,
    Flag = "ESP_3",
    Callback = function(r0_90)
      -- line: [0, 0] id: 90
      espIToggled = r0_90
    end,
  })
  r146_1:CreateToggle({
    Name = "ESP Cuirassier",
    CurrentValue = false,
    Flag = "ESP_4",
    Callback = function(r0_43)
      -- line: [0, 0] id: 43
      espCuToggled = r0_43
    end,
  })
  r146_1:CreateToggle({
    Name = "ESP Zapper",
    CurrentValue = false,
    Flag = "ESP_Zapper",
    Callback = function(r0_145)
      -- line: [0, 0] id: 145
      espZToggled = r0_145
    end,
  })
  r146_1:CreateToggle({
    Name = "ESP Boss",
    CurrentValue = false,
    Flag = "ESP_5",
    Callback = function(r0_130)
      -- line: [0, 0] id: 130
      espBossToggled = r0_130
      r51_1()
    end,
  })
  r146_1:CreateToggle({
    Name = "Medic Player ESP",
    CurrentValue = false,
    Flag = "medic_esp",
    Callback = function(r0_9)
      -- line: [0, 0] id: 9
      espMedicToggled = r0_9
      if r0_9 or espInfectionToggled then
        checkPlayersLife()
      end
    end,
  })
  r146_1:CreateToggle({
    Name = "Father Infection ESP",
    CurrentValue = false,
    Flag = "father_infection",
    Callback = function(r0_3)
      -- line: [0, 0] id: 3
      espInfectionToggled = r0_3
      if r0_3 or espMedicToggled then
        checkPlayersLife()
      end
    end,
  })
  r148_1:CreateToggle({
    Name = "WalkSpeed Freeze",
    CurrentValue = false,
    Flag = "WalkSpeed",
    Callback = function(r0_154)
      -- line: [0, 0] id: 154
      walkSpeedToggled = r0_154
      r79_1(walkSpeedValue, walkSpeedToggled)
    end,
  })
  r159_1 = "CreateInput"
  r159_1 = {
    Name = "WalkSpeed",
    CurrentValue = "16",
    PlaceholderText = "WalkSpeed",
    RemoveTextAfterFocusLost = false,
    Flag = "Input1",
    Callback = function(r0_14)
      -- line: [0, 0] id: 14
      local r1_14 = tonumber(r0_14)
      if r1_14 then
        walkSpeedValue = r1_14
        r79_1(r1_14, walkSpeedToggled)
      end
    end,
  }
  r148_1:[r159_1](r159_1)
  r148_1:CreateToggle({
    Name = "Killbrick Protection",
    CurrentValue = false,
    Flag = "KillbrickProtection",
    Callback = function(r0_13)
      -- line: [0, 0] id: 13
      r114_1(not r0_13)
    end,
  })
  r150_1:CreateToggle({
    Name = "Fullbright",
    CurrentValue = false,
    Flag = "Fullbright",
    Callback = function(r0_82)
      -- line: [0, 0] id: 82
      r111_1(r0_82)
    end,
  })
  r142_1:CreateToggle({
    Name = "Zombie Hitbox Expander",
    CurrentValue = false,
    Flag = "HitboxExpander",
    Callback = function(r0_152)
      -- line: [0, 0] id: 152
      r104_1(r0_152)
    end,
  })
  r159_1 = "CreateSlider"
  r159_1 = {
    Name = "Zombie Hitbox Size",
    Range = {
      1,
      30
    },
    Increment = 1,
    Suffix = " studs",
    CurrentValue = r97_1,
    Flag = "HitboxSizeSlider",
    Callback = function(r0_153)
      -- line: [0, 0] id: 153
      r103_1(r0_153)
    end,
  }
  r142_1:[r159_1](r159_1)
  r152_1:CreateToggle({
    Name = "Headless Aimbot",
    CurrentValue = false,
    Flag = "HeadlessAimbot",
    Callback = function(r0_127)
      -- line: [0, 0] id: 127
      r139_1(r0_127)
    end,
  })
  r152_1:CreateToggle({
    Name = "Auto Fire Headless Horseman",
    CurrentValue = false,
    Flag = "AutoFireHeadless",
    Callback = function(r0_197)
      -- line: [0, 0] id: 197
      r25_1(r0_197)
    end,
  })
  r159_1 = "CreateSlider"
  r159_1 = {
    Name = "Headless Fire Range",
    Range = {
      50,
      200
    },
    Increment = 10,
    Suffix = " studs",
    CurrentValue = autoFireHeadlessRange,
    Flag = "HeadlessRangeSlider",
    Callback = function(r0_169)
      -- line: [0, 0] id: 169
      autoFireHeadlessRange = r0_169
    end,
  }
  r152_1:[r159_1](r159_1)
  r152_1:CreateToggle({
    Name = "Auto Prediction",
    CurrentValue = true,
    Flag = "AutoPrediction",
    Callback = function(r0_41)
      -- line: [0, 0] id: 41
      r3_1 = r0_41
      if not r0_41 then
        r5_1 = r4_1
      end
    end,
  })
  r159_1 = "CreateSlider"
  r159_1 = {
    Name = "Base Prediction",
    Range = {
      0.05,
      0.5
    },
    Increment = 0.05,
    Suffix = " seconds",
    CurrentValue = r4_1,
    Flag = "BasePredictionSlider",
    Callback = function(r0_140)
      -- line: [0, 0] id: 140
      r4_1 = r0_140
      if not r3_1 then
        r5_1 = r0_140
      end
    end,
  }
  r152_1:[r159_1](r159_1)
  r159_1 = "CreateLabel"
  r159_1 = "Auto Prediction: Adjusts based on speed & movement"
  r152_1:[r159_1](r159_1)
  r159_1 = "CreateLabel"
  r159_1 = "Current Prediction: Updates in real-time"
  r152_1:[r159_1](r159_1)
  r159_1 = "CreateButton"
  r159_1 = {
    Name = "Lights On (Saint Petersburg)",
    Callback = function()
      -- line: [0, 0] id: 28
      pcall(onLights)
    end,
  }
  r154_1:[r159_1](r159_1)
  local r157_1 = {
    Infantry = "LineInfantry",
    Officer = "Officer",
    Sapper = "Sapper",
    Musician = "Musician",
    Seaman = "Seaman",
  }
  local r160_1 = "CreateDropdown"
  r160_1 = {
    Name = "Old Guard Temporary Auto Select",
    Options = {
      "Infantry",
      "Officer",
      "Sapper",
      "Musician",
      "Seaman"
    },
    CurrentOption = {},
    MultipleOptions = true,
    Flag = "Oldguard_temporary_auto",
    Callback = function(r0_99)
      -- line: [0, 0] id: 99
      for r4_99, r5_99 in ipairs(r0_99) do
        local r6_99 = r157_1[r5_99]
        if r6_99 then
          game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Regiment"):WaitForChild("ChangeClass"):FireServer(unpack({
            r6_99,
            5,
            "French",
            "Infantry"
          }))
        end
      end
    end,
  }
  r154_1:[r160_1](r160_1)
  r160_1 = "CreateButton"
  r160_1 = {
    Name = "Old source",
    Callback = function()
      -- line: [0, 0] id: 142
      local r0_142, r1_142 = pcall(function()
        -- line: [0, 0] id: 143
        loadstring(game:HttpGet([[https://raw.githubusercontent.com/cjbbth1-crypto/Chaos-Hub-GB/refs/heads/main/Chaos%20Hub]]))()
      end)
      if r0_142 then
        r140_1:Notify({
          Title = "Success",
          Content = "Old-source loaded successfully!",
          Duration = 3,
          Image = "check",
        })
      else
        r140_1:Notify({
          Title = "Error",
          Content = "Failed to load Anti-Cheat Bypass: " .. tostring(r1_142),
          Duration = 5,
          Image = "alert-triangle",
        })
      end
    end,
  }
  r154_1:[r160_1](r160_1)
  r160_1 = "CreateButton"
  r160_1 = {
    Name = "Load Animation Fun",
    Callback = function()
      -- line: [0, 0] id: 149
      local r0_149, r1_149 = pcall(function()
        -- line: [0, 0] id: 150
        loadstring(game:HttpGet([[https://raw.githubusercontent.com/cjbbth1-crypto/Animation-fun/refs/heads/main/Animation%20fun]]))()
      end)
      if r0_149 then
        r140_1:Notify({
          Title = "Success",
          Content = "Animation Fun loaded successfully!",
          Duration = 3,
          Image = "check",
        })
      else
        r140_1:Notify({
          Title = "Error",
          Content = "Failed to load Animation Fun: " .. tostring(r1_149),
          Duration = 5,
          Image = "alert-triangle",
        })
      end
    end,
  }
  r154_1:[r160_1](r160_1)
end)
if not r0_0 then
  warn("Script error: " .. tostring(r1_0))
end
