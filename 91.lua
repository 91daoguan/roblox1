local any_new_result1_upvr = require(game.ReplicatedStorage:WaitForChild("Modules"):WaitForChild("RbxUtil"):WaitForChild("Trove")).new()
local Parent_upvr = script.Parent
local Torso = Parent_upvr:WaitForChild("Torso")
local Right_Shoulder_upvr = Torso:WaitForChild("Right Shoulder")
local Left_Shoulder_upvr = Torso:WaitForChild("Left Shoulder")
local Right_Hip_upvr = Torso:WaitForChild("Right Hip")
local Left_Hip_upvr = Torso:WaitForChild("Left Hip")
local Humanoid_upvr = Parent_upvr:WaitForChild("Humanoid")
local var17_upvw = "Standing"
local var18_upvw = ""
local var19_upvw
local var20_upvw
local var21_upvw
local var22_upvw = 1
local tbl_upvr_2 = {}
local tbl_upvr_4 = {
	toolidle = {{
		id = "http://www.roblox.com/asset/?id=15069933558";
		weight = 9;
	}};
	toolwalk = {{
		id = "http://www.roblox.com/asset/?id=180426354";
		weight = 10;
	}};
	idle = {{
		id = "http://www.roblox.com/asset/?id=14970033333";
		weight = 9;
	}};
	idle_2 = {{
		id = "http://www.roblox.com/asset/?id=14970034019";
		weight = 9;
	}};
	idle_3 = {{
		id = "http://www.roblox.com/asset/?id=14970034680";
		weight = 9;
	}};
	idle_slightfreeze = {{
		id = "http://www.roblox.com/asset/?id=16863975877";
		weight = 9;
	}};
	idle_freezing = {{
		id = "http://www.roblox.com/asset/?id=16863977222";
		weight = 9;
	}};
	walk = {{
		id = "https://www.roblox.com/assets/?id=15486477524";
		weight = 10;
	}};
	walk_2 = {{
		id = "https://www.roblox.com/assets/?id=15530088537";
		weight = 10;
	}};
	walk_3 = {{
		id = "https://www.roblox.com/assets/?id=15530089342";
		weight = 10;
	}};
	walk_slightfreeze = {{
		id = "https://www.roblox.com/assets/?id=16876432168";
		weight = 10;
	}};
	walk_freezing = {{
		id = "https://www.roblox.com/assets/?id=16876434500";
		weight = 10;
	}};
	run = {{
		id = "run.xml";
		weight = 10;
	}};
	jump = {{
		id = "http://www.roblox.com/asset/?id=125750702";
		weight = 10;
	}};
	fall = {{
		id = "http://www.roblox.com/asset/?id=180436148";
		weight = 10;
	}};
	climb = {{
		id = "http://www.roblox.com/asset/?id=180436334";
		weight = 10;
	}};
	sit = {{
		id = "http://www.roblox.com/asset/?id=178130996";
		weight = 10;
	}};
	toolnone = {{
		id = "http://www.roblox.com/asset/?id=182393478";
		weight = 10;
	}};
	toolslash = {{
		id = "http://www.roblox.com/asset/?id=129967390";
		weight = 10;
	}};
	toollunge = {{
		id = "http://www.roblox.com/asset/?id=129967478";
		weight = 10;
	}};
	wave = {{
		id = "http://www.roblox.com/asset/?id=128777973";
		weight = 10;
	}};
	point = {{
		id = "http://www.roblox.com/asset/?id=128853357";
		weight = 10;
	}};
	dance1 = {{
		id = "http://www.roblox.com/asset/?id=182435998";
		weight = 10;
	}, {
		id = "http://www.roblox.com/asset/?id=182491037";
		weight = 10;
	}, {
		id = "http://www.roblox.com/asset/?id=182491065";
		weight = 10;
	}};
	dance2 = {{
		id = "http://www.roblox.com/asset/?id=182436842";
		weight = 10;
	}, {
		id = "http://www.roblox.com/asset/?id=182491248";
		weight = 10;
	}, {
		id = "http://www.roblox.com/asset/?id=182491277";
		weight = 10;
	}};
	dance3 = {{
		id = "http://www.roblox.com/asset/?id=182436935";
		weight = 10;
	}, {
		id = "http://www.roblox.com/asset/?id=182491368";
		weight = 10;
	}, {
		id = "http://www.roblox.com/asset/?id=182491423";
		weight = 10;
	}};
	laugh = {{
		id = "http://www.roblox.com/asset/?id=129423131";
		weight = 10;
	}};
	cheer = {{
		id = "http://www.roblox.com/asset/?id=129423030";
		weight = 10;
	}};
	charge_idle = {{
		id = "rbxassetid://14284611111";
		weight = 9;
	}};
	charge_bayonet_idle = {{
		id = "rbxassetid://14292935158";
		weight = 9;
	}};
	charge_lance_idle = {{
		id = "rbxassetid://15669227704";
		weight = 9;
	}};
	charge_run = {{
		id = "rbxassetid://14284623849";
		weight = 10;
	}};
	charge_bayonet_run = {{
		id = "rbxassetid://14292937831";
		weight = 11;
	}};
	charge_lance_run = {{
		id = "rbxassetid://15669228671";
		weight = 11;
	}};
	charge_heavy_sabre_run = {{
		id = "rbxassetid://17406602570";
		weight = 11;
	}};
}
local _ = {"dance1", "dance2", "dance3"}
local tbl_upvr = {
	wave = false;
	point = false;
	dance1 = true;
	dance2 = true;
	dance3 = true;
	laugh = false;
	cheer = false;
}

