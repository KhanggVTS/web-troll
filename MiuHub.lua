local Lib=loadstring(game:HttpGet("https://raw.githubusercontent.com/Alexchad-source/Alexchad-Hub/refs/heads/main/MaybeAlexchadlib.lua"))()
local P=game:GetService("Players")
local RS=game:GetService("RunService")
local UIS=game:GetService("UserInputService")
local TS=game:GetService("TweenService")
local TP=game:GetService("TeleportService")
local HS=game:GetService("HttpService")
local LT=game:GetService("Lighting")
local VIM=game:GetService("VirtualInputManager")
local VU=game:GetService("VirtualUser")
local RP=game:GetService("ReplicatedStorage")
local WS=workspace
local LP=P.LocalPlayer
local C,H,RT,CM
local function UC()C=LP.Character if C then H=C:FindFirstChildOfClass("Humanoid")RT=C:FindFirstChild("HumanoidRootPart")end CM=WS.CurrentCamera end
UC()LP.CharacterAdded:Connect(function()task.wait(0.2)UC()end)
local S={W=16,J=50,FS=50,SS=10,AS=0.1,FP=5000,KA=30,FR=50,RD=0.05,NR=100,NP=999999,AV=-100,SM="Miu Hub OP",SD=3}
local CN={}local function AC(c)table.insert(CN,c)end
local BG,BV
local function SF()if BG then BG:Destroy()BG=nil end if BV then BV:Destroy()BV=nil end if H then H.PlatformStand=false end end
local HL={}local ESPD={}local SP={}local SV=nil
local W=Lib:CreateWindow({Name="Miu Hub",Subtitle="Universal Script",Version="v1.0.00",LoadingTitle="Miu Hub",LoadingSubtitle="Loading...",Theme="Dark",ToggleKey=Enum.KeyCode.RightShift})
local function NFY(t,c,d,tp)pcall(function()W:Notify({Title=t,Content=c,Duration=d or 3,Type=tp or"Info"})end)end
local function DLG(t,c,b1,b2,cb1,cb2)pcall(function()W:Dialog({Title=t,Content=c,Buttons={{Title=b1,Callback=cb1 or function()end},{Title=b2,Primary=true,Callback=cb2 or function()end}}})end)end
local function GNP(r)local n,s=nil,r or math.huge if not RT then return nil,0 end for _,p in ipairs(P:GetPlayers())do if p~=LP and p.Character and p.Character:FindFirstChild("HumanoidRootPart")then local d=(RT.Position-p.Character.HumanoidRootPart.Position).Magnitude if d<s then s=d n=p end end end return n,s end
local function GPIR(r)local t={}if not RT then return t end for _,p in ipairs(P:GetPlayers())do if p~=LP and p.Character and p.Character:FindFirstChild("HumanoidRootPart")then if(RT.Position-p.Character.HumanoidRootPart.Position).Magnitude<=r then table.insert(t,p)end end end return t end
local function IA()return C and H and RT and H.Health>0 end
local function TPTo(t)if not RT then return end if typeof(t)=="Vector3"then RT.CFrame=CFrame.new(t)elseif typeof(t)=="CFrame"then RT.CFrame=t end end
local function STP(target,spd)if not RT or not target then return end local goal=typeof(target)=="Vector3"and CFrame.new(target)or target local tw=TS:Create(RT,TweenInfo.new(spd or 0.5,Enum.EasingStyle.Quad),{CFrame=goal})tw:Play()end
local function CESP(pl)task.spawn(function()local chr=pl.Character or pl.CharacterAdded:Wait()if not chr or HL[pl]then return end local hl=Instance.new("Highlight")hl.FillColor=Color3.fromRGB(255,60,60)hl.FillTransparency=0.4 hl.OutlineColor=Color3.fromRGB(255,255,255)hl.OutlineTransparency=0 hl.Adornee=chr hl.Parent=chr HL[pl]=hl pl.CharacterAdded:Connect(function(nc)task.wait(0.2)if HL[pl]then HL[pl].Adornee=nc HL[pl].Parent=nc end end)end)end
local function CESPB(pl)task.spawn(function()local chr=pl.Character or pl.CharacterAdded:Wait()if not chr then return end local bx=Drawing.new("Square")bx.Visible=false bx.Color=Color3.fromRGB(255,0,0)bx.Thickness=2 bx.Filled=false local tr=Drawing.new("Line")tr.Visible=false tr.Color=Color3.fromRGB(255,0,0)tr.Thickness=1 local nm=Drawing.new("Text")nm.Visible=false nm.Color=Color3.fromRGB(255,255,255)nm.Size=14 nm.Center=true nm.Outline=true ESPD[pl]={Box=bx,Tracer=tr,Name=nm}pl.CharacterAdded:Connect(function(nc)task.wait(0.2)end)end)end
local function UESP()AC(RS.RenderStepped:Connect(function()if not CM or not RT then return end for pl,dr in pairs(ESPD)do if pl.Character and pl.Character:FindFirstChild("HumanoidRootPart")and pl.Character:FindFirstChild("Head")then local rp,ron=CM:WorldToScreenPoint(pl.Character.HumanoidRootPart.Position)local hp,hon=CM:WorldToScreenPoint(pl.Character.Head.Position)if ron then local dist=(RT.Position-pl.Character.HumanoidRootPart.Position).Magnitude if dr.Box then local h=(hp.Y-rp.Y)*1.5 local w=h*0.5 dr.Box.Position=Vector2.new(rp.X-w/2,rp.Y-h)dr.Box.Size=Vector2.new(w,h)dr.Box.Visible=true end if dr.Tracer then dr.Tracer.From=CM.ViewportSize/2 dr.Tracer.To=rp dr.Tracer.Visible=true end if dr.Name then dr.Name.Position=Vector2.new(rp.X,rp.Y-40)dr.Name.Text=pl.Name.." ["..math.floor(dist).."m]"dr.Name.Visible=true end end end end end))end
local function SFLY()if not RT then return end BG=Instance.new("BodyGyro")BG.P=9e4 BG.MaxTorque=Vector3.new(9e9,9e9,9e9)BG.CFrame=RT.CFrame BG.Parent=RT BV=Instance.new("BodyVelocity")BV.MaxForce=Vector3.new(9e9,9e9,9e9)BV.Velocity=Vector3.zero BV.Parent=RT if H then H.PlatformStand=true end AC(RS.RenderStepped:Connect(function()if not BG or not BV then return end BG.CFrame=CM.CFrame local d=Vector3.zero if UIS:IsKeyDown(Enum.KeyCode.W)then d+=CM.CFrame.LookVector end if UIS:IsKeyDown(Enum.KeyCode.S)then d-=CM.CFrame.LookVector end if UIS:IsKeyDown(Enum.KeyCode.A)then d-=CM.CFrame.RightVector end if UIS:IsKeyDown(Enum.KeyCode.D)then d+=CM.CFrame.RightVector end if UIS:IsKeyDown(Enum.KeyCode.Space)then d+=Vector3.new(0,1,0)end if UIS:IsKeyDown(Enum.KeyCode.LeftShift)then d-=Vector3.new(0,1,0)end if UIS:IsKeyDown(Enum.KeyCode.E)then d+=Vector3.new(0,3,0)end if UIS:IsKeyDown(Enum.KeyCode.Q)then d-=Vector3.new(0,3,0)end BV.Velocity=d*S.FS end))end
local function EESP()for _,p in ipairs(P:GetPlayers())do if p~=LP then CESP(p)CESPB(p)end end AC(P.PlayerAdded:Connect(function(p)CESP(p)CESPB(p)end))AC(P.PlayerRemoving:Connect(function(p)if HL[p]then HL[p]:Destroy()HL[p]=nil end if ESPD[p]then for _,d in pairs(ESPD[p])do d:Remove()end ESPD[p]=nil end end))UESP()end
local function DESP()for _,hl in pairs(HL)do hl:Destroy()end HL={}for _,d in pairs(ESPD)do for _,v in pairs(d)do v:Remove()end end ESPD={}end
local function KAURA()AC(RS.Heartbeat:Connect(function()if not IA()then return end local plrs=GPIR(S.KA)for _,p in ipairs(plrs)do if p.Character and p.Character:FindFirstChild("Humanoid")then local h=p.Character.Humanoid if h.Health>0 then h:TakeDamage(999)end end end end))end
local function FLING()AC(RS.Heartbeat:Connect(function()if not RT then return end for _,p in ipairs(P:GetPlayers())do if p~=LP and p.Character and p.Character:FindFirstChild("HumanoidRootPart")then local tr=p.Character.HumanoidRootPart tr.Velocity=(tr.Position-RT.Position).Unit*S.FP tr.RotVelocity=Vector3.new(math.random(-100,100),math.random(-100,100),math.random(-100,100))end end end))end
local function AIMBOT()AC(RS.RenderStepped:Connect(function()if not CM then return end local n,nd=nil,200 local mp=UIS:GetMouseLocation()for _,p in ipairs(P:GetPlayers())do if p~=LP and p.Character and p.Character:FindFirstChild("Head")then local ps,on=CM:WorldToScreenPoint(p.Character.Head.Position)if on then local d=(Vector2.new(ps.X,ps.Y)-mp).Magnitude if d<nd then nd=d n=p end end end end if n and n.Character and n.Character:FindFirstChild("Head")then local tp=CM:WorldToScreenPoint(n.Character.Head.Position)mousemoverel((tp.X-mp.X)*S.AS,(tp.Y-mp.Y)*S.AS)end end))end
local function TBOT()AC(RS.RenderStepped:Connect(function()local n=GNP(200)if n then VIM:SendMouseButtonEvent(0,0,0,true,game,0)task.wait(0.05)VIM:SendMouseButtonEvent(0,0,0,false,game,0)end end))end
local function RFIRE()AC(RS.RenderStepped:Connect(function()if UIS:IsMouseButtonPressed(0)then VIM:SendMouseButtonEvent(0,0,0,true,game,0)task.wait(S.RD)VIM:SendMouseButtonEvent(0,0,0,false,game,0)end end))end
local function AFARM()AC(RS.Heartbeat:Connect(function()if not IA()then return end local n=GNP(S.FR)if n and n.Character and n.Character:FindFirstChild("HumanoidRootPart")then RT.CFrame=n.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,3)VIM:SendMouseButtonEvent(0,0,0,true,game,0)task.wait(0.1)VIM:SendMouseButtonEvent(0,0,0,false,game,0)end end))end
local function ACOLLECT()AC(RS.Heartbeat:Connect(function()if not RT then return end for _,obj in ipairs(WS:GetDescendants())do if obj:IsA("Part")and(obj.Name:lower():find("coin")or obj.Name:lower():find("gem")or obj.Name:lower():find("orb")or obj.Name:lower():find("drop"))then if(RT.Position-obj.Position).Magnitude<=S.FR then firetouchinterest(RT,obj,0)firetouchinterest(RT,obj,1)end end end end))end
local function SPINBOT()AC(RS.RenderStepped:Connect(function()if RT then RT.CFrame=RT.CFrame*CFrame.Angles(0,math.rad(S.SS),0)end end))end
local function NUKER()AC(RS.Heartbeat:Connect(function()if not RT then return end for _,p in ipairs(P:GetPlayers())do if p~=LP and p.Character and p.Character:FindFirstChild("HumanoidRootPart")then local dist=(RT.Position-p.Character.HumanoidRootPart.Position).Magnitude if dist<=S.NR then local ex=Instance.new("Explosion")ex.Position=p.Character.HumanoidRootPart.Position ex.BlastRadius=S.NR ex.BlastPressure=S.NP ex.Parent=WS end end end end))end
local function ANTIVOID()AC(RS.Heartbeat:Connect(function()if RT and RT.Position.Y<S.AV then RT.CFrame=CFrame.new(RT.Position.X,S.AV+50,RT.Position.Z)end end))end
local function INVALL()for _,p in ipairs(P:GetPlayers())do if p~=LP and p.Character then for _,pt in ipairs(p.Character:GetDescendants())do if pt:IsA("BasePart")then pt.Transparency=0.95 end end end end end
local function UNINVALL()for _,p in ipairs(P:GetPlayers())do if p~=LP and p.Character then for _,pt in ipairs(p.Character:GetDescendants())do if pt:IsA("BasePart")then pt.Transparency=0 end end end end end
local function SPAMCHAT(msg)AC(RS.Heartbeat:Connect(function()local args={[1]=msg or S.SM,[2]="All"}pcall(function()RP.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))end)task.wait(S.SD)end))end
local function CRASHSRV()for i=1,100 do task.spawn(function()while true do local p=Instance.new("Part")p.Size=Vector3.new(999,999,999)p.Position=Vector3.new(math.random(-9999,9999),math.random(-9999,9999),math.random(-9999,9999))p.Parent=WS task.wait()end end)end end
local function TPALL()for _,p in ipairs(P:GetPlayers())do if p~=LP and p.Character and p.Character:FindFirstChild("HumanoidRootPart")and RT then p.Character.HumanoidRootPart.CFrame=RT.CFrame*CFrame.new(0,0,5)end end end
local function GOTOPL(name)for _,p in ipairs(P:GetPlayers())do if p.Name:lower():find(name:lower())and p.Character and p.Character:FindFirstChild("HumanoidRootPart")then TPTo(p.Character.HumanoidRootPart.CFrame*CFrame.new(0,3,0))return true end end return false end
local function BRINGPL(name)for _,p in ipairs(P:GetPlayers())do if p.Name:lower():find(name:lower())and p.Character and p.Character:FindFirstChild("HumanoidRootPart")and RT then p.Character.HumanoidRootPart.CFrame=RT.CFrame*CFrame.new(0,0,5)return true end end return false end
local function SPECTPL(name)for _,p in ipairs(P:GetPlayers())do if p.Name:lower():find(name:lower())and p.Character and p.Character:FindFirstChild("Humanoid")then CM.CameraSubject=p.Character.Humanoid return true end end return false end
local function LOCKCHAR()if RT then RT.Anchored=true end end
local function UNLOCKCHAR()if RT then RT.Anchored=false end end
local function SRVHOP()local ok,data=pcall(function()return HS:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))end)if ok then local s={}for _,v in ipairs(data.data)do if v.playing<v.maxPlayers and v.id~=game.JobId then table.insert(s,v.id)end end if#s>0 then TP:TeleportToPlaceInstance(game.PlaceId,s[math.random(1,#s)],LP)else NFY("Error","No servers!",3,"Error")end end end
local function BOOSTFPS()for _,v in ipairs(WS:GetDescendants())do if v:IsA("Part")and v.Material==Enum.Material.Grass then v.Material=Enum.Material.SmoothPlastic end end LT.GlobalShadows=false LT.FogEnd=100 for _,v in ipairs(LT:GetChildren())do if v:IsA("PostEffect")then v:Destroy()end end for _,v in ipairs(WS:GetDescendants())do if v:IsA("Decal")or v:IsA("Texture")then v:Destroy()end end NFY("FPS","Boosted!",2,"Success")end
local function AUTOSELL()for _,v in ipairs(WS:GetDescendants())do if v:IsA("RemoteEvent")and(v.Name:lower():find("sell")or v.Name:lower():find("shop"))then pcall(function()v:FireServer()end)end end NFY("Farm","Sold!",2,"Success")end
local function ONESHOT()for _,p in ipairs(P:GetPlayers())do if p~=LP and p.Character and p.Character:FindFirstChild("Humanoid")then p.Character.Humanoid.Health=0 end end NFY("Combat","Done!",2,"Success")end
local function EXPLODEALL()for _,p in ipairs(P:GetPlayers())do if p~=LP and p.Character and p.Character:FindFirstChild("HumanoidRootPart")then local ex=Instance.new("Explosion")ex.Position=p.Character.HumanoidRootPart.Position ex.BlastRadius=50 ex.BlastPressure=999999 ex.Parent=WS end end NFY("Combat","Boom!",2,"Success")end
local function FREEZEALL()for _,p in ipairs(P:GetPlayers())do if p~=LP and p.Character and p.Character:FindFirstChild("HumanoidRootPart")then p.Character.HumanoidRootPart.Anchored=true end end NFY("Fun","Frozen!",2,"Success")end
local function UNFREEZEALL()for _,p in ipairs(P:GetPlayers())do if p~=LP and p.Character and p.Character:FindFirstChild("HumanoidRootPart")then p.Character.HumanoidRootPart.Anchored=false end end NFY("Fun","Unfrozen!",2,"Success")end
local function SITALL()for _,p in ipairs(P:GetPlayers())do if p.Character and p.Character:FindFirstChild("Humanoid")then p.Character.Humanoid.Sit=true end end NFY("Fun","Sitting!",2,"Success")end
local function SETSPD(v)S.W=v if H then H.WalkSpeed=v end end
local function SETJMP(v)S.J=v if H then H.JumpPower=v end end
local function SETGRAV(v)WS.Gravity=v end
local function SETFOV(v)if CM then CM.FieldOfView=v end end
local function SETFLYSPD(v)S.FS=v NFY("Fly","Speed: "..v,2,"Success")end
local function SETSPINSPD(v)S.SS=v NFY("Spin","Speed: "..v,2,"Success")end
local function SETAIMSM(v)S.AS=v NFY("Aim","Smooth: "..v,2,"Success")end
local function SETFLINGP(v)S.FP=v NFY("Fling","Power: "..v,2,"Success")end
local function SETKAR(v)S.KA=v NFY("Aura","Range: "..v,2,"Success")end
local function SETFARMR(v)S.FR=v NFY("Farm","Range: "..v,2,"Success")end
local function SETNUKER(v)S.NR=v NFY("Nuke","Range: "..v,2,"Success")end
local function SETRD(v)S.RD=v NFY("Rapid","Delay: "..v.."s",2,"Success")end

