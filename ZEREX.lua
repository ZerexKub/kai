local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/kickTh/New-Ui/main/discord%20lib%20(1).txt")()

local win = DiscordLib:Window("ZEREX HUB")


    spawn(function()
        pcall(function()
            while wait() do
                if _G.Tp or _G.AutoObs == true then
                    if not game:GetService("Workspace"):FindFirstChild("LOL") then
                         local isonteen = Instance.new("Part")
                         isonteen.Name = "LOL"
                         isonteen.Parent = game.Workspace
                         isonteen.Anchored = true
                         isonteen.Transparency = 0
                         isonteen.Size = Vector3.new(10,0.5,10)
                         isonteen.Material = "Neon"
                         while true do 
                             wait(0.1) 
                             game:GetService('TweenService'):Create(
                                 isonteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                             {Color = Color3.fromRGB(255, 0, 0)}):Play() 
                             wait(.5)
 
                             game:GetService('TweenService'):Create(
                                 isonteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                             {Color = Color3.fromRGB(255, 155, 0)}):Play() 
                             wait(.5)
 
                             game:GetService('TweenService'):Create(
                                 isonteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                             {Color = Color3.fromRGB(255, 255, 0)}):Play() 
                             wait(.5)
 
                             game:GetService('TweenService'):Create(
                                 isonteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                             {Color = Color3.fromRGB(0, 255, 0)}):Play() 
                             wait(.5)
 
                             game:GetService('TweenService'):Create(
                                 isonteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                             {Color = Color3.fromRGB(0, 255, 255)}):Play() 
                             wait(.5)
 
                             game:GetService('TweenService'):Create(
                                 isonteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                             {Color = Color3.fromRGB(0, 155, 255)}):Play() 
                             wait(.5)
 
                             game:GetService('TweenService'):Create(
                                 isonteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                             {Color = Color3.fromRGB(255, 0, 255)}):Play() 
                             wait(.5)
 
                             game:GetService('TweenService'):Create(
                                 isonteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                             {Color = Color3.fromRGB(255, 0, 155)}):Play() 
                             wait(.5)
                         end 
                     elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                         game.Workspace["LOL"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.92,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                     end
                 else
                     if game:GetService("Workspace"):FindFirstChild("LOL") then
                         game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
                    end
                end
            end
        end)
    end)
    
    function topos(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 250 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
    end
    
    function GetDistance(target)
        return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
    end
    
    function TP()
        if Distance < 10000 then
            Speed = 1000
        elseif Distance >= 1000 then
            Speed = 1000
        end
        game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        ):Play()
        _G.Clip = true
        wait(Distance/Speed)
        _G.Clip = false
    end

              topos(CFrame.new(-64.22261810302734, 100.86492156982422, 322.6039123535156))
              
              wait(2.3)
              
              topos(CFrame.new(-58.1266747, 100.404236, 9489.41992, -0.998962402, -2.69666817e-10, -0.0455418751, -1.894392e-10, 1, -1.76593917e-09, 0.0455418751, -1.75547954e-09, -0.998962402))
              wait(60)
              
              topos(CFrame.new(-58.1266747, -360.404236, 9489.41992, -0.998962402, -2.69666817e-10, -0.0455418751, -1.894392e-10, 1, -1.76593917e-09, 
                  0.0455418751, -1.75547954e-09, -0.998962402))
              
              wait(10)
              
              loadstring(game:HttpGet('https://pastebin.com/raw/7DEAz1i7'))()


local MainS = win:Server("Main","")
local Main = MainS:Channel("Main")

Main:Toggle("AutoFarm Gold",false,function(value)
    _G.Tp = value
end)