-- 新增：攀爬锁定开关（true=强制攀爬，false=恢复原逻辑）
local forceClimb = true

function configureAnimationSet(arg1, arg2) -- Line 143
	if tbl_upvr_2[arg1] ~= nil then
		for _, v in pairs(tbl_upvr_2[arg1].connections) do
			v:Disconnect()
		end
	end
	tbl_upvr_2[arg1] = {}
	tbl_upvr_2[arg1].count = 0
	tbl_upvr_2[arg1].totalWeight = 0
	tbl_upvr_2[arg1].connections = {}
	local SOME = script:FindFirstChild(arg1)
	if SOME ~= nil then
		table.insert(tbl_upvr_2[arg1].connections, SOME.ChildAdded:Connect(function(arg1_2) -- Line 158
			configureAnimationSet(arg1, arg2)
		end))
		table.insert(tbl_upvr_2[arg1].connections, SOME.ChildRemoved:Connect(function(arg1_3) -- Line 159
			configureAnimationSet(arg1, arg2)
		end))
		local var113 = 1
		for _, v_2 in pairs(SOME:GetChildren()) do
			if v_2:IsA("Animation") then
				table.insert(tbl_upvr_2[arg1].connections, v_2.Changed:Connect(function(arg1_4) -- Line 163
					configureAnimationSet(arg1, arg2)
				end))
				tbl_upvr_2[arg1][var113] = {}
				tbl_upvr_2[arg1][var113].anim = v_2
				local Weight = v_2:FindFirstChild("Weight")
				if Weight == nil then
					tbl_upvr_2[arg1][var113].weight = 1
				else
					tbl_upvr_2[arg1][var113].weight = Weight.Value
				end
				tbl_upvr_2[arg1].count = tbl_upvr_2[arg1].count + 1
				tbl_upvr_2[arg1].totalWeight = tbl_upvr_2[arg1].totalWeight + tbl_upvr_2[arg1][var113].weight
			end
		end
	end
	if tbl_upvr_2[arg1].count <= 0 then
		for i_3, v_3 in pairs(arg2) do
			v_2 = tbl_upvr_2[arg1]
			v_2[i_3] = {}
			v_2 = tbl_upvr_2[arg1][i_3]
			v_2.anim = Instance.new("Animation")
			v_2 = tbl_upvr_2[arg1][i_3].anim
			v_2.Name = arg1
			v_2 = tbl_upvr_2[arg1][i_3].anim
			v_2.AnimationId = v_3.id
			v_2 = tbl_upvr_2[arg1][i_3]
			v_2.weight = v_3.weight
			v_2 = tbl_upvr_2[arg1]
			v_2.count = tbl_upvr_2[arg1].count + 1
			v_2 = tbl_upvr_2[arg1]
			v_2.totalWeight = tbl_upvr_2[arg1].totalWeight + v_3.weight
		end
	end
end

function scriptChildModified(arg1) -- Line 196
	local var122 = tbl_upvr_4[arg1.Name]
	if var122 ~= nil then
		configureAnimationSet(arg1.Name, var122)
	end