local T1=W:CreateTab({Name="Movement"})
T1:CreateSection("Walk Speed (Click to set)")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")
T1:CreateButton({Name="16 (Default)",Callback=function()SETSPD(16)end})
T1:CreateButton({Name="25",Callback=function()SETSPD(25)end})
T1:CreateButton({Name="50",Callback=function()SETSPD(50)end})
T1:CreateButton({Name="75",Callback=function()SETSPD(75)end})
T1:CreateButton({Name="100",Callback=function()SETSPD(100)end})
T1:CreateButton({Name="150",Callback=function()SETSPD(150)end})
T1:CreateButton({Name="200",Callback=function()SETSPD(200)end})
T1:CreateButton({Name="300",Callback=function()SETSPD(300)end})
T1:CreateButton({Name="400",Callback=function()SETSPD(400)end})
T1:CreateButton({Name="500",Callback=function()SETSPD(500)end})

T1:CreateSection("Jump Power (Click to set)")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")
T1:CreateButton({Name="50 (Default)",Callback=function()SETJMP(50)end})
T1:CreateButton({Name="75",Callback=function()SETJMP(75)end})
T1:CreateButton({Name="100",Callback=function()SETJMP(100)end})
T1:CreateButton({Name="150",Callback=function()SETJMP(150)end})
T1:CreateButton({Name="200",Callback=function()SETJMP(200)end})
T1:CreateButton({Name="300",Callback=function()SETJMP(300)end})
T1:CreateButton({Name="400",Callback=function()SETJMP(400)end})
T1:CreateButton({Name="500",Callback=function()SETJMP(500)end})
T1:CreateButton({Name="750",Callback=function()SETJMP(750)end})
T1:CreateButton({Name="1000",Callback=function()SETJMP(1000)end})

