local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/VeaMSRZK"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "Test"
LBL.TextColor3 = Color3.new(155, 155, 155)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("标准时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end

OrionLib:MakeNotification({
                    Name = "正在开启反挂机请稍等⭐...",
                    Content = "AFK 开启中⭐...",
                    Time = 2
                })     
                
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)      

OrionLib:MakeNotification({
                    Name = "反挂机已开启成功",
                    Content = "AFK",
                    Time = 1
                })
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "✨⭐IceCyen中心⭐✨", HidePremium = false, SaveConfig =true,IntroText="Ice酱正在为你加载脚本捏~", ConfigFolder = "文件存放名"})
local Tab = Window:MakeTab({
	Name = "[1] 主页",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("作者","Cyen_Icexing")
Tab:AddParagraph("作者B站","Icexing才不是小南娘")
Tab:AddParagraph("非常low的脚本[还在更新]")
Tab:AddParagraph("注意！","该脚本最开始由 北雾 开始创作并启发")
Tab:AddParagraph("贩卖","该脚本永久免费，圈钱的我操你妈逼，祝你骨灰飞扬千万家")
Tab:AddParagraph("其他","如果要拿该脚本拍视频，请在简介写上我的名字，否则我将把你拉入黑名单!")


Tab:AddButton ({
	Name = "[+] 复制群⭐",
	Callback = function ()
	 setclipboard("478743611")
	 OrionLib:MakeNotification({
                    Name = "信息",
                    Content = "复制请在粘贴板中查看",
                    Time = 2
                })
	end
})

local Tab = Window:MakeTab({
	Name = "[2] 通用⭐✨",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddSlider({

	Name = "[+] 速度",

	Min = 16,

	Max = 200,

	Default = 16,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end    

})
Tab:AddSlider({

	Name = "[+] 跳跃高度",

	Min = 50,

	Max = 200,

	Default = 50,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end    

})
Tab:AddTextbox({

	Name = "[+] 移动速度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置速度:  "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.."   |速度",
                    Content = "成功",
                    Time = 3
                })
	end
})
Tab:AddTextbox({
	Name = "[+] 重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置重力:  "..game.Workspace.Gravity.."   |重力",
                    Content = "成功",
                    Time = 3
                })
	end
})
Tab:AddTextbox({
	Name = "[+] 跳跃高度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置跳跃高度:  "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.."   |高度",
                    Content = "成功",
                    Time = 3
                })
	end
})

local Section = Tab:AddSection({
	Name = "[↓] 以下为通用功能"
})

Tab:AddToggle({
	Name = "[+] 夜视",
	Default = false,
	Callback = function(Value)
		if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)		    		    

		end

	end	
})

Tab:AddToggle({
	Name = "[+] 穿墙",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})

Tab:AddButton({
  Name = "[+] 飞行V3",
  Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Universal-Fly-V3-16477"))()
  end
})

Tab:AddButton({
  Name = "[+] 低配显示玩家",
  Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-script-espp-24243"))()
  end
})

Tab:AddButton({
  Name = "[+] Btools工具",
  Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Universal-BTools-or-Tools-24223"))()
  end
})

Tab:AddButton({
  Name = "[+] 传送工具",
  Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/obf_gtQG8WW70awuM1u2O6I8Z3j007xzGnfC0vw6D6Tzj226R20KPLyKZR8MbK5V57mu.lua.txt'),true))()
  end
})

Tab:AddButton({
  Name = "[+] 视角锁",
  Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Shiftlock-22314"))()
  end
})

Tab:AddButton({
  Name = "[+] 传送玩家",
  Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Universal-Script-To-Teleport-Players-18497"))()
  end
})

Tab:AddButton({
  Name = "[+] 自定义键盘",
  Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
  end
})