end

script.ChildAdded:Connect(scriptChildModified)
script.ChildRemoved:Connect(scriptChildModified)

local var123
if Humanoid_upvr then
	var123 = Humanoid_upvr:FindFirstChildOfClass("Animator")
else
	var123 = nil
end
if var123 then
	for _, v_4 in ipairs(var123:GetPlayingAnimationTracks()) do
		v_4:Stop(0)
		v_4:Destroy()
	end
end

for i_5, _ in pairs(tbl_upvr_4) do
	configureAnimationSet(i_5, nil)
end

local var130_upvw = "None"
local var131_upvw = 0
local var132_upvw = 1

function stopAllAnimations() -- Line 238
	local var133
	if tbl_upvr[var18_upvw] ~= nil and tbl_upvr[var133] == false then
		if game.CollectionService:HasTag(script.Parent, "Charging") then
			var133 = "charge_idle"
			if game.CollectionService:HasTag(script.Parent, "Bayonet") then
				var133 = "charge_bayonet_idle"
			elseif script.Parent:HasTag("Lance") then
				var133 = "charge_lance_idle"
			end
		else
			var133 = "idle"
		end
	end
	var18_upvw = ""
	var19_upvw = nil
	if var21_upvw ~= nil then
		var21_upvw:Disconnect()
	end
	if var20_upvw ~= nil and var133 ~= "climb" then
		var20_upvw:Stop()
		var20_upvw:Destroy()
		var20_upvw = nil
	end
	return var133
end

function setAnimationSpeed(arg1) -- Line 272
	if arg1 ~= var22_upvw then
		var22_upvw = arg1
		var20_upvw:AdjustSpeed(var22_upvw)
	end
end

function keyFrameReachedFunc(arg1) -- Line 279
	if arg1 == "End" then
		local var134
		if tbl_upvr[var18_upvw] ~= nil and tbl_upvr[var134] == false then
			if game.CollectionService:HasTag(script.Parent, "Charging") then
				var134 = "charge_idle"
				if game.CollectionService:HasTag(script.Parent, "Bayonet") then
					var134 = "charge_bayonet_idle"
				elseif script.Parent:HasTag("Lance") then
					var134 = "charge_lance_idle"
				end
			else
				var134 = "idle"
			end
		end
		playAnimation(var134, 0, Humanoid_upvr)
		setAnimationSpeed(var22_upvw)
	end
end

local function _(arg1, arg2) -- Line 306, Named "DetermineHealthStage"
	local var135
	if arg1 <= math.round(arg2 * 0.9) then
		var135 += 1
	end
	if arg1 <= math.round(arg2 * 0.6666666666666666) then
		var135 += 1
	end
	if arg1 <= math.round(arg2 * 0.3333333333333333) then
		var135 += 1
	end
	return var135
end

Humanoid_upvr.HealthChanged:Connect(function(arg1) -- Line 326
	local var137
	if Humanoid_upvr.Parent:FindFirstChildOfClass("Tool") then
	else
		local MaxHealth = Humanoid_upvr.MaxHealth
		var137 = MaxHealth * 0.9
		var137 = 0
		if arg1 <= math.round(var137) then
			var137 += 1
		end
		if arg1 <= math.round(MaxHealth * 0.6666666666666666) then
			var137 += 1
		end
		if arg1 <= math.round(MaxHealth * 0.3333333333333333) then
			var137 += 1
		end
		local var139 = var137
		if var139 ~= var132_upvw then
			var132_upvw = var139
			stopAllAnimations()
			playAnimation("idle", 0.1, Humanoid_upvr)
		end
	end
end)

Humanoid_upvr.Parent.ChildAdded:Connect(function(arg1) -- Line 336
	if arg1:IsA("Tool") then
		stopAllAnimations()
		playAnimation("idle", 0.1, Humanoid_upvr)
	end
end)

Humanoid_upvr.Parent.ChildRemoved:Connect(function(arg1) -- Line 343
	if arg1:IsA("Tool") then
		stopAllAnimations()
		playAnimation("idle", 0.1, Humanoid_upvr)
	end
end)

local tbl_upvr_3 = {}