T1:CreateSection("Gravity (Click to set)")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")
T1:CreateButton({Name="196 (Normal)",Callback=function()SETGRAV(196)NFY("Gravity","Normal",2,"Success")end})
T1:CreateButton({Name="150",Callback=function()SETGRAV(150)NFY("Gravity","150",2,"Success")end})
T1:CreateButton({Name="100",Callback=function()SETGRAV(100)NFY("Gravity","100",2,"Success")end})
T1:CreateButton({Name="75",Callback=function()SETGRAV(75)NFY("Gravity","75",2,"Success")end})
T1:CreateButton({Name="50",Callback=function()SETGRAV(50)NFY("Gravity","Low",2,"Success")end})
T1:CreateButton({Name="30",Callback=function()SETGRAV(30)NFY("Gravity","30",2,"Success")end})
T1:CreateButton({Name="15",Callback=function()SETGRAV(15)NFY("Gravity","15",2,"Success")end})
T1:CreateButton({Name="5",Callback=function()SETGRAV(5)NFY("Gravity","5",2,"Success")end})
T1:CreateButton({Name="0 (Zero)",Callback=function()SETGRAV(0)NFY("Gravity","Zero!",2,"Success")end})
T1:CreateButton({Name="-50 (Moon)",Callback=function()SETGRAV(-50)NFY("Gravity","Moon!",2,"Success")end})