function playAnimation(arg1, arg2, arg3) -- Line 351
	-- 强制锁定攀爬动画：优先级最高，覆盖所有其他动画请求
	if forceClimb then
		arg1 = "climb" -- 强制动画类型为攀爬
		arg2 = 0.1 -- 固定过渡时间（平滑切换）
	end

	if arg1 == "idle" then
		if var132_upvw == 2 then
		elseif var132_upvw == 3 then
		end
		local var143 = Parent_upvr:GetAttribute("Heat") or 100
		if var143 < -600 then
		elseif var143 < -400 then
		end
		if Humanoid_upvr.Parent:FindFirstChildOfClass("Tool") then
		end
	elseif "toolidle" == "walk" then
		if var132_upvw == 2 then
		elseif var132_upvw == 3 then
		end
		local var145 = Parent_upvr:GetAttribute("Heat") or 100
		if var145 < -600 then
		elseif var145 < -400 then
		end
		if Humanoid_upvr.Parent:FindFirstChildOfClass("Tool") then
		end
	end
	local const_number = 1
	while true do
		if tbl_upvr_2.walk[const_number].weight >= math.random(1, tbl_upvr_2.walk.totalWeight) then break end
	end
	local anim_2 = tbl_upvr_2.walk[const_number + 1].anim
	if anim_2 ~= var19_upvw then
		var22_upvw = 1
		if var20_upvw ~= nil then
			var20_upvw:Stop(arg2)
		end
		var20_upvw = tbl_upvr_3[anim_2]
		if not var20_upvw then
			var20_upvw = arg3:LoadAnimation(anim_2)
			var20_upvw.Priority = Enum.AnimationPriority.Core
			tbl_upvr_3[anim_2] = var20_upvw
		end
		var20_upvw:Play(arg2)
		var18_upvw = "walk"
		var19_upvw = anim_2
		if var21_upvw ~= nil then
			var21_upvw:Disconnect()
		end
		var21_upvw = var20_upvw.KeyframeReached:Connect(keyFrameReachedFunc)
	end
end

local var149_upvw = ""
local var150_upvw
local var151_upvw
local var152_upvw

function toolKeyFrameReachedFunc(arg1) -- Line 439
	if arg1 == "End" then
		playToolAnimation(var149_upvw, 0, Humanoid_upvr)
	end
end

function playToolAnimation(arg1, arg2, arg3, arg4) -- Line 447
	local var154
	while tbl_upvr_2[arg1][var154].weight < math.random(1, tbl_upvr_2[arg1].totalWeight) do
		var154 += 1
	end
	local var155
	local anim = tbl_upvr_2[arg1][var154].anim
	if var151_upvw ~= anim then
		if var150_upvw ~= nil then
			var150_upvw:Stop()
			var150_upvw:Destroy()
			var155 = 0
		end
		var150_upvw = arg3:LoadAnimation(anim)
		if arg4 then
			var150_upvw.Priority = arg4
		end
		var150_upvw:Play(var155)
		var149_upvw = arg1
		var151_upvw = anim
		var152_upvw = var150_upvw.KeyframeReached:Connect(toolKeyFrameReachedFunc)
	end
end

function stopToolAnimations() -- Line 482
	if var152_upvw ~= nil then
		var152_upvw:Disconnect()
	end
	var149_upvw = ""
	var151_upvw = nil
	if var150_upvw ~= nil then
		var150_upvw:Stop()
		var150_upvw:Destroy()
		var150_upvw = nil
	end
	return var149_upvw
end

function onRunning(arg1) -- Line 505
	local Treadmill = Parent_upvr:GetAttribute("Treadmill")
	local var158
	if Treadmill then
		var158 = 14
	end
	if Parent_upvr:GetAttribute("WalkBackwards") then
	else
	end
	if 0.01 < var158 or Treadmill then
		local any_HasTag_result1 = game.CollectionService:HasTag(script.Parent, "Charging")
		if any_HasTag_result1 then
			if game.CollectionService:HasTag(script.Parent, "Bayonet") then
				playAnimation("charge_bayonet_run", 0.1, Humanoid_upvr)
			elseif script.Parent:HasTag("Lance") then
				playAnimation("charge_lance_run", 0.1, Humanoid_upvr)
			elseif script.Parent:HasTag("Heavy Sabre") then
				playAnimation("charge_heavy_sabre_run", 0.1, Humanoid_upvr)
			else
				playAnimation("charge_run", 0.1, Humanoid_upvr)
			end
		else
			playAnimation("walk", 0.1, Humanoid_upvr)
		end
		if var19_upvw and not any_HasTag_result1 then
			setAnimationSpeed(var158 / 16 * 1)
		end
		var17_upvw = "Running"
	else
		local var160 = "idle"
		if game.CollectionService:HasTag(script.Parent, "Charging") then
			var160 = "charge_idle"
			if game.CollectionService:HasTag(script.Parent, "Bayonet") then
				var160 = "charge_bayonet_idle"
				var17_upvw = "Standing"
			elseif script.Parent:HasTag("Lance") then
				var160 = "charge_lance_idle"
				var17_upvw = "Standing"
			end
		end
		playAnimation(var160, 0.1, Humanoid_upvr)
		var17_upvw = "Standing"
	end