T1:CreateSection("Jump Modes")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")
T1:CreateToggle({Name="BHop",Flag="BH",CurrentValue=false,Callback=function(v)if v then AC(RS.Stepped:Connect(function()if IA()and UIS:IsKeyDown(Enum.KeyCode.Space)then H:Move(Vector3.new(0,H.JumpPower,0))end end))end end})
T1:CreateToggle({Name="Infinite Jump",Flag="IJ",CurrentValue=false,Callback=function(v)if v then AC(UIS.JumpRequest:Connect(function()if IA()then H:ChangeState(Enum.HumanoidStateType.Jumping)end end))end end})
T1:CreateToggle({Name="Auto Jump",Flag="AJ",CurrentValue=false,Callback=function(v)if v then AC(RS.Heartbeat:Connect(function()if IA()then H.Jump=true end end))end end})

T1:CreateSection("Fly System")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")
T1:CreateToggle({Name="Fly (WASD/E/Q/Space/Shift)",Flag="FL",CurrentValue=false,Callback=function(v)if v then SFLY()else SF()end end})
T1:CreateButton({Name="Fly Speed: 50",Callback=function()SETFLYSPD(50)end})
T1:CreateButton({Name="Fly Speed: 100",Callback=function()SETFLYSPD(100)end})
T1:CreateButton({Name="Fly Speed: 200",Callback=function()SETFLYSPD(200)end})
T1:CreateButton({Name="Fly Speed: 350",Callback=function()SETFLYSPD(350)end})
T1:CreateButton({Name="Fly Speed: 500",Callback=function()SETFLYSPD(500)end})
T1:CreateButton({Name="Fly Speed: 750",Callback=function()SETFLYSPD(750)end})
T1:CreateButton({Name="Fly Speed: 1000",Callback=function()SETFLYSPD(1000)end})
T1:CreateButton({Name="Fly Speed: 2000",Callback=function()SETFLYSPD(2000)end})
T1:CreateButton({Name="Fly Speed: 5000",Callback=function()SETFLYSPD(5000)end})