end

function onDied() -- Line 556
	var17_upvw = "Dead"
end

function onJumping() -- Line 560
	if game.CollectionService:HasTag(script.Parent, "Charging") then
	else
		playAnimation("jump", 0.1, Humanoid_upvr)
		var131_upvw = 0.3
		var17_upvw = "Jumping"
	end
end

function onClimbing(arg1) -- Line 569
	playAnimation("climb", 0.1, Humanoid_upvr)
	setAnimationSpeed(1) -- 固定攀爬速度为1（原逻辑：arg1/12）
	var17_upvw = "Climbing"
end

function onGettingUp() -- Line 575
	var17_upvw = "GettingUp"
end

function onFreeFall() -- Line 579
	if var131_upvw <= 0 then
		if game.CollectionService:HasTag(script.Parent, "Charging") then return end
		playAnimation("fall", 0.3, Humanoid_upvr)
	end
	var17_upvw = "FreeFall"
end

function onFallingDown() -- Line 588
	var17_upvw = "FallingDown"
end

function onSeated() -- Line 592
	var17_upvw = "Seated"
end

function onPlatformStanding() -- Line 596
	var17_upvw = "PlatformStanding"
end

function onSwimming(arg1) -- Line 600
	if 0 < arg1 then
		var17_upvw = "Running"
	else
		var17_upvw = "Standing"
	end
end

function getTool() -- Line 608
	for _, v_6 in ipairs(Parent_upvr:GetChildren()) do
		if v_6.className == "Tool" then
			return v_6
		end
	end
	return nil
end

function getToolAnim(arg1) -- Line 615
	for _, v_7 in ipairs(arg1:GetChildren()) do
		if v_7.Name == "toolanim" and v_7.className == "StringValue" then
			return v_7
		end
	end
	return nil
end

function animateTool() -- Line 624
	if var130_upvw == "None" then
		playToolAnimation("toolnone", 0.1, Humanoid_upvr, Enum.AnimationPriority.Idle)
	else
		if var130_upvw == "Slash" then
			playToolAnimation("toolslash", 0, Humanoid_upvr, Enum.AnimationPriority.Action)
			return
		end
		if var130_upvw == "Lunge" then
			playToolAnimation("toollunge", 0, Humanoid_upvr, Enum.AnimationPriority.Action)
			return
		end
	end
end

function moveSit() -- Line 642
	Right_Shoulder_upvr.MaxVelocity = 0.15
	Left_Shoulder_upvr.MaxVelocity = 0.15
	Right_Shoulder_upvr:SetDesiredAngle(1.57)
	Left_Shoulder_upvr:SetDesiredAngle(-1.57)
	Right_Hip_upvr:SetDesiredAngle(1.57)
	Left_Hip_upvr:SetDesiredAngle(-1.57)
end

local var171_upvw = 0
local var172_upvw = 0