T1:CreateSection("Noclip & More")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")T1:CreateSection("")
T1:CreateToggle({Name="Noclip",Flag="NC",CurrentValue=false,Callback=function(v)if v then AC(RS.Stepped:Connect(function()if C then for _,p in ipairs(C:GetDescendants())do if p:IsA("BasePart")then p.CanCollide=false end end end end))else if C then for _,p in ipairs(C:GetDescendants())do if p:IsA("BasePart")then p.CanCollide=true end end end end end})
T1:CreateToggle({Name="Lock Character",Flag="LC",CurrentValue=false,Callback=function(v)if v then LOCKCHAR()else UNLOCKCHAR()end end})
T1:CreateToggle({Name="Anti Void",Flag="AV",CurrentValue=false,Callback=function(v)if v then ANTIVOID()end end})

local T2=W:CreateTab({Name="Combat"})
T2:CreateSection("God Mode & Heal")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")
T2:CreateToggle({Name="God Mode",Flag="GM",CurrentValue=false,Callback=function(v)if v then AC(RS.Heartbeat:Connect(function()if IA()then H.Health=H.MaxHealth end end))end end})
T2:CreateToggle({Name="Auto Heal",Flag="AH",CurrentValue=false,Callback=function(v)if v then AC(RS.Heartbeat:Connect(function()if IA()and H.Health<H.MaxHealth then H.Health=H.Health+5 end end))end end})

T2:CreateSection("Kill Aura")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")
T2:CreateToggle({Name="Kill Aura",Flag="KA",CurrentValue=false,Callback=function(v)if v then KAURA()end end})
T2:CreateButton({Name="Range: 10",Callback=function()SETKAR(10)end})
T2:CreateButton({Name="Range: 20",Callback=function()SETKAR(20)end})
T2:CreateButton({Name="Range: 30",Callback=function()SETKAR(30)end})
T2:CreateButton({Name="Range: 50",Callback=function()SETKAR(50)end})
T2:CreateButton({Name="Range: 75",Callback=function()SETKAR(75)end})
T2:CreateButton({Name="Range: 100",Callback=function()SETKAR(100)end})
T2:CreateButton({Name="Range: 150",Callback=function()SETKAR(150)end})
T2:CreateButton({Name="Range: 200",Callback=function()SETKAR(200)end})
T2:CreateButton({Name="Range: 500",Callback=function()SETKAR(500)end})

T2:CreateSection("Fling Players")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")
T2:CreateToggle({Name="Fling Players",Flag="FP",CurrentValue=false,Callback=function(v)if v then FLING()end end})
T2:CreateButton({Name="Power: 100",Callback=function()SETFLINGP(100)end})
T2:CreateButton({Name="Power: 500",Callback=function()SETFLINGP(500)end})
T2:CreateButton({Name="Power: 1000",Callback=function()SETFLINGP(1000)end})
T2:CreateButton({Name="Power: 5000",Callback=function()SETFLINGP(5000)end})
T2:CreateButton({Name="Power: 10000",Callback=function()SETFLINGP(10000)end})
T2:CreateButton({Name="Power: 50000",Callback=function()SETFLINGP(50000)end})
T2:CreateButton({Name="Power: 100000",Callback=function()SETFLINGP(100000)end})
T2:CreateButton({Name="Power: 500000",Callback=function()SETFLINGP(500000)end})
T2:CreateButton({Name="Power: 999999",Callback=function()SETFLINGP(999999)end})

T2:CreateSection("Nuker")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")
T2:CreateToggle({Name="Nuker",Flag="NK",CurrentValue=false,Callback=function(v)if v then NUKER()end end})
T2:CreateButton({Name="Range: 10",Callback=function()SETNUKER(10)end})
T2:CreateButton({Name="Range: 25",Callback=function()SETNUKER(25)end})
T2:CreateButton({Name="Range: 50",Callback=function()SETNUKER(50)end})
T2:CreateButton({Name="Range: 75",Callback=function()SETNUKER(75)end})
T2:CreateButton({Name="Range: 100",Callback=function()SETNUKER(100)end})
T2:CreateButton({Name="Range: 200",Callback=function()SETNUKER(200)end})
T2:CreateButton({Name="Range: 300",Callback=function()SETNUKER(300)end})
T2:CreateButton({Name="Range: 400",Callback=function()SETNUKER(400)end})
T2:CreateButton({Name="Range: 500",Callback=function()SETNUKER(500)end})

T2:CreateSection("One Shot & Explode")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")T2:CreateSection("")
T2:CreateButton({Name="One Shot All",Callback=function()ONESHOT()end})
T2:CreateButton({Name="Explode All",Callback=function()EXPLODEALL()end})

local T3=W:CreateTab({Name="Aimbot"})
T3:CreateSection("Aimbot Settings")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")
T3:CreateToggle({Name="Aimbot",Flag="AB",CurrentValue=false,Callback=function(v)if v then AIMBOT()end end})
T3:CreateButton({Name="Smooth: 0.01 (Snap)",Callback=function()SETAIMSM(0.01)end})
T3:CreateButton({Name="Smooth: 0.03",Callback=function()SETAIMSM(0.03)end})
T3:CreateButton({Name="Smooth: 0.05",Callback=function()SETAIMSM(0.05)end})
T3:CreateButton({Name="Smooth: 0.08",Callback=function()SETAIMSM(0.08)end})
T3:CreateButton({Name="Smooth: 0.1",Callback=function()SETAIMSM(0.1)end})
T3:CreateButton({Name="Smooth: 0.15",Callback=function()SETAIMSM(0.15)end})
T3:CreateButton({Name="Smooth: 0.2",Callback=function()SETAIMSM(0.2)end})
T3:CreateButton({Name="Smooth: 0.3",Callback=function()SETAIMSM(0.3)end})
T3:CreateButton({Name="Smooth: 0.5",Callback=function()SETAIMSM(0.5)end})

T3:CreateSection("Trigger Bot")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")
T3:CreateToggle({Name="Trigger Bot",Flag="TB",CurrentValue=false,Callback=function(v)if v then TBOT()end end})

T3:CreateSection("Rapid Fire")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")
T3:CreateToggle({Name="Rapid Fire",Flag="RF",CurrentValue=false,Callback=function(v)if v then RFIRE()end end})
T3:CreateButton({Name="Delay: 0.01s",Callback=function()SETRD(0.01)end})
T3:CreateButton({Name="Delay: 0.02s",Callback=function()SETRD(0.02)end})
T3:CreateButton({Name="Delay: 0.03s",Callback=function()SETRD(0.03)end})
T3:CreateButton({Name="Delay: 0.05s",Callback=function()SETRD(0.05)end})
T3:CreateButton({Name="Delay: 0.07s",Callback=function()SETRD(0.07)end})
T3:CreateButton({Name="Delay: 0.1s",Callback=function()SETRD(0.1)end})
T3:CreateButton({Name="Delay: 0.15s",Callback=function()SETRD(0.15)end})
T3:CreateButton({Name="Delay: 0.2s",Callback=function()SETRD(0.2)end})
T3:CreateButton({Name="Delay: 0.5s",Callback=function()SETRD(0.5)end})