function move(arg1) -- Line 653
	var171_upvw = arg1
	if 0 < var131_upvw then
		var131_upvw -= arg1 - var171_upvw
	end
	local var173
	if var17_upvw == "FreeFall" and var131_upvw <= 0 then
		playAnimation("fall", 0.3, Humanoid_upvr)
	else
		if var17_upvw == "Seated" then
			playAnimation("sit", 0.5, Humanoid_upvr)
			return
		end
		if var17_upvw == "Running" then
			if game.CollectionService:HasTag(script.Parent, "Charging") then
				if game.CollectionService:HasTag(script.Parent, "Bayonet") then
					playAnimation("charge_bayonet_run", 0.1, Humanoid_upvr)
				elseif script.Parent:HasTag("Lance") then
					playAnimation("charge_lance_run", 0.1, Humanoid_upvr)
				elseif script.Parent:HasTag("Heavy Sabre") then
					playAnimation("charge_heavy_sabre_run", 0.1, Humanoid_upvr)
				else
					playAnimation("charge_run", 0.1, Humanoid_upvr)
				end
			else
				playAnimation("walk", 0.1, Humanoid_upvr)
			end
		elseif var17_upvw == "Dead" or var17_upvw == "GettingUp" or var17_upvw == "FallingDown" or var17_upvw == "Seated" or var17_upvw == "PlatformStanding" then
			stopAllAnimations()
			var173 = true
		end
	end
	if var173 then
		local var174 = 0.1 * math.sin(arg1 * 1)
		Right_Shoulder_upvr:SetDesiredAngle(var174 + 0)
		Left_Shoulder_upvr:SetDesiredAngle(var174 - 0)
		Right_Hip_upvr:SetDesiredAngle(-var174)
		Left_Hip_upvr:SetDesiredAngle(-var174)
	end
	local getTool_result1 = getTool()
	if getTool_result1 and getTool_result1:FindFirstChild("Handle") then
		local getToolAnim_result1 = getToolAnim(getTool_result1)
		if getToolAnim_result1 then
			var130_upvw = getToolAnim_result1.Value
			getToolAnim_result1.Parent = nil
			var172_upvw = arg1 + 0.3
		end
		if var172_upvw < arg1 then
			var172_upvw = 0
			var130_upvw = "None"
		end
		animateTool()
	else
		stopToolAnimations()
		var130_upvw = "None"
		var151_upvw = nil
		var172_upvw = 0
	end
end

Humanoid_upvr.Died:Connect(onDied)
Humanoid_upvr.Running:Connect(onRunning)
Humanoid_upvr.Jumping:Connect(onJumping)
Humanoid_upvr.Climbing:Connect(onClimbing)
Humanoid_upvr.GettingUp:Connect(onGettingUp)
Humanoid_upvr.FreeFalling:Connect(onFreeFall)
Humanoid_upvr.FallingDown:Connect(onFallingDown)
Humanoid_upvr.Seated:Connect(onSeated)
Humanoid_upvr.PlatformStanding:Connect(onPlatformStanding)
Humanoid_upvr.Swimming:Connect(onSwimming)

Parent_upvr:GetAttributeChangedSignal("Treadmill"):Connect(function() -- Line 747
	local var178
	if Humanoid_upvr.MoveDirection == Vector3.new(0, 0, 0) then
		var178 = 0
	else
		var178 = Humanoid_upvr.WalkSpeed
	end
	onRunning(var178)
end)

any_new_result1_upvr:Connect(game.CollectionService:GetInstanceAddedSignal("Charging"), function(arg1) -- Line 751
	if arg1 == script.Parent then
		if var18_upvw == "walk" then
			stopAllAnimations()
			if game.CollectionService:HasTag(script.Parent, "Bayonet") then
				playAnimation("charge_bayonet_run", 0.05, Humanoid_upvr)
			else
				if script.Parent:HasTag("Lance") then
					playAnimation("charge_lance_run", 0.05, Humanoid_upvr)
					return
				end
				playAnimation("charge_run", 0.05, Humanoid_upvr)
			end
		end
		if var18_upvw == "idle" then
			stopAllAnimations()
			if game.CollectionService:HasTag(script.Parent, "Bayonet") then
				playAnimation("charge_bayonet_idle", 0.05, Humanoid_upvr)
				return
			end
			if script.Parent:HasTag("Lance") then
				playAnimation("charge_lance_idle", 0.05, Humanoid_upvr)
				return
			end
			playAnimation("charge_idle", 0.05, Humanoid_upvr)
		end
	end
end)

any_new_result1_upvr:Connect(game.CollectionService:GetInstanceRemovedSignal("Charging"), function(arg1) -- Line 779
	if arg1 == script.Parent then
		if var18_upvw == "charge_run" or var18_upvw == "charge_bayonet_run" or var18_upvw == "charge_lance_run" then
			stopAllAnimations()
			playAnimation("walk", 0, Humanoid_upvr)
			return
		end
		if var18_upvw == "charge_idle" then
			stopAllAnimations()
			playAnimation("idle", 0, Humanoid_upvr)
		end
	end
end)