T3:CreateSection("Auto Shoot")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")T3:CreateSection("")
T3:CreateToggle({Name="Auto Shoot",Flag="ASH",CurrentValue=false,Callback=function(v)if v then AC(RS.Heartbeat:Connect(function()VIM:SendMouseButtonEvent(0,0,0,true,game,0)task.wait(0.1)VIM:SendMouseButtonEvent(0,0,0,false,game,0)end))end end})

local T4=W:CreateTab({Name="Visuals"})
T4:CreateSection("ESP")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")
T4:CreateToggle({Name="Player ESP (Highlight+Box)",Flag="ESP",CurrentValue=false,Callback=function(v)if v then EESP()else DESP()end end})

T4:CreateSection("World")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")
T4:CreateToggle({Name="Full Bright",Flag="FB",CurrentValue=false,Callback=function(v)if v then LT.Brightness=3 LT.ClockTime=12 LT.FogEnd=999999 LT.GlobalShadows=false LT.OutdoorAmbient=Color3.fromRGB(255,255,255)else LT.Brightness=2 LT.ClockTime=14 LT.FogEnd=10000 LT.GlobalShadows=true LT.OutdoorAmbient=Color3.fromRGB(128,128,128)end end})
T4:CreateToggle({Name="No Fog",Flag="NF",CurrentValue=false,Callback=function(v)if v then LT.FogEnd=9999999 else LT.FogEnd=10000 end end})

T4:CreateSection("FOV")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")
T4:CreateButton({Name="30",Callback=function()SETFOV(30)end})
T4:CreateButton({Name="50",Callback=function()SETFOV(50)end})
T4:CreateButton({Name="70 (Default)",Callback=function()SETFOV(70)end})
T4:CreateButton({Name="80",Callback=function()SETFOV(80)end})
T4:CreateButton({Name="90",Callback=function()SETFOV(90)end})
T4:CreateButton({Name="100",Callback=function()SETFOV(100)end})
T4:CreateButton({Name="110",Callback=function()SETFOV(110)end})
T4:CreateButton({Name="120",Callback=function()SETFOV(120)end})

T4:CreateSection("Character")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")T4:CreateSection("")
T4:CreateToggle({Name="Invisible",Flag="INV",CurrentValue=false,Callback=function(v)if C then for _,p in ipairs(C:GetDescendants())do if p:IsA("BasePart")and p.Name~="HumanoidRootPart"then p.Transparency=v and 0.95 or 0 end end end end})
T4:CreateToggle({Name="Force Field",Flag="FF",CurrentValue=false,Callback=function(v)if v and C then Instance.new("ForceField",C)end end})
T4:CreateButton({Name="Invis All",Callback=function()INVALL()end})
T4:CreateButton({Name="UnInvis All",Callback=function()UNINVALL()end})

local T5=W:CreateTab({Name="Auto Farm"})
T5:CreateSection("Auto Farm")T5:CreateSection("")T5:CreateSection("")T5:CreateSection("")T5:CreateSection("")T5:CreateSection("")T5:CreateSection("")T5:CreateSection("")T5:CreateSection("")T5:CreateSection("")
T5:CreateToggle({Name="Auto Farm",Flag="AF",CurrentValue=false,Callback=function(v)if v then AFARM()end end})
T5:CreateButton({Name="Range: 10",Callback=function()SETFARMR(10)end})
T5:CreateButton({Name="Range: 20",Callback=function()SETFARMR(20)end})
T5:CreateButton({Name="Range: 30",Callback=function()SETFARMR(30)end})
T5:CreateButton({Name="Range: 50",Callback=function()SETFARMR(50)end})
T5:CreateButton({Name="Range: 75",Callback=function()SETFARMR(75)end})
T5:CreateButton({Name="Range: 100",Callback=function()SETFARMR(100)end})
T5:CreateButton({Name="Range: 200",Callback=function()SETFARMR(200)end})
T5:CreateButton({Name="Range: 350",Callback=function()SETFARMR(350)end})
T5:CreateButton({Name="Range: 500",Callback=function()SETFARMR(500)end})

T5:CreateSection("Collect & Sell")T5:CreateSection("")T5:CreateSection("")T5:CreateSection("")T5:CreateSection("")T5:CreateSection("")T5:CreateSection("")T5:CreateSection("")T5:CreateSection("")T5:CreateSection("")
T5:CreateToggle({Name="Auto Collect",Flag="AC",CurrentValue=false,Callback=function(v)if v then ACOLLECT()end end})
T5:CreateButton({Name="Auto Sell",Callback=function()AUTOSELL()end})