any_new_result1_upvr:Connect(game.CollectionService:GetInstanceAddedSignal("Bayonet"), function(arg1) -- Line 791
	if arg1 == script.Parent then
		if not game.CollectionService:HasTag(script.Parent, "Charging") then return end
		if var18_upvw == "charge_run" or var18_upvw == "walk" then
			stopAllAnimations()
			playAnimation("charge_bayonet_run", 0.05, Humanoid_upvr)
			return
		end
		if var18_upvw == "charge_idle" or var18_upvw == "idle" or var18_upvw == "toolidle" then
			stopAllAnimations()
			playAnimation("charge_bayonet_idle", 0.05, Humanoid_upvr)
		end
	end
end)

any_new_result1_upvr:Connect(game.CollectionService:GetInstanceRemovedSignal("Bayonet"), function(arg1) -- Line 806
	if arg1 == script.Parent then
		if not game.CollectionService:HasTag(script.Parent, "Charging") then return end
		if var18_upvw == "charge_bayonet_run" then
			stopAllAnimations()
			playAnimation("charge_run", 0.05, Humanoid_upvr)
			return
		end
		if var18_upvw == "charge_bayonet_idle" then
			stopAllAnimations()
			playAnimation("charge_idle", 0.05, Humanoid_upvr)
		end
	end
end)

any_new_result1_upvr:Connect(game.CollectionService:GetInstanceAddedSignal("Lance"), function(arg1) -- Line 820
	if arg1 == script.Parent then
		if not game.CollectionService:HasTag(script.Parent, "Charging") then return end
		if var18_upvw == "charge_run" then
			stopAllAnimations()
			playAnimation("charge_lance_run", 0.05, Humanoid_upvr)
			return
		end
		if var18_upvw == "charge_idle" then
			stopAllAnimations()
			playAnimation("charge_lance_idle", 0.05, Humanoid_upvr)
		end
	end
end)

any_new_result1_upvr:Connect(game.CollectionService:GetInstanceRemovedSignal("Lance"), function(arg1) -- Line 834
	if arg1 == script.Parent then
		if not game.CollectionService:HasTag(script.Parent, "Charging") then return end
		if var18_upvw == "charge_lance_run" then
			stopAllAnimations()
			playAnimation("charge_run", 0.05, Humanoid_upvr)
			return
		end
		if var18_upvw == "charge_lance_idle" then
			stopAllAnimations()
			playAnimation("charge_idle", 0.05, Humanoid_upvr)
		end
	end
end)

any_new_result1_upvr:Connect(Humanoid_upvr:GetPropertyChangedSignal("WalkSpeed"), function() -- Line 848
	local var186 = var17_upvw
	if var186 == "Running" then
		if Parent_upvr:GetAttribute("WalkBackwards") then
			var186 = -1
		else
			var186 = 1
		end
		setAnimationSpeed(Humanoid_upvr.WalkSpeed / 16 * var186)
	end
end)

any_new_result1_upvr:Connect(script.Destroying, function() -- Line 855
	print('['..script.Name.."] Destroyed called.")
	any_new_result1_upvr:Destroy()
end)

any_new_result1_upvr:Connect(script.Parent.Destroying, function() -- Line 860
	print('['..script.Name.."] Destroyed of character called.")
	any_new_result1_upvr:Destroy()
end)

-- 新增：强制锁定Humanoid攀爬状态，防止被其他状态打断
if forceClimb then
	-- 立即设置为攀爬状态
	Humanoid_upvr:ChangeState(Enum.HumanoidStateType.Climbing)
	-- 监听状态变化，自动恢复攀爬状态
	Humanoid_upvr.StateChanged:Connect(function(oldState, newState)
		if forceClimb and newState ~= Enum.HumanoidStateType.Climbing then
			task.wait() -- 延迟一帧避免状态冲突
			Humanoid_upvr:ChangeState(Enum.HumanoidStateType.Climbing)
		end
	end)
end

playAnimation("idle", 0.1, Humanoid_upvr)
var17_upvw = "Standing"

any_new_result1_upvr:Add(task.spawn(function() -- Line 871
	while Parent_upvr.Parent ~= nil and script do
		local _, wait_result2 = wait(0.1)
		move(wait_result2)
	end
	any_new_result1_upvr:Destroy()
end))