local T6=W:CreateTab({Name="Teleport"})
T6:CreateSection("Position Save/Load")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")
T6:CreateButton({Name="Save Position",Callback=function()if RT then SV=RT.CFrame table.insert(SP,RT.CFrame)NFY("Saved","Done! ("..#SP.." total)",2,"Success")end end})
T6:CreateButton({Name="Load Position",Callback=function()if SV then TPTo(SV)NFY("Loaded","Done!",2,"Success")else NFY("Error","No save!",2,"Error")end end})
T6:CreateButton({Name="Smooth TP to Save",Callback=function()if SV then STP(SV,0.5)NFY("TP","Smooth!",2,"Success")else NFY("Error","No save!",2,"Error")end end})

T6:CreateSection("Quick Teleports")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")
T6:CreateButton({Name="TP to Spawn",Callback=function()if WS:FindFirstChild("SpawnLocation")then TPTo(WS.SpawnLocation.CFrame+Vector3.new(0,5,0))end end})
T6:CreateButton({Name="TP to Nearest Player",Callback=function()local n=GNP(99999)if n and n.Character and n.Character:FindFirstChild("HumanoidRootPart")then TPTo(n.Character.HumanoidRootPart.CFrame*CFrame.new(0,3,0))NFY("TP","Done!",2,"Success")else NFY("Error","No player!",2,"Error")end end})
T6:CreateButton({Name="TP All to Me",Callback=function()TPALL()end})

T6:CreateSection("Goto / Bring / Spectate")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")T6:CreateSection("")
T6:CreateInput({Name="Goto Player",Flag="GP",PlaceholderText="Player name...",Callback=function(name)if GOTOPL(name)then NFY("TP","Done!",2,"Success")else NFY("Error","Not found!",2,"Error")end end})
T6:CreateInput({Name="Bring Player",Flag="BP",PlaceholderText="Player name...",Callback=function(name)if BRINGPL(name)then NFY("TP","Brought!",2,"Success")else NFY("Error","Not found!",2,"Error")end end})
T6:CreateInput({Name="Spectate Player",Flag="SP2",PlaceholderText="Player name...",Callback=function(name)if SPECTPL(name)then NFY("TP","Spectating!",2,"Success")else NFY("Error","Not found!",2,"Error")end end})
T6:CreateButton({Name="Reset Camera",Callback=function()if H then CM.CameraSubject=H end end})

local T7=W:CreateTab({Name="Fun"})
T7:CreateSection("Spinbot")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")
T7:CreateToggle({Name="Spinbot",Flag="SB",CurrentValue=false,Callback=function(v)if v then SPINBOT()end end})
T7:CreateButton({Name="Speed: 1",Callback=function()SETSPINSPD(1)end})
T7:CreateButton({Name="Speed: 5",Callback=function()SETSPINSPD(5)end})
T7:CreateButton({Name="Speed: 10",Callback=function()SETSPINSPD(10)end})
T7:CreateButton({Name="Speed: 25",Callback=function()SETSPINSPD(25)end})
T7:CreateButton({Name="Speed: 50",Callback=function()SETSPINSPD(50)end})
T7:CreateButton({Name="Speed: 75",Callback=function()SETSPINSPD(75)end})
T7:CreateButton({Name="Speed: 100",Callback=function()SETSPINSPD(100)end})

T7:CreateSection("Troll Players")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")
T7:CreateButton({Name="Freeze All",Callback=function()FREEZEALL()end})
T7:CreateButton({Name="Unfreeze All",Callback=function()UNFREEZEALL()end})
T7:CreateButton({Name="Sit All",Callback=function()SITALL()end})
T7:CreateButton({Name="Explode All",Callback=function()EXPLODEALL()end})
T7:CreateButton({Name="Crash Server",Callback=function()DLG("WARNING","This will crash the server! Continue?","Cancel","Crash",function()end,function()CRASHSRV()end)end})

T7:CreateSection("Chat Spam")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")T7:CreateSection("")
T7:CreateToggle({Name="Spam Chat",Flag="SPC",CurrentValue=false,Callback=function(v)if v then SPAMCHAT(S.SM)end end})
T7:CreateInput({Name="Spam Message",Flag="SM",PlaceholderText="Message...",Callback=function(msg)S.SM=msg end})

local T8=W:CreateTab({Name="Server"})
T8:CreateSection("Server Controls")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")
T8:CreateButton({Name="Rejoin",Callback=function()TP:Teleport(game.PlaceId,LP)end})
T8:CreateButton({Name="Server Hop",Callback=function()SRVHOP()end})

T8:CreateSection("Anti & Boost")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")
T8:CreateToggle({Name="Anti AFK",Flag="AFK",CurrentValue=true,Callback=function(v)if v then LP.Idled:Connect(function()VU:Button2Down(Vector2.new(0,0),CM.CFrame)task.wait(1)VU:Button2Up(Vector2.new(0,0),CM.CFrame)end)end end})
T8:CreateToggle({Name="Auto Rejoin",Flag="AR",CurrentValue=false,Callback=function(v)if v then AC(P.PlayerRemoving:Connect(function(p)if p==LP then task.wait(5)TP:Teleport(game.PlaceId,LP)end end))end end})
T8:CreateButton({Name="Boost FPS",Callback=function()BOOSTFPS()end})

T8:CreateSection("UI")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")T8:CreateSection("")
T8:CreateButton({Name="Destroy UI",Callback=function()DLG("Confirm","Destroy Miu Hub?","Cancel","Destroy",function()end,function()W:Destroy()end)end})

NFY("Miu Hub","Welcome "..LP.Name.."!",5,"Success")
NFY("Miu Hub","RightShift = Toggle UI",5,"Info")
NFY("Miu Hub","50+ Features Loaded!",5,"Success")