local foldername = "XenonHub"
local filename = "saveSettings "..game.Players.LocalPlayer.Name.." Config.json"
 
function saveSettings()
    local HttpService = game:GetService("HttpService")
    local json = HttpService:JSONEncode(_G.Settings)
    if (writefile) then
        if isfolder(foldername) then
            if isfile(foldername.."\\"..filename) then
                writefile(foldername.."\\"..filename, json)
            else
                writefile(foldername.."\\"..filename, json)
            end
        else
            makefolder(foldername)
            writefile(foldername.."\\"..filename, json)
        end
    end
end

function loadSettings()
    local HttpService = game:GetService("HttpService")
    if isfile(foldername.."\\"..filename) then
        _G.Settings = HttpService:JSONDecode(readfile(foldername.."\\"..filename))
    end
end
 
loadSettings()





if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
    
    if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
        repeat wait()
            if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
                if _G.Team == "Pirate" then
                    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                        v.Function()
                    end
                elseif _G.Team == "Marine" then
                    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                        v.Function()
                    end
                else
                    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                        v.Function()
                    end
                end
            end
        until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
    end

wait(1)

if game.PlaceId == 2753915549 then
World1 = true
elseif game.PlaceId == 4442272183 then
World2 = true
elseif game.PlaceId == 7449423635 then
World3 = true
end

function CheckQuest() 
local MyLevel = game.Players.LocalPlayer.Data.Level.Value
if World1 then
    if MyLevel == 1 or MyLevel <= 9 or _G.Select_Mob_Farm == "Bandit [Lv. 5]" then -- Bandit
        Ms = "Bandit [Lv. 5]"
        NameQuest = "BanditQuest1"
        LevelQuest = 1
        NameMon = "Bandit"
        CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
        CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 10 or MyLevel <= 14 or _G.Select_Mob_Farm == "Monkey [Lv. 14]" then -- Monkey
        Ms = "Monkey [Lv. 14]"
        NameQuest = "JungleQuest"
        LevelQuest = 1
        NameMon = "Monkey"
        CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
        CFrameMon = CFrame.new(-1502.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 15 or MyLevel <= 29 or _G.Select_Mob_Farm == "Gorilla [Lv. 20]" then -- Gorilla
        Ms = "Gorilla [Lv. 20]"
        NameQuest = "JungleQuest"
        LevelQuest = 2
        NameMon = "Gorilla"
        CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
        CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 30 or MyLevel <= 39 or _G.Select_Mob_Farm == "Pirate [Lv. 35]" then -- Pirate
        Ms = "Pirate [Lv. 35]"
        NameQuest = "BuggyQuest1"
        LevelQuest = 1
        NameMon = "Pirate"
        CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
        CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 40 or MyLevel <= 59 or _G.Select_Mob_Farm == "Brute [Lv. 45]" then -- Brute
        Ms = "Brute [Lv. 45]"
        NameQuest = "BuggyQuest1"
        LevelQuest = 2
        NameMon = "Brute"
        CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
        CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 60 or MyLevel <= 74 or _G.Select_Mob_Farm == "Desert Bandit [Lv. 60]" then -- Desert Bandit
        Ms = "Desert Bandit [Lv. 60]"
        NameQuest = "DesertQuest"
        LevelQuest = 1
        NameMon = "Desert Bandit"
        CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
        CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 75 or MyLevel <= 89 or _G.Select_Mob_Farm == "Desert Officer [Lv. 70]" then -- Desert Officre
        Ms = "Desert Officer [Lv. 70]"
        NameQuest = "DesertQuest"
        LevelQuest = 2
        NameMon = "Desert Officer"
        CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
        CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 90 or MyLevel <= 99 or _G.Select_Mob_Farm == "Snow Bandit [Lv. 90]" then -- Snow Bandits
        Ms = "Snow Bandit [Lv. 90]"
        NameQuest = "SnowQuest"
        LevelQuest = 1
        NameMon = "Snow Bandits"
        CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
        CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 100 or MyLevel <= 119 or _G.Select_Mob_Farm == "Snowman [Lv. 100]"  then -- Snowman
        Ms = "Snowman [Lv. 100]"
        NameQuest = "SnowQuest"
        LevelQuest = 2
        NameMon = "Snowman"
        CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
        CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 120 or MyLevel <= 149 or _G.Select_Mob_Farm == "Chief Petty Officer [Lv. 120]" then -- Chief Petty Officer
        Ms = "Chief Petty Officer [Lv. 120]"
        NameQuest = "MarineQuest2"
        LevelQuest = 1
        NameMon = "Chief Petty Officer"
        CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
        CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 150 or MyLevel <= 174 or _G.Select_Mob_Farm == "Sky Bandit [Lv. 150]" then -- Sky Bandit
        Ms = "Sky Bandit [Lv. 150]"
        NameQuest = "SkyQuest"
        LevelQuest = 1
        NameMon = "Sky Bandit"
        CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
        CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 175 or MyLevel <= 189 or _G.Select_Mob_Farm == "Dark Master [Lv. 175]" then -- Dark Master
        Ms = "Dark Master [Lv. 175]"
        NameQuest = "SkyQuest"
        LevelQuest = 2
        NameMon = "Dark Master"
        CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
        CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 190 or MyLevel <= 209 or _G.Select_Mob_Farm == "Prisoner [Lv. 190]" then
        Ms = "Prisoner [Lv. 190]"
        NameQuest = "PrisonerQuest"
        LevelQuest = 1
        NameMon = "Prisoner"
        CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
        CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 210 or MyLevel <= 249 or _G.Select_Mob_Farm == "Dangerous Prisoner [Lv. 210]" then
        Ms = "Dangerous Prisoner [Lv. 210]"
        NameQuest = "PrisonerQuest"
        LevelQuest = 2
        NameMon = "Dangerous Prisoner"
        CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
        CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 250 or MyLevel <= 274 or _G.Select_Mob_Farm == "Toga Warrior [Lv. 225]" then -- Toga Warrior
        Ms = "Toga Warrior [Lv. 250]"
        NameQuest = "ColosseumQuest"
        LevelQuest = 1
        NameMon = "Toga Warrior"
        CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
        CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 275 or MyLevel <= 299 or _G.Select_Mob_Farm == "Gladiator [Lv. 275]" then -- Gladiato
        Ms = "Gladiator [Lv. 275]"
        NameQuest = "ColosseumQuest"
        LevelQuest = 2
        NameMon = "Gladiato"
        CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
        CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 300 or MyLevel <= 324 or _G.Select_Mob_Farm == "Military Soldier [Lv. 300]" then -- Military Soldier
        Ms = "Military Soldier [Lv. 300]"
        NameQuest = "MagmaQuest"
        LevelQuest = 1
        NameMon = "Military Soldier"
        CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
        CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 325 or MyLevel <= 374 or _G.Select_Mob_Farm == "Military Spy [Lv. 330]" then -- Military Spy
        Ms = "Military Spy [Lv. 325]"
        NameQuest = "MagmaQuest"
        LevelQuest = 2
        NameMon = "Military Spy"
        CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
        CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 375 or MyLevel <= 399 or _G.Select_Mob_Farm == "Fishman Warrior [Lv. 375]" then -- Fishman Warrior
        Ms = "Fishman Warrior [Lv. 375]"
        NameQuest = "FishmanQuest"
        LevelQuest = 1
        NameMon = "Fishman Warrior"
        CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
        CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        end
    elseif MyLevel == 400 or MyLevel <= 449 or _G.Select_Mob_Farm == "Fishman Commando [Lv. 400]" then -- Fishman Commando
        Ms = "Fishman Commando [Lv. 400]"
        NameQuest = "FishmanQuest"
        LevelQuest = 2
        NameMon = "Fishman Commando"
        CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
        CFrameMon = CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489)
        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        end
    elseif MyLevel == 450 or MyLevel <= 474 or _G.Select_Mob_Farm == "God's Guard [Lv. 450]" then -- God's Guards
        Ms = "God's Guard [Lv. 450]"
        NameQuest = "SkyExp1Quest"
        LevelQuest = 1
        NameMon = "God's Guards"
        CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
        CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
        end
    elseif MyLevel == 475 or MyLevel <= 524 or _G.Select_Mob_Farm == "Shanda [Lv. 475]" then -- Shandas
        sky = false
        Ms = "Shanda [Lv. 475]"
        NameQuest = "SkyExp1Quest"
        LevelQuest = 2
        NameMon = "Shandas"
        CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
        CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243)
        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
        end
    elseif MyLevel == 525 or MyLevel <= 549 or _G.Select_Mob_Farm == "Royal Squad [Lv. 525]" then -- Royal Squad
        sky = true
        Ms = "Royal Squad [Lv. 525]"
        NameQuest = "SkyExp2Quest"
        LevelQuest = 1
        NameMon = "Royal Squad"
        CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
        CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 550 or MyLevel <= 624 or _G.Select_Mob_Farm == "Royal Soldier [Lv. 550]" then -- Royal Soldier
        Dis = 240
        sky = true
        Ms = "Royal Soldier [Lv. 550]"
        NameQuest = "SkyExp2Quest"
        LevelQuest = 2
        NameMon = "Royal Soldier"
        CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
        CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 625 or MyLevel <= 649 or _G.Select_Mob_Farm == "Galley Pirate [Lv. 625]" then -- Galley Pirate
        Dis = 240
        sky = false
        Ms = "Galley Pirate [Lv. 625]"
        NameQuest = "FountainQuest"
        LevelQuest = 1
        NameMon = "Galley Pirate"
        CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
        CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel >= 650 or _G.Select_Mob_Farm == "Galley Captain [Lv. 650]" then -- Galley Captain
        Dis = 240
        Ms = "Galley Captain [Lv. 650]"
        NameQuest = "FountainQuest"
        LevelQuest = 2
        NameMon = "Galley Captain"
        CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
        CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    end
elseif World2 then
    if MyLevel == 700 or MyLevel <= 724 or _G.Select_Mob_Farm == "Raider [Lv. 700]" then -- Raider [Lv. 700]
        Ms = "Raider [Lv. 700]"
        NameQuest = "Area1Quest"
        LevelQuest = 1
        NameMon = "Raider"
        CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
        CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 725 or MyLevel <= 774 or _G.Select_Mob_Farm == "Mercenary [Lv. 725]" then -- Mercenary [Lv. 725]
        Ms = "Mercenary [Lv. 725]"
        NameQuest = "Area1Quest"
        LevelQuest = 2
        NameMon = "Mercenary"
        CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
        CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 775 or MyLevel <= 799 or _G.Select_Mob_Farm == "Swan Pirate [Lv. 775]" then -- Swan Pirate [Lv. 775]
        Ms = "Swan Pirate [Lv. 775]"
        NameQuest = "Area2Quest"
        LevelQuest = 1
        NameMon = "Swan Pirate"
        CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
        CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 800 or MyLevel <= 874 or _G.Select_Mob_Farm == "Factory Staff [Lv. 800]" then -- Factory Staff [Lv. 800]
        Ms = "Factory Staff [Lv. 800]"
        NameQuest = "Area2Quest"
        LevelQuest = 2
        NameMon = "Factory Staff"
        CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
        CFrameMon = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 875 or MyLevel <= 899 or _G.Select_Mob_Farm == "Marine Lieutenant [Lv. 875]" then -- Marine Lieutenant [Lv. 875]
        Ms = "Marine Lieutenant [Lv. 875]"
        NameQuest = "MarineQuest3"
        LevelQuest = 1
        NameMon = "Marine Lieutenant"
        CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
        CFrameMon = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 900 or MyLevel <= 949 or _G.Select_Mob_Farm == "Marine Captain [Lv. 900]" then -- Marine Captain [Lv. 900]
        Ms = "Marine Captain [Lv. 900]"
        NameQuest = "MarineQuest3"
        LevelQuest = 2
        NameMon = "Marine Captain"
        CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
        CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 950 or MyLevel <= 974 or _G.Select_Mob_Farm == "Zombie [Lv. 950]" then -- Zombie [Lv. 950]
        Ms = "Zombie [Lv. 950]"
        NameQuest = "ZombieQuest"
        LevelQuest = 1
        NameMon = "Zombie"
        CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
        CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 975 or MyLevel <= 999 or _G.Select_Mob_Farm == "Vampire [Lv. 975]" then -- Vampire [Lv. 975]
        Ms = "Vampire [Lv. 975]"
        NameQuest = "ZombieQuest"
        LevelQuest = 2
        NameMon = "Vampire"
        CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
        CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1000 or MyLevel <= 1049 or _G.Select_Mob_Farm == "Snow Trooper [Lv. 1000]" then -- Snow Trooper [Lv. 1000] **
        Ms = "Snow Trooper [Lv. 1000]"
        NameQuest = "SnowMountainQuest"
        LevelQuest = 1
        NameMon = "Snow Trooper"
        CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
        CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1050 or MyLevel <= 1099 or _G.Select_Mob_Farm == "Winter Warrior [Lv. 1050]" then -- Winter Warrior [Lv. 1050]
        Ms = "Winter Warrior [Lv. 1050]"
        NameQuest = "SnowMountainQuest"
        LevelQuest = 2
        NameMon = "Winter Warrior"
        CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
        CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1100 or MyLevel <= 1124 or _G.Select_Mob_Farm == "Lab Subordinate [Lv. 1100]" then -- Lab Subordinate [Lv. 1100]
        Ms = "Lab Subordinate [Lv. 1100]"
        NameQuest = "IceSideQuest"
        LevelQuest = 1
        NameMon = "Lab Subordinate"
        CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
        CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1125 or MyLevel <= 1174 or _G.Select_Mob_Farm == "Horned Warrior [Lv. 1125]" then -- Horned Warrior [Lv. 1125]
        Ms = "Horned Warrior [Lv. 1125]"
        NameQuest = "IceSideQuest"
        LevelQuest = 2
        NameMon = "Horned Warrior"
        CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
        CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1175 or MyLevel <= 1199 or _G.Select_Mob_Farm == "Magma Ninja [Lv. 1175]" then -- Magma Ninja [Lv. 1175]
        Ms = "Magma Ninja [Lv. 1175]"
        NameQuest = "FireSideQuest"
        LevelQuest = 1
        NameMon = "Magma Ninja"
        CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
        CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1200 or MyLevel <= 1249 or _G.Select_Mob_Farm == "Lava Pirate [Lv. 1200]" then -- Lava Pirate [Lv. 1200]
        Ms = "Lava Pirate [Lv. 1200]"
        NameQuest = "FireSideQuest"
        LevelQuest = 2
        NameMon = "Lava Pirate"
        CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
        CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1250 or MyLevel <= 1274 or _G.Select_Mob_Farm == "Ship Deckhand [Lv. 1250]" then -- Ship Deckhand [Lv. 1250]
        Ms = "Ship Deckhand [Lv. 1250]"
        NameQuest = "ShipQuest1"
        LevelQuest = 1
        NameMon = "Ship Deckhand"
        CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
        CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        end 
    elseif MyLevel == 1275 or MyLevel <= 1299 or _G.Select_Mob_Farm == "Ship Engineer [Lv. 1275]"  then -- Ship Engineer [Lv. 1275]
        Ms = "Ship Engineer [Lv. 1275]"
        NameQuest = "ShipQuest1"
        LevelQuest = 2
        NameMon = "Ship Engineer"
        CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
        CFrameMon = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871)
        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        end
    elseif MyLevel == 1300 or MyLevel <= 1324 or _G.Select_Mob_Farm == "Ship Steward [Lv. 1300]" then -- Ship Steward [Lv. 1300]
        Ms = "Ship Steward [Lv. 1300]"
        NameQuest = "ShipQuest2"
        LevelQuest = 1
        NameMon = "Ship Steward"
        CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
        CFrameMon = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814)
        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        end
    elseif MyLevel == 1325 or MyLevel <= 1349 or _G.Select_Mob_Farm == "Ship Officer [Lv. 1325]" then -- Ship Officer [Lv. 1325]
        Ms = "Ship Officer [Lv. 1325]"
        NameQuest = "ShipQuest2"
        LevelQuest = 2
        NameMon = "Ship Officer"
        CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
        CFrameMon = CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698)
        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        end
    elseif MyLevel == 1350 or MyLevel <= 1374 or _G.Select_Mob_Farm == "Arctic Warrior [Lv. 1350]" then -- Arctic Warrior [Lv. 1350]
        Ms = "Arctic Warrior [Lv. 1350]"
        NameQuest = "FrostQuest"
        LevelQuest = 1
        NameMon = "Arctic Warrior"
        CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
        CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
        if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
        end
    elseif MyLevel == 1375 or MyLevel <= 1424 or _G.Select_Mob_Farm == "Snow Lurker [Lv. 1375]" then -- Snow Lurker [Lv. 1375]
        Ms = "Snow Lurker [Lv. 1375]"
        NameQuest = "FrostQuest"
        LevelQuest = 2
        NameMon = "Snow Lurker"
        CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
        CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1425 or MyLevel <= 1449 or _G.Select_Mob_Farm == "Sea Soldier [Lv. 1425]" then -- Sea Soldier [Lv. 1425]
        Ms = "Sea Soldier [Lv. 1425]"
        NameQuest = "ForgottenQuest"
        LevelQuest = 1
        NameMon = "Sea Soldier"
        CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
        CFrameMon = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel >= 1450 or _G.Select_Mob_Farm == "Water Fighter [Lv. 1450]" then -- Water Fighter [Lv. 1450]
        Ms = "Water Fighter [Lv. 1450]"
        NameQuest = "ForgottenQuest"
        LevelQuest = 2
        NameMon = "Water Fighter"
        CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
        CFrameMon = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    end
elseif World3 then
    if MyLevel == 1500 or MyLevel <= 1524 or _G.Select_Mob_Farm == "Pirate Millionaire [Lv. 1500]" then
        Ms = "Pirate Millionaire [Lv. 1500]"
        NameQuest = "PiratePortQuest"
        LevelQuest = 1
        NameMon = "Pirate Millionaire"
        CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
        CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1525 or MyLevel <= 1574 or _G.Select_Mob_Farm == "Pistol Billionaire [Lv. 1525]" then
        Ms = "Pistol Billionaire [Lv. 1525]"
        NameQuest = "PiratePortQuest"
        LevelQuest = 2
        NameMon = "Pistol Billionaire"
        CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
        CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1575 or MyLevel <= 1599 or _G.Select_Mob_Farm == "Dragon Crew Warrior [Lv. 1575]" then
        Ms = "Dragon Crew Warrior [Lv. 1575]"
        NameQuest = "AmazonQuest"
        LevelQuest = 1
        NameMon = "Dragon Crew Warrior"
        CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
        CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1600 or MyLevel <= 1624 or _G.Select_Mob_Farm == "Dragon Crew Archer [Lv. 1600]" then
        Ms = "Dragon Crew Archer [Lv. 1600]"
        NameQuest = "AmazonQuest"
        LevelQuest = 2
        NameMon = "Dragon Crew Archer"
        CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
        CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1625 or MyLevel <= 1649 or _G.Select_Mob_Farm == "Female Islander [Lv. 1625]" then
        Ms = "Female Islander [Lv. 1625]"
        NameQuest = "AmazonQuest2"
        LevelQuest = 1
        NameMon = "Female Islander"
        CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
        CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1650 or MyLevel <= 1699 or _G.Select_Mob_Farm == "Giant Islander [Lv. 1650]" then
        Ms = "Giant Islander [Lv. 1650]"
        NameQuest = "AmazonQuest2"
        LevelQuest = 2
        NameMon = "Giant Islander"
        CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
        CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1700 or MyLevel <= 1724 or _G.Select_Mob_Farm == "Marine Commodore [Lv. 1700]" then
        Ms = "Marine Commodore [Lv. 1700]"
        NameQuest = "MarineTreeIsland"
        LevelQuest = 1
        NameMon = "Marine Commodore"
        CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
        CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1725 or MyLevel <= 1774 or _G.Select_Mob_Farm == "Marine Rear Admiral [Lv. 1725]" then
        Ms = "Marine Rear Admiral [Lv. 1725]"
        NameQuest = "MarineTreeIsland"
        LevelQuest = 2
        NameMon = "Marine Rear Admiral"
        CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
        CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1775 or MyLevel <= 1799 or _G.Select_Mob_Farm == "Fishman Raider [Lv. 1775]" then
        Ms = "Fishman Raider [Lv. 1775]"
        NameQuest = "DeepForestIsland3"
        LevelQuest = 1
        NameMon = "Fishman Raider"
        CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
        CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1800 or MyLevel <= 1824 or _G.Select_Mob_Farm == "Fishman Captain [Lv. 1800]" then
        Ms = "Fishman Captain [Lv. 1800]"
        NameQuest = "DeepForestIsland3"
        LevelQuest = 2
        NameMon = "Fishman Captain"
        CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
        CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1825 or MyLevel <= 1849 or _G.Select_Mob_Farm == "Forest Pirate [Lv. 1825]" then
        Ms = "Forest Pirate [Lv. 1825]"
        NameQuest = "DeepForestIsland"
        LevelQuest = 1
        NameMon = "Forest Pirate"
        CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
        CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1850 or MyLevel <= 1899 or _G.Select_Mob_Farm == "Mythological Pirate [Lv. 1850]" then
        Ms = "Mythological Pirate [Lv. 1850]"
        NameQuest = "DeepForestIsland"
        LevelQuest = 2
        NameMon = "Mythological Pirate"
        CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
        CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1900 or MyLevel <= 1924 or _G.Select_Mob_Farm == "Jungle Pirate [Lv. 1900]" then
        Ms = "Jungle Pirate [Lv. 1900]"
        NameQuest = "DeepForestIsland2"
        LevelQuest = 1
        NameMon = "Jungle Pirate"
        CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
        CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1925 or MyLevel <= 1974 or _G.Select_Mob_Farm == "Musketeer Pirate [Lv. 1925]" then
        Ms = "Musketeer Pirate [Lv. 1925]"
        NameQuest = "DeepForestIsland2"
        LevelQuest = 2
        NameMon = "Musketeer Pirate"
        CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
        CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 1975 or MyLevel <= 1999 or _G.Select_Mob_Farm == "Reborn Skeleton [Lv. 1975]" then
        Ms = "Reborn Skeleton [Lv. 1975]"
        NameQuest = "HauntedQuest1"
        LevelQuest = 1
        NameMon = "Reborn Skeleton"
        CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
        CFrameMon = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 2000 or MyLevel <= 2024 or _G.Select_Mob_Farm == "Living Zombie [Lv. 2000]" then
        Ms = "Living Zombie [Lv. 2000]"
        NameQuest = "HauntedQuest1"
        LevelQuest = 2
        NameMon = "Living Zombie"
        CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
        CFrameMon = CFrame.new(-10093.930664063, 237.38233947754, 6180.5654296875)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 2025 or MyLevel <= 2049 or _G.Select_Mob_Farm == "Demonic Soul [Lv. 2025]" then
        Ms = "Demonic Soul [Lv. 2025]"
        NameQuest = "HauntedQuest2"
        LevelQuest = 1
        NameMon = "Demonic Soul"
        CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
        CFrameMon = CFrame.new(-9466.72949, 171.162918, 6132.01514)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 2050 or MyLevel <= 2074 or _G.Select_Mob_Farm == "Posessed Mummy [Lv. 2050]" then
        Ms = "Posessed Mummy [Lv. 2050]" 
        NameQuest = "HauntedQuest2"
        LevelQuest = 2
        NameMon = "Posessed Mummy"
        CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
        CFrameMon = CFrame.new(-9589.93848, 4.85058546, 6190.27197)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 2075 or MyLevel <= 2099 or _G.Select_Mob_Farm == "Peanut Scout [Lv. 2075]" then
        Ms = "Peanut Scout [Lv. 2075]"
        NameQuest = "NutsIslandQuest"
        LevelQuest = 1
        NameMon = "Peanut Scout"
        CFrameQuest = CFrame.new(-2103.9375, 38.139019012451, -10192.702148438)
        CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 2100 or MyLevel <= 2124 or _G.Select_Mob_Farm == "Peanut President [Lv. 2100]" then
        Ms = "Peanut President [Lv. 2100]"
        NameQuest = "NutsIslandQuest"
        LevelQuest = 2
        NameMon = "Peanut President"
        CFrameQuest = CFrame.new(-2103.9375, 38.139019012451, -10192.702148438)
        CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 2125 or MyLevel <= 2149 or _G.Select_Mob_Farm == "Ice Cream Chef [Lv. 2125]" then
        Ms = "Ice Cream Chef [Lv. 2125]"
        NameQuest = "IceCreamIslandQuest"
        LevelQuest = 1
        NameMon = "Ice Cream Chef"
        CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
        CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 2150 or MyLevel <= 2199 or _G.Select_Mob_Farm == "Ice Cream Commander [Lv. 2150]" then
        Ms = "Ice Cream Commander [Lv. 2150]"
        NameQuest = "IceCreamIslandQuest"
        LevelQuest = 2
        NameMon = "Ice Cream Commander"
        CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
        CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 2200 or MyLevel <= 2224 or _G.Select_Mob_Farm == "Cookie Crafter [Lv. 2200]" then
        Ms = "Cookie Crafter [Lv. 2200]"
        NameQuest = "CakeQuest1"
        LevelQuest = 1
        NameMon = "Cookie Crafter"
        CFrameQuest = CFrame.new(-2021.5509033203125, 37.798221588134766, -12028.103515625)
        CFrameMon = CFrame.new(-2273.00244140625, 90.22590637207031, -12151.62109375)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 2225 or MyLevel <= 2249 or _G.Select_Mob_Farm == "Cake Guard [Lv. 2225]" then
        Ms = "Cake Guard [Lv. 2225]"
        NameQuest = "CakeQuest1"
        LevelQuest = 2
        NameMon = "Cake Guard"
        CFrameQuest = CFrame.new(-2021.5509033203125, 37.798221588134766, -12028.103515625)
        CFrameMon = CFrame.new(-1442.373046875, 158.14111328125, -12277.37109375)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel == 2250 or MyLevel <= 2274 or _G.Select_Mob_Farm == "Baking Staff [Lv. 2250]" then
        Ms = "Baking Staff [Lv. 2250]"
        NameQuest = "CakeQuest2"
        LevelQuest = 1
        NameMon = "Baking Staff"
        CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
        CFrameMon = CFrame.new(-1837.2803955078125, 129.0594482421875, -12934.5498046875)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    elseif MyLevel >= 2275 or _G.Select_Mob_Farm == "Head Baker [Lv. 2275]" then
        Ms = "Head Baker [Lv. 2275]"
        NameQuest = "CakeQuest2"
        LevelQuest = 2
        NameMon = "Head Baker"
        CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
        CFrameMon = CFrame.new(-2203.302490234375, 109.90937042236328, -12788.7333984375)
        if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Fast Mode" and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    end
end
end

function CheckBossQuest()
if _G.Select_Boss == "Saber Expert [Lv. 200] [Boss]" then
    MsBoss = "Saber Expert [Lv. 200] [Boss]"
    NameBoss = "Saber Expert"
    CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
elseif _G.Select_Boss == "The Saw [Lv. 100] [Boss]" then
    MsBoss = "The Saw [Lv. 100] [Boss]"
    NameBoss = "The Saw"
    CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
elseif _G.Select_Boss == "Greybeard [Lv. 750] [Raid Boss]" then
    MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
    NameBoss = "Greybeard"
    CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
elseif _G.Select_Boss == "The Gorilla King [Lv. 25] [Boss]" then
    MsBoss = "The Gorilla King [Lv. 25] [Boss]"
    NameBoss = "The Gorilla King"
    NameQuestBoss = "JungleQuest"
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
    CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
elseif _G.Select_Boss == "Bobby [Lv. 55] [Boss]" then
    MsBoss = "Bobby [Lv. 55] [Boss]"
    NameBoss = "Bobby"
    NameQuestBoss = "BuggyQuest1"
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
    CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
elseif _G.Select_Boss == "Yeti [Lv. 110] [Boss]" then
    MsBoss = "Yeti [Lv. 110] [Boss]"
    NameBoss = "Yeti"
    NameQuestBoss = "SnowQuest"
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
    CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
elseif _G.Select_Boss == "Mob Leader [Lv. 120] [Boss]" then
    MsBoss = "Mob Leader [Lv. 120] [Boss]"
    NameBoss = "Mob Leader"
    CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
elseif _G.Select_Boss == "Vice Admiral [Lv. 130] [Boss]" then
    MsBoss = "Vice Admiral [Lv. 130] [Boss]"
    NameBoss = "Vice Admiral"
    NameQuestBoss = "MarineQuest2"
    LevelQuestBoss = 2
    CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
    CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
elseif _G.Select_Boss == "Warden [Lv. 175] [Boss]" then
    MsBoss = "Warden [Lv. 175] [Boss]"
    NameBoss = "Warden"
    NameQuestBoss = "ImpelQuest"
    LevelQuestBoss = 1
    CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
    CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
elseif _G.Select_Boss == "Chief Warden [Lv. 200] [Boss]" then
    MsBoss = "Chief Warden [Lv. 200] [Boss]"
    NameBoss = "Chief Warden"
    NameQuestBoss = "ImpelQuest"
    LevelQuestBoss = 2
    CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
    CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
elseif _G.Select_Boss == "Swan [Lv. 225] [Boss]" then
    MsBoss = "Swan [Lv. 225] [Boss]"
    NameBoss = "Swan"
    NameQuestBoss = "ImpelQuest"
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
    CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
elseif _G.Select_Boss == "Magma Admiral [Lv. 350] [Boss]" then
    MsBoss = "Magma Admiral [Lv. 350] [Boss]"
    NameBoss = "Magma Admiral"
    NameQuestBoss = "MagmaQuest"
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
    CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
elseif _G.Select_Boss == "Fishman Lord [Lv. 425] [Boss]" then
    MsBoss = "Fishman Lord [Lv. 425] [Boss]"
    NameBoss = "Fishman Lord"
    NameQuestBoss = "FishmanQuest"
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
    CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
elseif _G.Select_Boss == "Wysper [Lv. 500] [Boss]" then
    MsBoss = "Wysper [Lv. 500] [Boss]"
    NameBoss = "Wysper"
    NameQuestBoss = "SkyExp1Quest"
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
    CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
elseif _G.Select_Boss == "Thunder God [Lv. 575] [Boss]" then
    MsBoss = "Thunder God [Lv. 575] [Boss]"
    NameBoss = "Thunder God"
    NameQuestBoss = "SkyExp2Quest"
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
    CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
elseif _G.Select_Boss == "Cyborg [Lv. 675] [Boss]" then
    MsBoss = "Cyborg [Lv. 675] [Boss]"
    NameBoss = "Cyborg"
    NameQuestBoss = "FountainQuest"
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
    CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
-- New World
elseif _G.Select_Boss == "Diamond [Lv. 750] [Boss]" then
    MsBoss = "Diamond [Lv. 750] [Boss]"
    NameBoss = "Diamond"
    NameQuestBoss = "Area1Quest"
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
    CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
elseif _G.Select_Boss == "Jeremy [Lv. 850] [Boss]" then
    MsBoss = "Jeremy [Lv. 850] [Boss]"
    NameBoss = "Jeremy"
    NameQuestBoss = "Area2Quest"
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
    CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
elseif _G.Select_Boss == "Fajita [Lv. 925] [Boss]" then
    MsBoss = "Fajita [Lv. 925] [Boss]"
    NameBoss = "Fajita"
    NameQuestBoss = "MarineQuest3"
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
    CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
elseif _G.Select_Boss == "Don Swan [Lv. 1000] [Boss]" then
    MsBoss = "Don Swan [Lv. 1000] [Boss]"
    NameBoss = "Don Swan"
    CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
elseif _G.Select_Boss == "Smoke Admiral [Lv. 1150] [Boss]" then
    MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
    NameBoss = "Smoke Admiral"
    NameQuestBoss = "IceSideQuest"
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
    CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
elseif _G.Select_Boss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
    MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
    NameBoss = "Cursed Captain"
    CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
elseif _G.Select_Boss == "Darkbeard [Lv. 1000] [Raid Boss]" then
    MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
    NameBoss = "Darkbeard"
    CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
elseif _G.Select_Boss == "Order [Lv. 1250] [Raid Boss]" then
    MsBoss = "Order [Lv. 1250] [Raid Boss]"
    NameBoss = "Order"
    CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
elseif _G.Select_Boss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
    MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
    NameBoss = "Awakened Ice Admiral"
    NameQuestBoss = "FrostQuest"
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
    CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
elseif _G.Select_Boss == "Tide Keeper [Lv. 1475] [Boss]" then
    MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
     NameBoss = "Tide Keeper"
    NameQuestBoss = "ForgottenQuest"             
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
    CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
-- Thire World
elseif _G.Select_Boss == "Stone [Lv. 1550] [Boss]" then
    MsBoss = "Stone [Lv. 1550] [Boss]"
    NameBoss = "Stone"
    NameQuestBoss = "PiratePortQuest"             
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(-290, 44, 5577)
    CFrameBoss = CFrame.new(-1085, 40, 6779)
elseif _G.Select_Boss == "Island Empress [Lv. 1675] [Boss]" then
    MsBoss = "Island Empress [Lv. 1675] [Boss]"
     NameBoss = "Island Empress"
    NameQuestBoss = "AmazonQuest2"             
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(5443, 602, 752)
    CFrameBoss = CFrame.new(5659, 602, 244)
elseif _G.Select_Boss == "Kilo Admiral [Lv. 1750] [Boss]" then
    MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
    NameBoss = "Kilo Admiral"
    NameQuestBoss = "MarineTreeIsland"             
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(2178, 29, -6737)
    CFrameBoss =CFrame.new(2846, 433, -7100)
elseif _G.Select_Boss == "Captain Elephant [Lv. 1875] [Boss]" then
    MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
    NameBoss = "Captain Elephant"
    NameQuestBoss = "DeepForestIsland"             
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
    CFrameBoss = CFrame.new(-13221, 325, -8405)
elseif _G.Select_Boss == "Beautiful Pirate [Lv. 1950] [Boss]" then
    MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
    NameBoss = "Beautiful Pirate"
    NameQuestBoss = "DeepForestIsland2"             
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
    CFrameBoss = CFrame.new(5182, 23, -20)
elseif _G.Select_Boss == "Cake Queen [Lv. 2175] [Boss]" then
    MsBoss = "Cake Queen [Lv. 2175] [Boss]"
    NameQuestBoss = "IceCreamIslandQuest"             
    LevelQuestBoss = 3
    CFrameQuestBoss = CFrame.new(-716, 382, -11010)
    CFrameBoss = CFrame.new(-821, 66, -10965)
elseif _G.Select_Boss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
    MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
    NameBoss = "rip_indra True Form"
    CFrameBoss = CFrame.new(-5359, 424, -2735)
elseif _G.Select_Boss == "Longma [Lv. 2000] [Boss]" then
    MsBoss = "Longma [Lv. 2000] [Boss]"
    NameBoss = "Longma"
    CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
elseif _G.Select_Boss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
    MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
    NameBoss = "Soul Reaper"
    CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
end
end

function AutoHaki()
if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
end
end

function EquipWeapon(ToolSe)
if not _G.NotAutoEquip then
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(.1)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
    end
end
end

getgenv().ToTarget = function(p)
task.spawn(function()
    pcall(function()
        if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 300 then 
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
        elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root")then 
            local K = Instance.new("Part",game.Players.LocalPlayer.Character)
            K.Size = Vector3.new(1,0.5,1)
            K.Name = "Root"
            K.Anchored = true
            K.Transparency = 1
            K.CanCollide = false
            K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
        end
        local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude
        local z = game:service("TweenService")
        local B = TweenInfo.new((p.Position-game.Players.LocalPlayer.Character.Root.Position).Magnitude/300,Enum.EasingStyle.Linear)
        local S,g = pcall(function()
        local q = z:Create(game.Players.LocalPlayer.Character.Root,B,{CFrame = p})
        q:Play()
    end)
    if not S then 
        return g
    end
    game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
            pcall(function()
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 20 then 
                    spawn(function()
                        pcall(function()
                            if (game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then 
                                game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            else 
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.Root.CFrame
                            end
                        end)
                    end)
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 10 and(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 20 then 
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 10 then 
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                end
            end)
        end
    end)
end)
end

function StopTween(target)
if not target then
    _G.StopTween = true
    wait()
    getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    wait()
    if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
    end
    _G.StopTween = false
    _G.Clip = false
end
end

function UseCode(Text)
game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
end

function toTarget(targetPos, targetCFrame)
local tweenfunc = {}
local tween_s = game:service"TweenService"
local info = TweenInfo.new((targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/300, Enum.EasingStyle.Linear)
local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCFrame * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(0))})
tween:Play()

function tweenfunc:Stop()
    tween:Cancel()
    return tween
end

if not tween then return tween end
return tweenfunc
end

local plr = game.Players.LocalPlayer

local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

function GetCurrentBlade() 
local p13 = CbFw2.activeController
local ret = p13.blades[1]
if not ret then return end
while ret.Parent ~= game.Players.LocalPlayer.Character do ret=ret.Parent end
return ret
end

function Hop()
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end
function Teleport() 
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end
Teleport()
end

function SkyJumpNoCoolDown()
if _G.Infinit_SkyJump then
    for i,v in next, getgc() do
        if game.Players.LocalPlayer.Character.Geppo then
            if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Geppo then
                for i2,v2 in next, getupvalues(v) do
                    if tostring(v2) == "0" then
                        repeat wait(.1)
                            setupvalue(v,i2,0)
                        until not _G.Infinit_SkyJump
                    end
                end
            end
        end
    end
end
end

function InfAbility()
if _G.Infinit_Ability then
    if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
        local inf = Instance.new("ParticleEmitter")
        inf.Acceleration = Vector3.new(0,0,0)
        inf.Archivable = true
        inf.Drag = 20
        inf.EmissionDirection = Enum.NormalId.Top
        inf.Enabled = true
        inf.Lifetime = NumberRange.new(0.2,0.2)
        inf.LightInfluence = 0
        inf.LockedToPart = true
        inf.Name = "Agility"
        inf.Rate = 500
        local numberKeypoints2 = {
            NumberSequenceKeypoint.new(0, 0); 
            NumberSequenceKeypoint.new(1, 4); 
        }

        inf.Size = NumberSequence.new(numberKeypoints2)
        inf.RotSpeed = NumberRange.new(999, 9999)
        inf.Rotation = NumberRange.new(0, 0)
        inf.Speed = NumberRange.new(30, 30)
        inf.SpreadAngle = Vector2.new(360,360)
        inf.Texture = "rbxassetid://243098098"
        inf.VelocityInheritance = 0
        inf.ZOffset = 2
        inf.Transparency = NumberSequence.new(0)
        inf.Color = ColorSequence.new(Color3.fromRGB(0, 255, 255),Color3.fromRGB(0, 255, 255))
        inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    end
else
    if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
        game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
    end
end
end

_G.Dodge_No_CoolDown = false
function DodgeNoCoolDown()
if _G.Dodge_No_CoolDown then
    for i,v in next, getgc() do
        if game.Players.LocalPlayer.Character.Dodge then
            if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
                for i2,v2 in next, getupvalues(v) do
                    if tostring(v2) == "0.4" then
                        repeat wait(.1)
                            setupvalue(v,i2,0)
                        until not _G.Dodge_No_CoolDown
                    end
                end
            end
        end
    end
end
end

local LocalPlayer = game:GetService'Players'.LocalPlayer
local originalstam = LocalPlayer.Character.Energy.Value
function InfinitEnergy()
game:GetService'Players'.LocalPlayer.Character.Energy.Changed:connect(function()
    if _G.Infinit_Energy then
        LocalPlayer.Character.Energy.Value = originalstam
    end 
end)
end

function SoruNoCoolDown()
for i, v in pairs(getgc()) do
    if type(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Soru") then
        for i2,v2 in pairs(debug.getupvalues(v)) do
            if type(v2) == 'table' then
                if v2.LastUse then
                    repeat wait()
                        setupvalue(v, i2, {LastAfter = 0,LastUse = 0})
                    until not _G.Infinit_Soru
                end
            end
        end
    end
end
end

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function ESPPlayers()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if _G.Esp_Players then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Character.Head
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "GothamBold"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    if v.Team == game.Players.LocalPlayer.Team then
                        name.TextColor3 = Color3.new(255,0,0)
                    else
                        name.TextColor3 = Color3.new(0,0,255)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end

function ESPCHEST() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if _G.Esp_Chest then
                if string.find(v.Name,"Chest") then
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Name == "Chest1" then
                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                        if v.Name == "Chest2" then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                        if v.Name == "Chest3" then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end

function ESPDEVILFRUIT() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if _G.Esp_Devil_Fruit then
            if string.find(v.Name, "Fruit") then   
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "GothamBold"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end

function ESPFLOWER() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == "Flower2" or v.Name == "Flower1" then
            if _G.Esp_Flower then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "GothamBold"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end

function ESPFRUIT() 
pcall(function()
    for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if _G.Esp_Fruit then 
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "GothamBold"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                end
            else
                if v.Handle:FindFirstChild('NameEsp'..Number) then
                    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end 
        end
    end
    for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if _G.Esp_Fruit then 
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "GothamBold"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 174, 0)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                end
            else
                if v.Handle:FindFirstChild('NameEsp'..Number) then
                    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end 
        end
    end
    for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if _G.Esp_Fruit then 
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "GothamBold"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(251, 255, 0)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                end
            else
                if v.Handle:FindFirstChild('NameEsp'..Number) then
                    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end 
        end
    end
end)
end

function gunname()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
       if v.ClassName == "Tool" then
        if v.ToolTip == "Gun" then
             xxd = v.Name
          end
       end
end
return xxd
end

---------------------------------------------System-------------------------------------------------------------------

spawn(function()
pcall(function()
       game:GetService("RunService").Heartbeat:Connect(function()
        if _G.Auto_Farm_Level or _G.Auto_New_World or _G.Auto_Third_World or _G.Auto_Farm_Chest or _G.Auto_Farm_Boss or _G.Auto_Farm_All_Boss or _G.Auto_Cake_Prince or _G.Auto_Elite_Hunter or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.Auto_Rengoku or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Bone or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Canvander or _G.Auto_Serpent_Bow or _G.Auto_Twin_Hook or _G.Auto_Farm_Observation_Haki or _G.Auto_Farm_Bounty or _G.Auto_Kill_Player_Gun or _G.Auto_Kill_Player_Melee or _G.Start_Tween_Island or _G.Auto_Next_Island or _G.Auto_Kill_Law then
            if not game:GetService("Workspace"):FindFirstChild("LOL") then
                local Paertaiteen = Instance.new("Part")
                Paertaiteen.Name = "LOL"
                Paertaiteen.Parent = game.Workspace
                Paertaiteen.Anchored = true
                Paertaiteen.Transparency = 1
                Paertaiteen.Size = Vector3.new(10,0.5,10)
                Paertaiteen.Material = "Neon"
            while true do 
                wait(0.1) 
                game:GetService('TweenService'):Create(
                    Paertaiteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                {Color = Color3.fromRGB(255, 0, 0)}):Play() 
                wait(.5)
                game:GetService('TweenService'):Create(
                    Paertaiteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                {Color = Color3.fromRGB(255, 155, 0)}):Play() 
                wait(.5)
    
                game:GetService('TweenService'):Create(
                    Paertaiteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                {Color = Color3.fromRGB(255, 255, 0)}):Play() 
                wait(.5)
    
                game:GetService('TweenService'):Create(
                    Paertaiteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                {Color = Color3.fromRGB(0, 255, 0)}):Play() 
                wait(.5)
    
                game:GetService('TweenService'):Create(
                    Paertaiteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                {Color = Color3.fromRGB(0, 255, 255)}):Play() 
                wait(.5)
    
                game:GetService('TweenService'):Create(
                    Paertaiteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                {Color = Color3.fromRGB(0, 155, 255)}):Play() 
                wait(.5)
    
                game:GetService('TweenService'):Create(
                    Paertaiteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                {Color = Color3.fromRGB(255, 0, 255)}):Play() 
                wait(.5)
    
                game:GetService('TweenService'):Create(
                    Paertaiteen,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
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
    end)
 end)
end)

spawn(function()
game:GetService("RunService").Stepped:Connect(function()
    pcall(function()
          if _G.Auto_Farm_Level or _G.Auto_New_World or _G.Auto_Third_World or _G.Auto_Farm_Chest or _G.Auto_Farm_Boss or _G.Auto_Farm_All_Boss or _G.Auto_Cake_Prince or _G.Auto_Elite_Hunter or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.Auto_Rengoku or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Bone or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Canvander or _G.Auto_Serpent_Bow or _G.Auto_Twin_Hook or _G.Auto_Farm_Observation_Haki or _G.Auto_Farm_Bounty or _G.Auto_Kill_Player_Gun or _G.Auto_Kill_Player_Melee or _G.Start_Tween_Island or _G.Auto_Next_Island or _G.Auto_Kill_Law then
             if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                local Noclip = Instance.new("BodyVelocity")
                Noclip.Name = "BodyClip"
                Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                Noclip.MaxForce = Vector3.new(100000,100000,100000)
                Noclip.Velocity = Vector3.new(0,0,0)
             end
          else	
             if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
             end
          end
    end)
end)
end)

task.spawn(function()
while wait() do
    if _G.fuck == nil or _G.fuck == "" then
        for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ToolTip == "Melee" then
                _G.fuck = v.Name
                WeaponMastery = v.Name
            end
        end
    end
end
end)

spawn(function()
game:GetService("RunService").Stepped:Connect(function()
    pcall(function()
        if _G.Auto_Farm_Level or _G.Auto_New_World or _G.Auto_Third_World or _G.Auto_Farm_Chest or _G.Auto_Farm_Boss or _G.Auto_Farm_All_Boss or _G.Auto_Cake_Prince or _G.Auto_Elite_Hunter or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.Auto_Rengoku or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Bone or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Canvander or _G.Auto_Serpent_Bow or _G.Auto_Twin_Hook or _G.Auto_Farm_Observation_Haki or _G.Auto_Farm_Bounty or _G.Auto_Kill_Player_Gun or _G.Auto_Kill_Player_Melee or _G.Start_Tween_Island or _G.Auto_Next_Island or _G.Auto_Kill_Law then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false    
                end
            end
        end
    end)
end)
end)

spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
    pcall(function()
        if _G.Auto_Farm_Level or _G.Auto_New_World or _G.Auto_Third_World or _G.Auto_Farm_Chest or _G.Auto_Farm_Boss or _G.Auto_Farm_All_Boss or _G.Auto_Cake_Prince or _G.Auto_Elite_Hunter or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.Auto_Rengoku or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Bone or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Canvander or _G.Auto_Serpent_Bow or _G.Auto_Twin_Hook or _G.Auto_Farm_Observation_Haki or _G.Auto_Farm_Bounty or _G.Auto_Kill_Player_Gun or _G.Auto_Kill_Player_Melee or _G.Start_Tween_Island or _G.Auto_Next_Island or _G.Auto_Kill_Law then
            if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                setfflag("HumanoidParallelRemoveNoPhysics", "False")
                setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end
        end
    end)
end)
end)

spawn(function()
while wait() do
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
        if v:IsA("Tool") then
            if v:FindFirstChild("RemoteFunctionShoot") then 
                SelectToolWeaponGun = v.Name
            end
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
        if v:IsA("Tool") then
            if v:FindFirstChild("RemoteFunctionShoot") then 
                SelectToolWeaponGun = v.Name
            end
        end
    end
end
end)

spawn(function()
local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg,false)
gg.__namecall = newcclosure(function(...)
    local method = getnamecallmethod()
    local args = {...}
    if tostring(method) == "FireServer" then
        if tostring(args[1]) == "RemoteEvent" then
            if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                if UseSkillMasteryDevilFruit then
                    args[2] = PositionSkillMasteryDevilFruit
                    return old(unpack(args))
                elseif AimSkillNearest then
                    args[2] = AimBotSkillPosition
                    return old(unpack(args))
                end
            end
        end
    end
    return old(...)
end)
end)


---------------------------------------------Main-------------------------------------------------------------------

local repo = 'https://raw.githubusercontent.com/xQuartyx/UILibrary/main/LinoriaLib/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/SaintGGHH/Kuy-Hub/main/Guiv2.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()



local Window = Library:CreateWindow({
Title = 'Saru Hub Script New v2 - Sunday, November 13, 2022',
Center = true, 
AutoShow = true,
})

local Tabs = {
Main = Window:AddTab('General'),
Player = Window:AddTab('Combat'),
Teleport = Window:AddTab('Teleport'),
Dungeon = Window:AddTab('Dungeon'),
Buy_Item = Window:AddTab('Visual'),
Misc = Window:AddTab('Misc'),
['Settings'] = Window:AddTab('Settings'),
}

ThemeManager:SetLibrary(Library)

ThemeManager:ApplyToTab(Tabs['Settings'])

Library:SetWatermark('Saru Hub Script New - Premiun v2 ')

local MainFarmTab = Tabs.Main:AddLeftTabbox()

local MainFarmSection = MainFarmTab:AddTab('Main')

MainFarmSection:AddToggle('Auto_Farm_Level', {
Text = 'Auto Farm Level',
Default = _G.Auto_Farm_Level,
Tooltip = 'Click to Start',
})

Toggles.Auto_Farm_Level:OnChanged(function()
_G.Auto_Farm_Level = Toggles.Auto_Farm_Level.Value
StopTween(_G.Auto_Farm_Level)
end)

spawn(function()
game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
    pcall(function()
        if _G.Select_Bring_Mob_Mode == "Bring Mob [Normal]" then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.Auto_Farm_Level and StartMagnet and v.Name == Ms and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = PosMon
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                end
            end
        elseif _G.Select_Bring_Mob_Mode == "Bring Mob [Extra]" then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.Auto_Farm_Level and StartMagnet and v.Name ~= "Ice Admiral [Lv. 700] [Boss]" and v.Name ~= "Don Swan [Lv. 3000] [Boss]" and v.Name ~= "Saber Expert [Lv. 200] [Boss]" and v.Name ~= "Longma [Lv. 2000] [Boss]" and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = PosMon
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                end
            end
        end
    end)
end)
end)
spawn(function()
game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
    pcall(function()
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if _G.Auto_Farm_Level and MasteryBFMagnetActive and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).magnitude <= 350 then
                v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                v.HumanoidRootPart.CanCollide = false
                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                if v.Humanoid:FindFirstChild("Animator") then
                    v.Humanoid.Animator:Destroy()
                end
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
            end
        end
    end)
end)
end)


spawn(function()
game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
    pcall(function()
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if _G.Auto_Farm_Level and MasteryGunMagnetActive and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).magnitude <= 350 then
                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                v.HumanoidRootPart.CanCollide = false
                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                if v.Humanoid:FindFirstChild("Animator") then
                    v.Humanoid.Animator:Destroy()
                end
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
            end
        end
    end)
end)
end)

spawn(function()
while wait() do
    if _G.Auto_Farm_Level then
        if _G.Select_Mode_Farm == "Normal Mode" then
            pcall(function()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                    StartMagnet = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    StartMagnet = false
                    CheckQuest()
                    repeat wait() getgenv().ToTarget(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Farm_Level
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                        wait(1.2)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                        wait(0.5)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Ms then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            PosMon = v.HumanoidRootPart.CFrame
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            StartMagnet = true
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until not _G.Auto_Farm_Level or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        StartMagnet = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        end
                    else
                        StartMagnet = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Ms) then
                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                        else	
                            getgenv().ToTarget(PosMon * CFrame.new(0,_G.Distance,0))
                        end
                    end
                end
            end)
        elseif _G.Select_Mode_Farm == "Fast Mode" then
            pcall(function()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                    StartMagnet = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    StartMagnet = false
                    CheckQuest()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Ms then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            PosMon = v.HumanoidRootPart.CFrame
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            StartMagnet = true
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until not _G.Auto_Farm_Level or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        StartMagnet = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        end
                    else
                        StartMagnet = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Ms) then
                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                        else	
                            getgenv().ToTarget(PosMon * CFrame.new(0,_G.Distance,0))
                        end
                    end
                end
            end)
        elseif _G.Select_Mode_Farm == "No Quest" then
            pcall(function()
                CheckQuest()
                if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if v.Name == Ms then
                                if v.Humanoid.Health > 0 then
                                    repeat wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        PosMon = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        StartMagnet = true
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    until not _G.Auto_Farm_Level or v.Humanoid.Health <= 0 or not v.Parent
                                end
                            end
                        end
                    end
                else
                    StartMagnet = false
                    if game:GetService("ReplicatedStorage"):FindFirstChild(Ms) then
                        getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                    else	
                        getgenv().ToTarget(PosMon * CFrame.new(0,_G.Distance,0))
                    end
                end
            end)
        elseif _G.Select_Mode_Farm == "Fruit Mastery Mode" then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    MasteryBFMagnetActive = false
                    CheckQuest()
                    getgenv().ToTarget(CFrameQuest)
                    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                        pcall(function()
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Ms then
                                    repeat wait()
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            HealthMin = v.Humanoid.MaxHealth * _G.Select_Health/100
                                            if v.Humanoid.Health <= HealthMin then
                                                EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                                AutoHaki()
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(2,2,1)
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                UseSkillMasteryDevilFruit = true
                                                DevilFruitMastery = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
                                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
                                                    if _G.Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                    end
                                                    if _G.Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                    end   
                                                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
                                                    if _G.Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) then
                                                    else
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                    end
                                                    if _G.Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                    end
                                                    if _G.Skill_C and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                    end  
                                                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
                                                    if _G.Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                    end
                                                    if _G.Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                    end
                                                    if _G.Skill_C and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                    end
                                                    if _G.Skill_V and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                                    end
                                                end
                                            else
                                                UseSkillMasteryDevilFruit = true
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(40,40,40)
                                            end
                                            MasteryBFMagnetActive = true
                                            PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                        else
                                            MasteryBFMagnetActive = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    until v.Humanoid.Health <= 0 or  _G.Auto_Farm_Level == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    UseSkillMasteryDevilFruit = true
                                end
                            end
                        end)
                    else
                        MasteryBFMagnetActive = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Ms) then
                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                        else
                            if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15 then
                                if PosMonMasteryFruit ~= nil then
                                    getgenv().ToTarget(PosMonMasteryFruit * CFrame.new(0,_G.Distance,0))
                                else
                                    if OldPos ~= nil then
                                        getgenv().ToTarget(OldPos.Position)
                                    end
                                end
                            end
                        end
                    end 
                end
            end)
        elseif _G.Select_Mode_Farm == "Gun Mastery Mode" then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                MasteryGunMagnetActive = false
                CheckQuest()
                getgenv().ToTarget(CFrameQuest)
                if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                    wait(1.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                end
            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                CheckQuest()
                if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                    pcall(function()
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == Ms then
                                repeat wait()
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        HealthMin = v.Humanoid.MaxHealth * _G.Select_Health/100
                                        if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                            AutoHaki()
                                            EquipWeapon(SelectToolWeaponGun)
                                            v.HumanoidRootPart.CanCollide = false
                                            local args = {
                                                [1] = v.Head.Position,
                                                [2] = workspace.Enemies:FindFirstChild(Ms).HumanoidRootPart
                                             }
                                             game:GetService("Players").LocalPlayer.Character[gunname()].RemoteFunctionShoot:InvokeServer(unpack(args))
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                        else
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                        end
                                        MasteryGunMagnetActive = true 
                                        PosMonMasteryGun = v.HumanoidRootPart.CFrame
                                    else
                                        MasteryGunMagnetActive = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                until v.Humanoid.Health <= 0 or _G.MasteryGun == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                MasteryGunMagnetActive = false
                            end
                        end
                    end)
                else
                    getgenv().ToTarget(CFrameMon)
                end 
            end
        end
    end
end
end)

MainFarmSection:AddToggle('Auto_New_World', {
Text = 'Auto New World',
Default = _G.Auto_New_World,
Tooltip = 'Click to Start',
})

Toggles.Auto_New_World:OnChanged(function()
_G.Auto_New_World = Toggles.Auto_New_World.Value
StopTween(_G.Auto_New_World)
end)

if World1 then
spawn(function()
    while wait(.1) do
        if _G.Auto_New_World then
            pcall(function()
                local Lv = game.Players.LocalPlayer.Data.Level.Value
                if Lv >= 700 and World1 then
                    _G.Auto_Farm_Level = false
                    if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
                        local pos1 = CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563)
                        repeat wait() getgenv().ToTarget(pos1) until (pos1.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_New_World
                        wait(1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                        EquipWeapon("Key")
                        local pos2 = CFrame.new(1347.7124, 37.3751602, -1325.6488)
                        repeat wait() getgenv().ToTarget(pos2) until (pos2.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_New_World
                        wait(3)
                    elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        v.HumanoidRootPart.Transparency = 1
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 870),workspace.CurrentCamera.CFrame)
                                    until v.Humanoid.Health <= 0 or not v.Parent or not _G.Auto_New_World
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                end
                            end
                        else
                            getgenv().ToTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                    end
                end
            end)
        end
    end
end)
end

MainFarmSection:AddToggle('Auto_Third_World', {
Text = 'Auto Third World',
Default = _G.Auto_Third_World,
Tooltip = 'Click to Start',
})

Toggles.Auto_Third_World:OnChanged(function()
_G.Auto_Third_World = Toggles.Auto_Third_World.Value
StopTween(_G.Auto_Third_World)
end)

spawn(function()
while wait() do
    if _G.Auto_Third_World then
        pcall(function()
            if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
                _G.Auto_Farm_Level = false
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
                    getgenv().ToTarget(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                    if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        wait(1.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                    end
                    wait(1.8)
                    if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "rip_indra [Lv. 1500] [Boss]" then
                                OldCFrameThird = v.HumanoidRootPart.CFrame
                                repeat wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CFrame = OldCFrameThird
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until _G.Auto_Third_World == false or v.Humanoid.Health <= 0 or not v.Parent
                            end
                        end
                    elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                        getgenv().ToTarget(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                    end
                end
            end
        end)
    end
end
end)

MainFarmSection:AddToggle('Auto_Farm_Chest', {
Text = 'Auto Farm Chest',
Default = _G.Auto_Farm_Chest,
Tooltip = 'Click to Start Auto farm level',
})

Toggles.Auto_Farm_Chest:OnChanged(function()
_G.Auto_Farm_Chest = Toggles.Auto_Farm_Chest.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Farm_Chest then
        pcall(function()
            if not game.Players.LocalPlayer.Character:FindFirstChild("Head") then
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
                        v.CanCollide = false
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    end
                end
            else
                game.Players.LocalPlayer.Character.Head:Destroy()
            end
        end)
    end
end
end)

MainFarmSection:AddToggle('Auto_Farm_Chest', {
Text = 'Auto Farm Saber(Not work)',
Default = _G.Auto_Farm_Chest,
Tooltip = 'Click to Start Auto farm level',
})

Toggles.Auto_Farm_Chest:OnChanged(function()
_G.Auto_Farm_Chest = Toggles.Auto_Farm_Chest.Value
end)

local BossFarmSection = MainFarmTab:AddTab('Boss')

local Boss = {}   
for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
if string.find(v.Name, "Boss") then
    if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
    
    else
        table.insert(Boss, v.Name)
    end
end
end

local SelectBoss = BossFarmSection:AddDropdown('Select_Boss', {
Values = Boss,
Default = 0,
Multi = false,
Text = 'Select Boss',
Tooltip = 'Select Boss',
})

Options.Select_Boss:OnChanged(function()
_G.Select_Boss = Options.Select_Boss.Value
print(Options.Select_Boss.Value)
end)

BossFarmSection:AddButton('Refresh Boss', function()
table.clear(Boss)
for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
    if string.find(v.Name, "Boss") then
        if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
        
        else
            table.insert(Boss, v.Name)
        end
    end
end
SelectBoss:SetValues(Boss)
end)

BossFarmSection:AddToggle('Auto_Farm_Boss', {
Text = 'Auto Farm Boss',
Default = _G.Auto_Farm_Boss,
Tooltip = 'Click to Start',
})

Toggles.Auto_Farm_Boss:OnChanged(function()
_G.Auto_Farm_Boss = Toggles.Auto_Farm_Boss.Value
StopTween(_G.Auto_Farm_Boss)
end)

BossFarmSection:AddToggle('Auto_Boss_Quest', {
Text = 'Auto Boss Quest',
Default = true,
Tooltip = 'Click to Start',
})

Toggles.Auto_Boss_Quest:OnChanged(function()
_G.Auto_Boss_Quest = Toggles.Auto_Boss_Quest.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Farm_Boss then
        pcall(function()
            CheckBossQuest()
            if MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or MsBoss == "Longma [Lv. 2000] [Boss]" or MsBoss == "Don Swan [Lv. 1000] [Boss]" or MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or MsBoss == "Order [Lv. 1250] [Raid Boss]" or MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
                if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == MsBoss then
                            repeat wait()
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                else
                    getgenv().ToTarget(CFrameBoss)
                end
            else
                if _G.Auto_Boss_Quest then
                    CheckBossQuest()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        getgenv().ToTarget(CFrameQuestBoss)
                        if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == MsBoss then
                                    repeat wait()
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))									
                                        else
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            getgenv().ToTarget(CFrameBoss)
                        end
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == MsBoss then
                                repeat wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))										
                                until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        getgenv().ToTarget(CFrameBoss)
                    end
                end
            end
        end)
    end
end
end)

BossFarmSection:AddToggle('Auto_Farm_All_Boss', {
Text = 'Auto Farm All Boss',
Default = _G.Auto_Farm_All_Boss,
Tooltip = 'Click to Start',
})

Toggles.Auto_Farm_All_Boss:OnChanged(function()
_G.Auto_Farm_All_Boss = Toggles.Auto_Farm_All_Boss.Value
wait(0.5)
StopTween(_G.Auto_Farm_Boss)
end)

spawn(function()
while wait() do
    if _G.Auto_Farm_All_Boss then
        pcall(function()
            for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
                if string.find(v.Name,"Boss") then
                    repeat task.wait()
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
                            GotoPos = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                        elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                            if GotoPos then
                                GotoPos:Stop()
                            end
                            AutoHaki()
                            EquipWeapon(_G.SelectWeapon)
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                            game:GetService'VirtualUser':CaptureController()
                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                        end
                    until v.Humanoid.Health <= 0 or _G.Auto_Farm_All_Boss == false or not v.Parent
                end
            end
        end)
    end
end
end)
if World1 or World2 or World3 then
local CakeAndEliteTab = Tabs.Main:AddLeftTabbox()

local CakePrinceSection = CakeAndEliteTab:AddTab('Cake Prince')

local MobKilled = CakePrinceSection:AddLabel("  Function New!")

local MobKilled = CakePrinceSection:AddLabel("  //🔱Auto Farm CakePrince🔱//")

local MobKilled = CakePrinceSection:AddLabel("  //🌐Auto Farm EliteHunter🌐//")

local MobKilled = CakePrinceSection:AddLabel("Killed")

spawn(function()
    while wait() do
        pcall(function()
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                MobKilled:SetText("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).." : To Spawn Cake Prince")
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                MobKilled:SetText("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).." : To Spawn Cake Prince")
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                MobKilled:SetText("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." : To Spawn Cake Prince")
            else
                MobKilled:SetText("Boss Is Spawned")
            end
        end)
    end
end)

CakePrinceSection:AddToggle('Auto_Spawn_Cake_Prince', {
    Text = 'Auto Spawn Cake Prince',
    Default = _G.Auto_Spawn_Cake_Prince,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Spawn_Cake_Prince:OnChanged(function()
    _G.Auto_Spawn_Cake_Prince = Toggles.Auto_Spawn_Cake_Prince.Value
end)

spawn(function()
    while wait() do
        if _G.Auto_Spawn_Cake_Prince then
            pcall(function()
                local args = {
                    [1] = "CakePrinceSpawner",
                    [2] = true
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                    
                local args = {
                    [1] = "CakePrinceSpawner"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
        end
    end
end)

CakePrinceSection:AddToggle('Auto_Cake_Prince', {
    Text = 'Auto Cake Prince',
    Default = _G.Auto_Cake_Prince,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Cake_Prince:OnChanged(function()
    _G.Auto_Cake_Prince = Toggles.Auto_Cake_Prince.Value
    StopTween(_G.Auto_Cake_Prince)
end)

spawn(function()
    while wait() do
        pcall(function()
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41)) - 500)
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),40,41)) - 500)
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),41,41)) - 500)
            end
        end)
    end
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.Auto_Cake_Prince and StartCakeMagnet and (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = POSCAKE
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                end
            end
        end)
    end)
end)

if World3 then
    spawn(function()
        while wait() do
            if _G.Auto_Cake_Prince then
                pcall(function()
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                        StartCakeMagnet = false
                        getgenv().ToTarget(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))    
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
                            if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
                                repeat wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.CanCollide = false
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                until _G.Auto_Cake_Prince == false or not v.Parent or v.Humanoid.Health <= 0
                            end    
                        end    
                    else	
                        if game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]")  then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                                if (v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Cookie Crafter [Lv. 2200]") and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        POSCAKE = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        StartCakeMagnet = true
                                    until _G.Auto_Cake_Prince == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            StartCakeMagnet = false
                            getgenv().ToTarget(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
                        end
                    end
                end)
            end
        end
    end)
end

local EliteHunterSection = CakeAndEliteTab:AddTab('Elite Hunter')

local EliteHunterStatus = EliteHunterSection:AddLabel("")

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                EliteHunterStatus:SetText("Status : Spawned")	
            else
                EliteHunterStatus:SetText("Status : Not Spawn")	
            end
        end)
    end
end)

local TotalEliteHunter = EliteHunterSection:AddLabel("")

spawn(function()
    while wait() do
        pcall(function()
            TotalEliteHunter:SetText("Total Elite Hunter : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
        end)
    end
end)

EliteHunterSection:AddToggle('Auto_Elite_Hunter', {
    Text = 'Auto Elite Hunter',
    Default = _G.Auto_Elite_Hunter,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Elite_Hunter:OnChanged(function()
    _G.Auto_Elite_Hunter = Toggles.Auto_Elite_Hunter.Value
    StopTween(_G.Auto_Elite_Hunter)
end)

EliteHunterSection:AddToggle('Auto_Elite_Hunter_Hop', {
    Text = 'Auto Elite Hunter Hop',
    Default = _G.Auto_Elite_Hunter_Hop,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Elite_Hunter_Hop:OnChanged(function()
    _G.Auto_Elite_Hunter_Hop = Toggles.Auto_Elite_Hunter_Hop.Value
    StopTween(_G.Auto_Elite_Hunter_Hop)
end)

spawn(function()
    while wait() do
        if _G.Auto_Elite_Hunter and World3 then
            pcall(function()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if string.find(QuestTitle,"Diablo") or string.find(QuestTitle,"Deandre") or string.find(QuestTitle,"Urban") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until _G.Auto_Elite_Hunter == false or v.Humanoid.Health <= 0 or not v.Parent
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                            else
                                if not game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or _G.Auto_Elite_Hunter_Hop then
                                        local PlaceID = game.PlaceId
                                        local AllIDs = {}
                                        local foundAnything = ""
                                        local actualHour = os.date("!*t").hour
                                        local Deleted = false
                                        function TPReturner()
                                            local Site;
                                            if foundAnything == "" then
                                                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
                                            else
                                                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
                                            end
                                            local ID = ""
                                            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                                                foundAnything = Site.nextPageCursor
                                            end
                                            local num = 0;
                                            for i,v in pairs(Site.data) do
                                                local Possible = true
                                                ID = tostring(v.id)
                                                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                                                    for _,Existing in pairs(AllIDs) do
                                                        if num ~= 0 then
                                                            if ID == tostring(Existing) then
                                                                Possible = false
                                                            end
                                                        else
                                                            if tonumber(actualHour) ~= tonumber(Existing) then
                                                                local delFile = pcall(function()
                                                                    AllIDs = {}
                                                                    table.insert(AllIDs, actualHour)
                                                                end)
                                                            end
                                                        end
                                                        num = num + 1
                                                    end
                                                    if Possible == true then
                                                        table.insert(AllIDs, ID)
                                                        wait()
                                                        pcall(function()
                                                            wait()
                                                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                                                        end)
                                                        wait(4)
                                                    end
                                                end
                                            end
                                        end
                                        function Teleport() 
                                            while wait() do
                                                pcall(function()
                                                    TPReturner()
                                                    if foundAnything ~= "" then
                                                        TPReturner()
                                                    end
                                                end)
                                            end
                                        end
                                    Teleport()
                                end
                            end
                        end                    
                    end
                end
            end)
        end
    end
end)
end

if World1 then
local MiscFarmTab = Tabs.Main:AddLeftTabbox()

local MiscFarmSection = MiscFarmTab:AddTab('Misc')

MiscFarmSection:AddToggle('Auto_Saber', {
    Text = 'Auto Saber',
    Default = _G.Auto_Saber,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Saber:OnChanged(function()
    _G.Auto_Saber = Toggles.Auto_Saber.Value
end)

MiscFarmSection:AddToggle('Auto_Saber_Hop', {
    Text = 'Auto Saber Hop',
    Default = _G.Auto_Saber_Hop,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Saber_Hop:OnChanged(function()
    _G.Auto_Saber_Hop = Toggles.Auto_Saber_Hop.Value
end)

spawn(function()
    while wait() do
        if _G.Auto_Saber then
            if game.Players.localPlayer.Data.Level.Value < 200 then

            else
                if game.Workspace.Map.Jungle.Final.Part.CanCollide == false then
                    if _G.Auto_Saber and game.ReplicatedStorage:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                        if game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Saber Expert [Lv. 200] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                            Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                                        elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                            if Farmtween then
                                                Farmtween:Stop()
                                            end
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                    until not _G.Auto_Saber or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            Questtween = toTarget(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
                            if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                if Questtween then
                                    Questtween:Stop()
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055, 0.885240912, 3.52892613e-08, 0.465132833, -6.60881128e-09, 1, -6.32913171e-08, -0.465132833, 5.29540891e-08, 0.885240912)
                            end
                        end
                    else
                        if _G.Auto_Saber_Hop then
                            Hop()
                        end
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") and game.Players.localPlayer.Data.Level.Value >= 200 then
                    EquipWeapon("Relic")
                    wait(0.5)
                    Questtween = toTarget(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
                    if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                        if Questtween then
                            Questtween:Stop()
                        end
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055, 0.885240912, 3.52892613e-08, 0.465132833, -6.60881128e-09, 1, -6.32913171e-08, -0.465132833, 5.29540891e-08, 0.885240912)
                    end
                else
                    if Workspace.Map.Jungle.QuestPlates.Door.CanCollide == false then
                        if game.Workspace.Map.Desert.Burn.Part.CanCollide == false then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") == 0 then
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                    if game.Workspace.Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if _G.Auto_Saber and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Mob Leader [Lv. 120] [Boss]" then
                                                repeat
                                                    pcall(function() wait() 
                                                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                            Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                                                        elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                            if Farmtween then
                                                                Farmtween:Stop()
                                                            end
                                                            EquipWeapon(_G.SelectWeapon)
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                local args = {
                                                                    [1] = "Buso"
                                                                }
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                            end
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                                            game:GetService'VirtualUser':CaptureController()
                                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                        end
                                                    end)
                                                until not _G.Auto_Saber or not v.Parent or v.Humanoid.Health <= 0
                                            end
                                        end
                                    else
                                        Questtween = toTarget(CFrame.new(-2848.59399, 7.4272871, 5342.44043).Position,CFrame.new(-2848.59399, 7.4272871, 5342.44043))
                                        if (CFrame.new(-2848.59399, 7.4272871, 5342.44043).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                            if Questtween then
                                                Questtween:Stop()
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.928248107)
                                        end
                                    end
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") then
                                        EquipWeapon("Relic")
                                        wait(0.5)
                                        Questtween = toTarget(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
                                        if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                            if Questtween then
                                                Questtween:Stop()
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055)
                                        end
                                    else
                                        Questtween = toTarget(CFrame.new(-910.979736, 13.7520342, 4078.14624).Position,CFrame.new(-910.979736, 13.7520342, 4078.14624))
                                        if (CFrame.new(-910.979736, 13.7520342, 4078.14624).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                            if Questtween then
                                                Questtween:Stop()
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910.979736, 13.7520342, 4078.14624, 0.00685182028, -1.53155766e-09, -0.999976516, 9.15205245e-09, 1, -1.46888401e-09, 0.999976516, -9.14177267e-09, 0.00685182028)
                                            wait(.5)
                                            local args = {
                                                [1] = "ProQuestProgress",
                                                [2] = "RichSon"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                    end
                                else
                                    Questtween = toTarget(CFrame.new(-910.979736, 13.7520342, 4078.14624).Position,CFrame.new(-910.979736, 13.7520342, 4078.14624))
                                    if (CFrame.new(-910.979736, 13.7520342, 4078.14624).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        if Questtween then
                                            Questtween:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910.979736, 13.7520342, 4078.14624)
                                        local args = {
                                            [1] = "ProQuestProgress",
                                            [2] = "RichSon"
                                        }
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                end
                            else
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Cup") or game.Players.LocalPlayer.Character:FindFirstChild("Cup") then
                                    EquipWeapon("Cup")
                                    if game.Players.LocalPlayer.Character.Cup.Handle:FindFirstChild("TouchInterest") then
                                        Questtween = toTarget(CFrame.new(1397.229, 37.3480148, -1320.85217).Position,CFrame.new(1397.229, 37.3480148, -1320.85217))
                                        if (CFrame.new(1397.229, 37.3480148, -1320.85217).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                            if Questtween then
                                                Questtween:Stop()
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1397.229, 37.3480148, -1320.85217, -0.11285457, 2.01368788e-08, 0.993611455, 1.91641178e-07, 1, 1.50028845e-09, -0.993611455, 1.90586206e-07, -0.11285457)
                                        end
                                    else
                                        wait(0.5)
                                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                            local args = {
                                                [1] = "ProQuestProgress",
                                                [2] = "SickMan"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                    end
                                else
                                    Questtween = toTarget(game.Workspace.Map.Desert.Cup.Position,game.Workspace.Map.Desert.Cup.CFrame)
                                    if (game.Workspace.Map.Desert.Cup.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        if Questtween then
                                            Questtween:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Desert.Cup.CFrame
                                    end
                                    -- firetouchinterest(game.Workspace.Map.Desert.Cup.TouchInterest,game.Players.LocalPlayer.Character.Head, 1)
                                end
                            end
                        else
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                EquipWeapon("Torch")
                                Questtween = toTarget(CFrame.new(1114.87708, 4.9214654, 4349.8501).Position,CFrame.new(1114.87708, 4.9214654, 4349.8501))
                                if (CFrame.new(1114.87708, 4.9214654, 4349.8501).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    if Questtween then
                                        Questtween:Stop()
                                    end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.87708, 4.9214654, 4349.8501, -0.612586915, -9.68697833e-08, 0.790403247, -1.2634203e-07, 1, 2.4638446e-08, -0.790403247, -8.47679615e-08, -0.612586915)
                                end
                            else
                                Questtween = toTarget(CFrame.new(-1610.00757, 11.5049858, 164.001587).Position,CFrame.new(-1610.00757, 11.5049858, 164.001587))
                                if (CFrame.new(-1610.00757, 11.5049858, 164.001587).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    if Questtween then
                                        Questtween:Stop()
                                    end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408)
                                end
                            end
                        end
                    else
                        for i,v in pairs(Workspace.Map.Jungle.QuestPlates:GetChildren()) do
                            if v:IsA("Model") then wait()
                                if v.Button.BrickColor ~= BrickColor.new("Camo") then
                                    repeat wait()
                                        Questtween = toTarget(v.Button.Position,v.Button.CFrame)
                                        if (v.Button.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                            if Questtween then
                                                Questtween:Stop()
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Button.CFrame
                                        end
                                    until not _G.Auto_Saber or v.Button.BrickColor == BrickColor.new("Camo")
                                end
                            end
                        end    
                    end
                end
            end 
        end
    end
end)

MiscFarmSection:AddToggle('Auto_Pole_V1', {
    Text = 'Auto Pole V1',
    Default = _G.Auto_Pole_V1,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Pole_V1:OnChanged(function()
    _G.Auto_Pole = Toggles.Auto_Pole_V1.Value
    StopTween(_G.Auto_Pole)
end)

MiscFarmSection:AddToggle('Auto_Pole_V1_Hop', {
    Text = 'Auto Pole V1 Hop',
    Default = _G.Auto_Pole_V1_Hop,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Pole_V1_Hop:OnChanged(function()
    _G.Auto_Pole_Hop = Toggles.Auto_Pole_V1_Hop.Value
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_Pole and game.ReplicatedStorage:FindFirstChild("Thunder God [Lv. 575] [Boss]") or game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                if game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if _G.Auto_Pole and v.Name == "Thunder God [Lv. 575] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            repeat wait()  
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end 
                            until not _G.Auto_Pole or v.Humanoid.Health <= 0 or not v.Parent
                        end
                    end
                else
                    Questtween = toTarget(CFrame.new(-7900.66406, 5606.90918, -2267.46436).Position,CFrame.new(-7900.66406, 5606.90918, -2267.46436))
                    if (CFrame.new(-7900.66406, 5606.90918, -2267.46436).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                        if Questtween then
                            Questtween:Stop()
                        end
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7900.66406, 5606.90918, -2267.46436)
                    end
                end
            else
                if _G.Auto_Pole_Hop then
                    Hop()
                end
            end
        end)
    end
end)
elseif World2 then
local MiscFarmTab = Tabs.Main:AddLeftTabbox()

local MiscFarmSection = MiscFarmTab:AddTab('Misc 2 P1')

MiscFarmSection:AddToggle('Auto_Factory_Farm', {
    Text = 'Auto Factory Farm',
    Default = _G.Auto_Factory_Farm,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Factory_Farm:OnChanged(function()
    _G.Auto_Factory_Farm = Toggles.Auto_Factory_Farm.Value
    StopTween(_G.Auto_Factory_Farm)
end)

spawn(function()
    while wait() do
        if _G.Auto_Factory_Farm then
            pcall(function()
                if game.Workspace.Enemies:FindFirstChild("Core") then
                    _G.FactoryCore = true
                    _G.Auto_Farm_Level = false
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if _G.FactoryCore and v.Name == "Core" and v.Humanoid.Health > 0 then
                            repeat wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,10,10))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until not _G.FactoryCore or v.Humanoid.Health <= 0 or _G.Auto_Factory_Farm == false
                        end
                    end
                elseif game.ReplicatedStorage:FindFirstChild("Core") and game.ReplicatedStorage:FindFirstChild("Core"):FindFirstChild("Humanoid") then
                    _G.FactoryCore = true
                    _G.Auto_Farm_Level = false
                    getgenv().ToTarget(CFrame.new(502.7349853515625, 143.0749053955078, -379.078125))
                elseif _G.Auto_Farm_Level then
                    _G.FactoryCore = false
                    _G.Auto_Farm_Level = true
                end
            end)
        end
    end
end)

MiscFarmSection:AddToggle('Auto_Farm_Ectoplasm', {
    Text = 'Auto Farm Ectoplasm',
    Default = _G.Auto_Farm_Ectoplasm,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Farm_Ectoplasm:OnChanged(function()
    _G.Auto_Farm_Ectoplasm = Toggles.Auto_Farm_Ectoplasm.Value
    StopTween(_G.Auto_Farm_Ectoplasm)
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.Auto_Farm_Ectoplasm and MagnetEctoplasm and string.find(v.Name, "Ship") and (v.HumanoidRootPart.Position - PosMonEctoplasm.Position).magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = PosMonEctoplasm
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                end
            end
        end)
    end)
end)

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Auto_Farm_Ectoplasm then
                if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if string.find(v.Name, "Ship") then
                            repeat wait()
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                PosMonEctoplasm = v.HumanoidRootPart.CFrame
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                MagnetEctoplasm = true
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until _G.Auto_Farm_Ectoplasm == false or not v.Parent or v.Humanoid.Health <= 0
                            MagnetEctoplasm = false
                        else
                            MagnetEctoplasm = false
                            getgenv().ToTarget(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
                        end
                    end
                else
                    MagnetEctoplasm = false
                    local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    if Distance > 20000 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                    end
                    getgenv().ToTarget(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
                end
            end
        end
    end)
end)

MiscFarmSection:AddToggle('Auto_Bartilo_Quest', {
    Text = 'Auto Bartilo Quest',
    Default = _G.Auto_Bartilo_Quest,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Bartilo_Quest:OnChanged(function()
    _G.Auto_Bartilo_Quest = Toggles.Auto_Bartilo_Quest.Value
    StopTween(_G.Auto_Bartilo_Quest)
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.Auto_Bartilo_Quest and AutoBartiloBring and v.Name == "Swan Pirate [Lv. 775]" and (v.HumanoidRootPart.Position - PosMonBarto.Position).magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = PosMonBarto
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                end
            end
        end)
    end)
end)

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Auto_Bartilo_Quest then
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                        if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Swan Pirate [Lv. 775]" then
                                    pcall(function()
                                        repeat wait()
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            v.HumanoidRootPart.Transparency = 1
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))													
                                            PosMonBarto =  v.HumanoidRootPart.CFrame
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            AutoBartiloBring = true
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Bartilo_Quest == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        AutoBartiloBring = false
                                    end)
                                end
                            end
                        else
                            repeat getgenv().ToTarget(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
                        end
                    else
                        repeat getgenv().ToTarget(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                    end 
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Jeremy [Lv. 850] [Boss]" then
                                OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                repeat wait()
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.HumanoidRootPart.CFrame = OldCFrameBartlio
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Bartilo_Quest == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                        repeat getgenv().ToTarget(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                        wait(1)
                        repeat getgenv().ToTarget(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                        wait(2)
                    else
                        repeat getgenv().ToTarget(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                    repeat getgenv().ToTarget(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat getgenv().ToTarget(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                    wait(1)
                    repeat getgenv().ToTarget(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat getgenv().ToTarget(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                    wait(1)
                    repeat getgenv().ToTarget(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                    wait(1)
                    repeat getgenv().ToTarget(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                    wait(1)
                    repeat getgenv().ToTarget(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                    wait(1)
                    repeat getgenv().ToTarget(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                end
            end 
        end
    end)
end)

MiscFarmSection:AddToggle('Auto_Rengoku', {
    Text = 'Auto Rengoku',
    Default = _G.Auto_Rengoku,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Rengoku:OnChanged(function()
    _G.Auto_Rengoku = Toggles.Auto_Rengoku.Value
    StopTween(_G.Auto_Rengoku)
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.Auto_Rengoku and StartRengokuMagnet and (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and (v.HumanoidRootPart.Position - RengokuMon.Position).magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = RengokuMon
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                end
            end
        end)
    end)
end)

spawn(function()
    while wait() do
        if _G.Auto_Rengoku then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                    EquipWeapon("Hidden Key")
                    getgenv().ToTarget(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
                            repeat wait()
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                RengokuMon = v.HumanoidRootPart.CFrame
                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                StartRengokuMagnet = true
                            until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.Auto_Rengoku == false or not v.Parent or v.Humanoid.Health <= 0
                            StartRengokuMagnet = false
                        end
                    end
                else
                    StartRengokuMagnet = false
                    getgenv().ToTarget(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                end
            end)
        end
    end
end)

MiscFarmSection:AddToggle('Auto_Evo_Race_V2', {
    Text = 'Auto Evo Race V2',
    Default = _G.Auto_Evo_Race_V2,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Evo_Race_V2:OnChanged(function()
    _G.Auto_Evo_Race_V2 = Toggles.Auto_Evo_Race_V2.Value
    StopTween(_G.Auto_Evo_Race_V2)
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.Auto_Evo_Race_V2 and StartEvoMagnet and v.Name == "Swan Pirate [Lv. 775]" and (v.HumanoidRootPart.Position - PosMonEvo.Position).magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = PosMonEvo
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                end
            end
        end)
    end)
end)

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Auto_Evo_Race_V2 then
                if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                        getgenv().ToTarget(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                        if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.3)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                                getgenv().ToTarget(game:GetService("Workspace").Flower1.CFrame)
                            elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                                getgenv().ToTarget(game:GetService("Workspace").Flower2.CFrame)
                            elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Swan Pirate [Lv. 775]" then
                                            repeat wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                PosMonEvo = v.HumanoidRootPart.CFrame
                                                StartEvoMagnet = true
                                            until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Evo_Race_V2 == false
                                            StartEvoMagnet = false
                                        end
                                    end
                                else
                                    StartEvoMagnet = false
                                    getgenv().ToTarget(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
                                end
                            end
                        end)
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                    end
                end
            end
        end
    end)
end)

MiscFarmSection:AddToggle('Auto_Swan_Glasses', {
    Text = 'Auto Swan Glasses',
    Default = _G.Auto_Swan_Glasses,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Swan_Glasses:OnChanged(function()
    _G.Auto_Swan_Glasses = Toggles.Auto_Swan_Glasses.Value
    StopTween(_G.Auto_Swan_Glasses)
end)

MiscFarmSection:AddToggle('Auto_Swan_Glasses_Hop', {
    Text = 'Auto Swan Glasses Hop',
    Default = _G.Auto_Swan_Glasses_Hop,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Swan_Glasses_Hop:OnChanged(function()
    _G.Auto_Swan_Glasses_Hop = Toggles.Auto_Swan_Glasses_Hop.Value
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_Swan_Glasses and game.ReplicatedStorage:FindFirstChild("Don Swan [Lv. 1000] [Boss]") or game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                if game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if _G.Auto_Swan_Glasses and v.Name == "Don Swan [Lv. 1000] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            repeat wait()  
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end 
                            until not _G.Auto_Swan_Glasses or v.Humanoid.Health <= 0 or not v.Parent
                        end
                    end
                else
                    Questtween = toTarget(CFrame.new(2289.47900390625, 15.152046203613281, 739.512939453125).Position,CFrame.new(2289.47900390625, 15.152046203613281, 739.512939453125))
                    if (CFrame.new(2289.47900390625, 15.152046203613281, 739.512939453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                        if Questtween then
                            Questtween:Stop()
                        end
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2289.47900390625, 15.152046203613281, 739.512939453125)
                    end
                end
            else
                if _G.Auto_Swan_Glasses_Hop then
                    Hop()
                end
            end
        end)
    end
end)

MiscFarmSection:AddToggle('Auto_Dragon_Trident', {
    Text = 'Auto Dragon Trident',
    Default = _G.Auto_Dragon_Trident,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Dragon_Trident:OnChanged(function()
    _G.Auto_Dragon_Trident = Toggles.Auto_Dragon_Trident.Value
    StopTween(_G.Auto_Dragon_Trident)
end)

MiscFarmSection:AddToggle('Auto_Dragon_Trident_Hop', {
    Text = 'Auto Dragon Trident Hop',
    Default = _G.Auto_Dragon_Trident_Hop,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Dragon_Trident_Hop:OnChanged(function()
    _G.Auto_Dragon_Trident_Hop = Toggles.Auto_Dragon_Trident_Hop.Value
end)

spawn(function()
    while wait() do
        if _G.Auto_Dragon_Trident then
            pcall(function()
                if _G.Auto_Dragon_Trident and game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game.Workspace.Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
                    if game.Workspace.Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Tide Keeper [Lv. 1475] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                    elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end 
                                until _G.Auto_Dragon_Trident or v.Humanoid.Health <= 0 or not v.Parent
                            end
                        end
                    else
                        getgenv().ToTarget(CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125))
                    end
                else
                    if _G.Auto_Dragon_Trident_Hop then
                        Hop()
                    end
                end
            end)
        end
    end
end)

elseif World3 then
local MiscFarmTab = Tabs.Main:AddLeftTabbox()

local MiscFarmSection = MiscFarmTab:AddTab('Misc')

MiscFarmSection:AddToggle('Auto_Soul_Reaper', {
    Text = 'Auto Soul Reaper',
    Default = _G.Auto_Soul_Reaper,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Soul_Reaper:OnChanged(function()
    _G.Auto_Soul_Reaper = Toggles.Auto_Soul_Reaper.Value
    StopTween(_G.Auto_Soul_Reaper)
end)

spawn(function()
    while wait() do
        if _G.Auto_Soul_Reaper then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then                    
                    getgenv().ToTarget(CFrame.new(-8932.83789, 144.098709, 6059.34229, -0.999290943, 7.95623478e-09, -0.0376505218, 4.4684243e-09, 1, 9.27205832e-08, 0.0376505218, 9.24866086e-08, -0.999290943))  
                elseif game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                    if game.Workspace.Enemies:FindFirstChild ("Soul Reaper [Lv. 2100] [Raid Boss]") then    
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]"  then
                                if _G.Auto_Soul_Reaper and v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    until not _G.Auto_Soul_Reaper or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    end
                else
                    local args = {
                        [1] = "Bones",
                        [2] = "Buy",
                        [3] = 1,
                        [4] = 1
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end)
        end
    end
end)

MiscFarmSection:AddToggle('Auto_Farm_Bone', {
    Text = 'Auto Farm Bone',
    Default = _G.Auto_Farm_Bone,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Farm_Bone:OnChanged(function()
    _G.Auto_Farm_Bone = Toggles.Auto_Farm_Bone.Value
    StopTween(_G.Auto_Farm_Bone)
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.Auto_Farm_Bone and StartMagnetBoneMon and (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = PosMonBone
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                end
            end
        end)
    end)
end)

spawn(function()
    while wait(.1) do
        if _G.Auto_Farm_Bone and World3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
                            if v:WaitForChild("Humanoid").Health > 0 then
                                repeat wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    PosMonBone = v.HumanoidRootPart.CFrame
                                    StartMagnetBoneMon = true
                                until _G.Auto_Farm_Bone == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    StartMagnetBoneMon = false
                    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if v.Name == "Reborn Skeleton [Lv. 1975]" then
                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                        elseif v.Name == "Living Zombie [Lv. 2000]" then
                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                        elseif v.Name == "Demonic Soul [Lv. 2025]" then
                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                        elseif v.Name == "Posessed Mummy [Lv. 2050]" then
                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                        end
                    end
                end
            end)
        end
    end
end)

MiscFarmSection:AddToggle('Auto_Yama', {
    Text = 'Auto Yama',
    Default = _G.Auto_Yama,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Yama:OnChanged(function()
    _G.Auto_Yama = Toggles.Auto_Yama.Value
    StopTween(_G.Auto_Yama)
end)

spawn(function()
    while wait() do
        if _G.Auto_Yama then
            pcall(function()
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                    fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                end
            end)
        end
    end
end)

MiscFarmSection:AddToggle('Auto_Rainbow_Haki', {
    Text = 'Auto Rainbow Haki',
    Default = _G.Auto_Rainbow_Haki,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Rainbow_Haki:OnChanged(function()
    _G.Auto_Rainbow_Haki = Toggles.Auto_Rainbow_Haki.Value
    StopTween(_G.Auto_Rainbow_Haki)
end)

MiscFarmSection:AddToggle('Auto_Rainbow_Haki_Hop', {
    Text = 'Auto Rainbow Haki Hop',
    Default = _G.Auto_Rainbow_Haki_Hop,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Rainbow_Haki_Hop:OnChanged(function()
    _G.Auto_Rainbow_Haki_Hop = Toggles.Auto_Rainbow_Haki_Hop.Value
end)

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Auto_Rainbow_Haki then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                    if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Stone [Lv. 1550] [Boss]") or game.Workspace.Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Stone [Lv. 1550] [Boss]" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            getgenv().ToTarget(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
                        end
                    else
                        if _G.Auto_Rainbow_Haki_Hop then
                            Hop()
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
                    if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Island Empress [Lv. 1675] [Boss]") or game.Workspace.Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Island Empress [Lv. 1675] [Boss]" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            getgenv().ToTarget(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
                        end
                    else
                        if _G.Auto_Rainbow_Haki_Hop then
                            Hop()
                        end
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                    if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") or game.Workspace.Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            getgenv().ToTarget(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
                        end
                    else
                        if _G.Auto_Rainbow_Haki_Hop then
                            Hop()
                        end
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                    if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") or game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            getgenv().ToTarget(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
                        end
                    else 
                        if _G.Auto_Rainbow_Haki_Hop then
                            Hop()
                        end
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                    if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") or game.Workspace.Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            getgenv().ToTarget(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                        end
                    else 
                        if _G.Auto_Rainbow_Haki_Hop then
                            Hop()
                        end
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                end
            end
        end
    end)
end)

MiscFarmSection:AddToggle('Auto_Musketeer_Hat', {
    Text = 'Auto Musketeer Hat',
    Default = _G.Auto_Musketeer_Hat,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Musketeer_Hat:OnChanged(function()
    _G.Auto_Musketeer_Hat = Toggles.Auto_Musketeer_Hat.Value
    StopTween(_G.Auto_Musketeer_Hat)
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.Auto_Musketeer_Hat and StartMagnetMusketeerhat and v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = MusketeerHatMon
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                end
            end
        end)
    end)
end)

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Auto_Musketeer_Hat then
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Forest Pirate [Lv. 1825]" then
                                    repeat wait()
                                        pcall(function()
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                            v.HumanoidRootPart.CanCollide = false
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            MusketeerHatMon = v.HumanoidRootPart.CFrame
                                            StartMagnetMusketeerhat = true
                                        end)
                                    until _G.Auto_Musketeer_Hat == false or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    StartMagnetMusketeerhat = false
                                end
                            end
                        else
                            StartMagnetMusketeerhat = false
                            getgenv().ToTarget(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                        end
                    else
                        getgenv().ToTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                        if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                    OldCFrameElephant = v.HumanoidRootPart.CFrame
                                    repeat wait()
                                        pcall(function()
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.CFrame = OldCFrameElephant
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        end)
                                    until _G.Auto_Musketeer_Hat == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            getgenv().ToTarget(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                        end
                    else
                        getgenv().ToTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                        if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
                    getgenv().ToTarget(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                end
            end
        end
    end)
end)

local MiscFarm2Section = MiscFarmTab:AddTab('Misc')

MiscFarm2Section:AddToggle('Auto_Canvander', {
    Text = 'Auto Canvander',
    Default = _G.Auto_Canvander,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Canvander:OnChanged(function()
    _G.Auto_Canvander = Toggles.Auto_Canvander.Value
    StopTween(_G.Auto_Canvander)
end)

MiscFarm2Section:AddToggle('Auto_Canvander_Hop', {
    Text = 'Auto Canvander Hop',
    Default = _G.Auto_Canvander_Hop,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Canvander_Hop:OnChanged(function()
    _G.Auto_Canvander_Hop = Toggles.Auto_Canvander_Hop.Value
end)

spawn(function()
    while wait() do
        if _G.Auto_Canvander then
            pcall(function()
                if _G.Auto_Canvander and game.ReplicatedStorage:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") or game.Workspace.Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                    if game.Workspace.Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                    elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end 
                                until _G.Auto_Canvander or v.Humanoid.Health <= 0 or not v.Parent
                            end
                        end
                    else
                        getgenv().ToTarget(CFrame.new(5240.40869140625, 22.536449432373047, 17.463970184326172))
                    end
                else
                    if _G.Auto_Canvander_Hop then
                        Hop()
                    end
                end
            end)
        end
    end
end)

MiscFarm2Section:AddToggle('Auto_Serpent_Bow', {
    Text = 'Auto Serpent Bow',
    Default = _G.Auto_Serpent_Bow,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Serpent_Bow:OnChanged(function()
    _G.Auto_Serpent_Bow = Toggles.Auto_Serpent_Bow.Value
    StopTween(_G.Auto_Serpent_Bow)
end)

MiscFarm2Section:AddToggle('Auto_Serpent_Bow_Hop', {
    Text = 'Auto Serpent Bow Hop',
    Default = _G.Auto_Serpent_Bow_Hop,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Serpent_Bow_Hop:OnChanged(function()
    _G.Auto_Serpent_Bow_Hop = Toggles.Auto_Serpent_Bow_Hop.Value
end)

spawn(function()
    while wait() do
        if _G.Auto_Serpent_Bow then
            pcall(function()
                if _G.Auto_Serpent_Bow and game.ReplicatedStorage:FindFirstChild("Island Empress [Lv. 1675] [Boss]") or game.Workspace.Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                    if game.Workspace.Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Island Empress [Lv. 1675] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                    elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end 
                                until _G.Auto_Serpent_Bow or v.Humanoid.Health <= 0 or not v.Parent
                            end
                        end
                    else
                        getgenv().ToTarget(CFrame.new(5764.1826171875, 700.425537109375, 141.11996459960938))
                    end
                else
                    if _G.Auto_Serpent_Bow_Hop then
                        Hop()
                    end
                end
            end)
        end
    end
end)

MiscFarm2Section:AddToggle('Auto_Twin_Hook', {
    Text = 'Auto Twin Hook',
    Default = _G.Auto_Twin_Hook,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Twin_Hook:OnChanged(function()
    _G.Auto_Twin_Hook = Toggles.Auto_Twin_Hook.Value
    StopTween(_G.Auto_Twin_Hook)
end)

MiscFarm2Section:AddToggle('Auto_Twin_Hook_Hop', {
    Text = 'Auto Twin Hook Hop',
    Default = _G.Auto_Twin_Hook_Hop,
    Tooltip = 'Click to Start',
})

Toggles.Auto_Twin_Hook_Hop:OnChanged(function()
    _G.Auto_Twin_Hook_Hop = Toggles.Auto_Twin_Hook_Hop.Value
end)

spawn(function()
    while wait() do
        if _G.Auto_Twin_Hook then
            pcall(function()
                if _G.Auto_Twin_Hook and game.ReplicatedStorage:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") or game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                    if game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Captain Elephant [Lv. 1875] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                    elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end 
                                until _G.Auto_Twin_Hook or v.Humanoid.Health <= 0 or not v.Parent
                            end
                        end
                    else
                        getgenv().ToTarget(CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625))
                    end
                else
                    if _G.Auto_Twin_Hook_Hop then
                        Hop()
                    end
                end
            end)
        end
    end
end)

end

local ObservationTab = Tabs.Main:AddLeftTabbox()

local ObservationSection = ObservationTab:AddTab('Observation Misc')

ObservationSection:AddToggle('Auto_Farm_Observation_Haki', {
Text = 'Auto Farm Observation Haki',
Default = _G.Auto_Farm_Observation_Haki,
Tooltip = 'Click to Start',
})

Toggles.Auto_Farm_Observation_Haki:OnChanged(function()
_G.Auto_Farm_Observation_Haki = Toggles.Auto_Farm_Observation_Haki.Value
StopTween(_G.Auto_Farm_Observation_Haki)
if _G.Auto_Farm_Observation_Haki then
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):SetKeyDown('0x65')
    wait(2)
    game:GetService("VirtualUser"):SetKeyUp('0x65')
 end
end)

spawn(function()
while wait() do wait(40)
    pcall(function()
        if _G.Auto_Farm_Observation_Haki and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
            game:GetService('VirtualUser'):CaptureController()
            game:GetService('VirtualUser'):SetKeyDown('0x65')
            wait(2)
            game:GetService('VirtualUser'):SetKeyUp('0x65')
        end
    end)
end
end)

ObservationSection:AddToggle('Auto_Farm_Observation_Haki_Hop', {
Text = 'Auto Farm Observation Haki Hop',
Default = _G.Auto_Farm_Observation_Haki_Hop,
Tooltip = 'Click to Start',
})

Toggles.Auto_Farm_Observation_Haki_Hop:OnChanged(function()
_G.Auto_Farm_Observation_Haki_Hop = Toggles.Auto_Farm_Observation_Haki_Hop.Value
end)

spawn(function()
while wait() do
    pcall(function()
        if _G.Auto_Farm_Observation_Haki then
            if World2 then
                if game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") then
                    if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                        repeat wait(.1)
                            getgenv().ToTarget(game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]").HumanoidRootPart.CFrame * CFrame.new(0,0,-5))
                        until _G.Auto_Farm_Observation_Haki == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                        if _G.Auto_Farm_Observation_Haki_Hop and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
                        end
                    else
                        repeat wait(.1)
                            getgenv().ToTarget(game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]").HumanoidRootPart.CFrame * CFrame.new(0,25,10))
                        until _G.Auto_Farm_Observation_Haki == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                    end
                else
                    getgenv().ToTarget(CFrame.new(5567.3129882813, 262.92590332031, -6780.9545898438))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                end
            elseif World1 then
                if game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
                    if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                        repeat wait(.1)
                            getgenv().ToTarget(game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,0,-5))
                        until _G.Auto_Farm_Observation_Haki == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                        if _G.Auto_Farm_Observation_Haki_Hop and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
                        end
                    else
                        repeat wait(.1)
                            getgenv().ToTarget(game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,25,10))
                        until _G.Auto_Farm_Observation_Haki == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                    end
                else
                    getgenv().ToTarget(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                end
            elseif World3 then
                if game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]") then
                    if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                        repeat wait(.1)
                            getgenv().ToTarget(game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.CFrame * CFrame.new(0,0,-5))
                        until _G.Auto_Farm_Observation_Haki == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                        if _G.Auto_Farm_Observation_Haki_Hop and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
                        end
                    else
                        repeat wait(.1)
                            getgenv().ToTarget(game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.CFrame * CFrame.new(0,25,10))
                        until _G.Auto_Farm_Observation_Haki == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                    end
                else
                    getgenv().ToTarget(CFrame.new(2445.59204, 273.184479, -7087.646))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                end
            end
        end
    end)
end
end)

local SettingFarmTab = Tabs.Main:AddRightTabbox()

local SettingFarmSection = SettingFarmTab:AddTab('Setting')

local SettingFarm = SettingFarmSection:AddDropdown('Select_Mode_Farm',{
Values = {"Normal Mode","Fast Mode","No Quest","Fruit Mastery Mode","Gun Mastery Mode"},
Default = 1,
Multi = false,
Text = 'Mode Farm Level',
Tooltip = 'Select Mode Farm',
})

Options.Select_Mode_Farm:OnChanged(function()
_G.Select_Mode_Farm = Options.Select_Mode_Farm.Value
print(Options.Select_Mode_Farm.Value)
end)

local SelectBringMobMode = SettingFarmSection:AddDropdown('Select_Bring_Mob_Mode', {
Values = {'Bring Mob [Normal]','Bring Mob [Extra]'},
Default = 1,
Multi = false,
Text = 'Select Bring Mob Mode',
Tooltip = 'Select Bring Mob Mode For Auto Farm Level Only',
})

Options.Select_Bring_Mob_Mode:OnChanged(function()
_G.Select_Bring_Mob_Mode = Options.Select_Bring_Mob_Mode.Value
print(Options.Select_Bring_Mob_Mode.Value)
end)

SettingFarmSection:AddSlider('Distance', {
Text = 'Distance',
Default = 30,
Min = 1,
Max = 50,
Rounding = 0,
Compact = false,
})

Options.Distance:OnChanged(function()
_G.Distance =  Options.Distance.Value
print(Options.Distance.Value)
end)

WeaponList = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
if v:IsA("Tool") then
    table.insert(WeaponList ,v.Name)
end
end

local SelectWeapon = SettingFarmSection:AddDropdown('Select_Weapon', {
Values = WeaponList,
Default = 0,
Multi = false,
Text = 'Select Weapon',
Tooltip = 'Select Weapon For Auto farm',
})

Options.Select_Weapon:OnChanged(function()
_G.SelectWeapon = Options.Select_Weapon.Value
print(Options.Select_Weapon.Value)
end)

task.spawn(function()
while wait() do
    if _G.SelectWeapon == nil or _G.SelectWeapon == "" then
        for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ToolTip == "Melee" then
                _G.SelectWeapon = v.Name
            end
        end
    end
end
end)

SettingFarmSection:AddButton('Refresh Weapon',function()
table.clear(WeaponList)
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(WeaponList ,v.Name)
    end
end
SelectWeapon:SetValues(WeaponList)
end)

SettingFarmSection:AddToggle('Auto_Rejoin', {
Text = 'Auto Rejoin',
Default = true,
Tooltip = 'Click to Start Auto farm level',
})

Toggles.Auto_Rejoin:OnChanged(function()
_G.Auto_Rejoin = Toggles.Auto_Rejoin.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Rejoin then
        repeat wait() until game.CoreGui:FindFirstChild('RobloxPromptGui')
        local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')							
        po.ChildAdded:connect(function(a)
            if a.Name == 'ErrorPrompt' then
                repeat
                    ts:Teleport(game.PlaceId)
                    wait(2)
                until false
            end
        end)
    end
end
end)

SettingFarmSection:AddToggle('Auto_Set_Spawn', {
Text = 'Auto Set Spawn',
Default = true,
Tooltip = 'Click to Start Set Spawn',
})

Toggles.Auto_Set_Spawn:OnChanged(function()
_G.Auto_Set_Spawn = Toggles.Auto_Set_Spawn.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Set_Spawn then
        pcall(function()
            if game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            end
        end)
    end
end
end)

SettingFarmSection:AddToggle('Fast_Attack_Extra', {
Text = 'Fast Attck [Extra]',
Default = true,
Tooltip = 'Click to Start Auto farm level',
})

Toggles.Fast_Attack_Extra:OnChanged(function()
_G.Fast_Attack_Extra = Toggles.Fast_Attack_Extra.Value
end)

spawn(function()
while task.wait(.3) do
    if _G.Fast_Attack_Extra then
        pcall(function()
            local AC = CbFw2.activeController
            for i = 1,1 do 
                local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                    plr.Character,
                    {plr.Character.HumanoidRootPart},
                    60
                )
                local cac = {}
                local hash = {}
                for k, v in pairs(bladehit) do
                    if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                        table.insert(cac, v.Parent.HumanoidRootPart)
                        hash[v.Parent] = true
                    end
                end
                bladehit = cac
                if #bladehit > 0 then
                    local u8 = debug.getupvalue(AC.attack, 5)
                    local u9 = debug.getupvalue(AC.attack, 6)
                    local u7 = debug.getupvalue(AC.attack, 4)
                    local u10 = debug.getupvalue(AC.attack, 7)
                    local u12 = (u8 * 798405 + u7 * 727595) % u9
                    local u13 = u7 * 798405
                    (function()
                        u12 = (u12 * u9 + u13) % 1099511627776
                        u8 = math.floor(u12 / u9)
                        u7 = u12 - u8 * u9
                    end)()
                    u10 = u10 + 1
                    debug.setupvalue(AC.attack, 5, u8)
                    debug.setupvalue(AC.attack, 6, u9)
                    debug.setupvalue(AC.attack, 4, u7)
                    debug.setupvalue(AC.attack, 7, u10)
                    if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                        game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "") 
                    end
                end
            end
        end)
    end
end
end)

SettingFarmSection:AddToggle('Fast_Attack_Normal', {
    Text = 'Fast Attck [Normal]',
    Default = false,
    Tooltip = 'Click to Start Auto farm level',
})

Toggles.Fast_Attack_Normal:OnChanged(function()
    _G.Fast_Attack_Normal = Toggles.Fast_Attack_Normal.Value
end)

local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
local Attack = 0.1
for i,v in pairs(getreg()) do
    if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework then
        for x,w in pairs(debug.getupvalues(v)) do
             if typeof(w) == "table" then
                spawn(function()
					game:GetService("RunService").Heartbeat:Connect(function()
                        if _G.Fast_Attack_Normal then
                            pcall(function()
								if game.Players.LocalPlayer.Character:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
									w.activeController.increment = 3
								else
									w.activeController.increment = 4
								end             
								if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
									w.activeController.timeToNextAttack = 3
								elseif game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
									w.activeController.timeToNextAttack = 2
								else
									w.activeController.timeToNextAttack = 0
								end
                                CameraShaker:Stop()
                                w.activeController.attacking = false
								w.activeController.timeToNextBlock = 0
                                w.activeController.blocking = false                            
                                w.activeController.hitboxMagnitude = 50
    		                    w.activeController.humanoid.AutoRotate = true
    	                      	w.activeController.focusStart = 0
                            end)
                        end
                    end)
                end)
            end
        end
    end
end

SettingFarmSection:AddToggle('NoCamera_Shaker', {
Text = 'NoCameraShaker',
Default = true,
Tooltip = 'Click to Start Auto farm level',
})
Toggles.NoCamera_Shaker:OnChanged(function()
_G.NoCamera_Shaker = Toggles.NoCamera_Shaker.Value
end)
spawn(function()
while wait() do
    if _G.NoCamera_Shaker then
        local kkii = require(game.ReplicatedStorage.Util.CameraShaker)
        kkii:Stop()
    end
end
end)
SettingFarmSection:AddToggle('Remove_Effect', {
Text = 'Remove Effect',
Default = false,
Tooltip = 'Click to Start Remove Effect',
})

Toggles.Remove_Effect:OnChanged(function()
_G.Remove_Effect = Toggles.Remove_Effect.Value
end)

spawn(function()
game:GetService('RunService').Stepped:Connect(function()
    if _G.Remove_Effect then
        for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
            if v.Name == "CurvedRing" or v.Name == "SwordSlash" or v.Name == "Sounds" or v.Name == "SlashHit" or v.Name == "DamageCounter" then--or v.Name == "SlashHit"
                v:Destroy() 
            end
        end
    end
end)
end)

Code = {
"EXP_5B",
"CONTROL",
"UPDATE11",
"XMASEXP",
"1BILLION",
"ShutDownFix2",
"UPD14",
"STRAWHATMAINE",
"TantaiGaming",
"Colosseum",
"Axiore",
"Sub2Daigrock",
"Sky Island 3",
"Sub2OfficialNoobie",
"SUB2NOOBMASTER123",
"THEGREATACE",
"Fountain City",
"BIGNEWS",
"FUDD10",
"SUB2GAMERROBOT_EXP1",
"UPD15",
"2BILLION",
"UPD16",
"3BVISITS",
"fudd10_v2",
"Starcodeheo",
"Magicbus",
"JCWK",
"Bluxxy",
"Sub2Fer999",
"Enyu_is_Pro"
}

SettingFarmSection:AddButton('Redeem All Code', function()
for i,v in pairs(Code) do
    UseCode(v) 
end
end)

SettingFarmSection:AddButton('Remove Attack Animetion', function()
_G.Remove_Animetion = true
end)

local Client = game.Players.LocalPlayer
local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
spawn(function()
while task.wait() do
    if _G.Remove_Animetion then
        pcall(function()
            if not shared.orl then shared.orl = STOPRL.wrapAttackAnimationAsync end
            if not shared.cpc then shared.cpc = STOP.play end
                STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
                local Hits = STOPRL.getBladeHits(b,c,d)
                if Hits then
                    STOP.play = function() end
                    a:Play(0.01,0.01,0.01)
                    func(Hits)
                    STOP.play = shared.cpc
                    wait(a.length * 0.5)
                    a:Stop()
                end
            end
        end)
    end
end
end)

local SettingFarmSection2 = SettingFarmTab:AddTab('Setting2')

SettingFarmSection2:AddSlider('Select_Health', {
Text = 'Select Health',
Default = 20,
Min = 1,
Max = 100,
Rounding = 0,
Compact = false,
})

Options.Select_Health:OnChanged(function()
_G.Select_Health =  Options.Select_Health.Value
print(Options.Select_Health.Value)
end)

SettingFarmSection2:AddToggle('Skill_Z', {
Text = 'Skill Z',
Default = true,
Tooltip = 'Click to Start',
})

Toggles.Skill_Z:OnChanged(function()
_G.Skill_Z = Toggles.Skill_Z.Value
end)

SettingFarmSection2:AddToggle('Skill_X', {
Text = 'Skill X',
Default = true,
Tooltip = 'Click to Start',
})

Toggles.Skill_X:OnChanged(function()
_G.Skill_X = Toggles.Skill_X.Value
end)

SettingFarmSection2:AddToggle('Skill_C', {
Text = 'Skill C',
Default = true,
Tooltip = 'Click to Start',
})

Toggles.Skill_C:OnChanged(function()
_G.Skill_C = Toggles.Skill_C.Value
end)

SettingFarmSection2:AddToggle('Skill_V', {
Text = 'Skill V',
Default = true,
Tooltip = 'Click to Start',
})

Toggles.Skill_V:OnChanged(function()
_G.Skill_V = Toggles.Skill_V.Value
end)

local OtherTab = Tabs.Main:AddRightTabbox()

local OtherSection = OtherTab:AddTab('Setting')

OtherSection:AddToggle('Auto_Superhuman', {
Text = 'Auto Superhuman',
Default = _G.Auto_Superhuman,
Tooltip = 'Click to Start',
})

Toggles.Auto_Superhuman:OnChanged(function()
_G.Auto_Superhuman = Toggles.Auto_Superhuman.Value
if _G.Auto_Superhuman == true then
    local args = {
        [1] = "BuyElectro"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)

OtherSection:AddToggle('Auto_Fully_Superhuman', {
Text = 'Auto Fully Superhuman',
Default = _G.Auto_Fully_Superhuman,
Tooltip = 'Click to Start',
})

Toggles.Auto_Fully_Superhuman:OnChanged(function()
_G.Auto_Fully_Superhuman = Toggles.Auto_Fully_Superhuman.Value
end)

spawn(function()
while wait(.25) do
    if _G.Auto_Superhuman or _G.Auto_Fully_Superhuman and game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then 
        pcall(function()
            if game:GetService("Players").LocalPlayer.Data.Beli.Value >= 500000 and (game.Players.LocalPlayer.Character:FindFirstChild("Combat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Combat")) then
                _G.SelectWeapon = "Combat"
                local args = {
                    [1] = "BuyElectro"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end   
            if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                _G.SelectWeapon = "Superhuman"
            end  
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299  then
                _G.SelectWeapon = "Black Leg"
            end
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299  then
                _G.SelectWeapon = "Electro"
            end
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299  then
                _G.SelectWeapon = "Fishman Karate"
            end
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299  then
                _G.SelectWeapon = "Dragon Claw"
            end
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300  then
                local args = {
                    [1] = "BuyFishmanKarate"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300  then
                local args = {
                    [1] = "BuyFishmanKarate"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 100  then
                local args = {
                    [1] = "BuyBlackLeg"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300  then
                local args = {
                    [1] = "BuyBlackLeg"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300  then
                if _G.Auto_Fully_Superhuman and game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
                    if game.Players.LocalPlayer.Data.Level.Value > 1100 then
                        _G.Select_Dungeon = "Flame"
                        _G.Auto_Buy_Chips_Dungeon = true
                        _G.Auto_Start_Dungeon = true
                        _G.Auto_Next_Island = true
                        _G.Kill_Aura = true
                    end
                else
                    _G.Auto_Buy_Chips_Dungeon = false
                    _G.Auto_Start_Dungeon = false
                    _G.Auto_Next_Island = false
                    _G.Kill_Aura = false
                    local args = {
                        [1] = "BlackbeardReward",
                        [2] = "DragonClaw",
                        [3] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300  then
                if _G.Auto_Fully_Superhuman and game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
                    if game.Players.LocalPlayer.Data.Level.Value > 1100 then
                        _G.Select_Dungeon = "Flame"
                        _G.Auto_Buy_Chips_Dungeon = true
                        _G.Auto_Start_Dungeon = true
                        _G.Auto_Next_Island = true
                        _G.Kill_Aura = true
                    end
                else
                    _G.Auto_Buy_Chips_Dungeon = false
                    _G.Auto_Start_Dungeon = false
                    _G.Auto_Next_Island = false
                    _G.Kill_Aura = false
                    local args = {
                        [1] = "BlackbeardReward",
                        [2] = "DragonClaw",
                        [3] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300  then
                local args = {
                    [1] = "BuySuperhuman"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300  then
                local args = {
                    [1] = "BuySuperhuman"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
        end)
    end
end
end)

OtherSection:AddToggle('Auto_Death_Step', {
Text = 'Auto Buy Death Step',
Default = _G.Auto_Death_Step,
Tooltip = 'Click to Start',
})

Toggles.Auto_Death_Step:OnChanged(function()
_G.Auto_Death_Step = Toggles.Auto_Death_Step.Value
end)

spawn(function()
while wait() do wait()
    if _G.Auto_Death_Step then
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                _G.SelectWeapon = "Death Step"
            end  
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                _G.SelectWeapon = "Death Step"
            end  
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
                _G.SelectWeapon = "Black Leg"
            end 
        else 
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
        end
    end
end
end)

OtherSection:AddToggle('Auto_SharkMan_Karate', {
Text = 'Auto Buy SharkMan Karate',
Default = _G.Auto_SharkMan_Karate,
Tooltip = 'Click to Start',
})

Toggles.Auto_SharkMan_Karate:OnChanged(function()
_G.Auto_SharkMan_Karate = Toggles.Auto_SharkMan_Karate.Value
end)

spawn(function()
pcall(function()
    while wait() do
        if _G.Auto_SharkMan_Karate then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
            if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
                    getgenv().ToTarget(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                else 
                    Ms = "Tide Keeper [Lv. 1475] [Boss]"
                    if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then   
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == Ms then    
                                OldCFrameShark = v.HumanoidRootPart.CFrame
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.Head.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.HumanoidRootPart.CFrame = OldCFrameShark
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_SharkMan_Karate == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
                            end
                        end
                    else
                        getgenv().ToTarget(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202))
                        wait(3)
                    end
                end
            else 
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
            end
        end
    end
end)
end)

OtherSection:AddToggle('Auto_Electric_Claw', {
Text = 'Auto Buy Electric Claw',
Default = _G.Auto_Electric_Claw,
Tooltip = 'Click to Start',
})

Toggles.Auto_Electric_Claw:OnChanged(function()
_G.Auto_Electric_Claw = Toggles.Auto_Electric_Claw.Value
end)

spawn(function()
while wait() do 
    if _G.Auto_Electric_Claw then
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") then
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                _G.SelectWeapon = "Electric Claw"
            end  
            if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                _G.SelectWeapon = "Electric Claw"
            end  
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
                _G.SelectWeapon = "Electro"
            end 
        else
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
        end
    end
end
end)

OtherSection:AddToggle('Auto_Dragon_Talon', {
Text = 'Auto Buy Dragon Talon',
Default = _G.Auto_Dragon_Talon,
Tooltip = 'Click to Start',
})

Toggles.Auto_Dragon_Talon:OnChanged(function()
_G.Auto_Dragon_Talon = Toggles.Auto_Dragon_Talon.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Dragon_Talon then
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") then
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                _G.SelectWeapon = "Dragon Talon"
            end  
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                _G.SelectWeapon = "Dragon Talon"
            end  
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 then
                _G.SelectWeapon = "Dragon Claw"
            end 
        else 
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
        end
    end
end
end)


local Other2Section = OtherTab:AddTab('Other')

Other2Section:AddToggle('Auto_Buy_Enchancement', {
Text = 'Auto Buy Enchancement',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Auto_Buy_Enchancement:OnChanged(function()
_G.Auto_Buy_Enchancement = Toggles.Auto_Buy_Enchancement.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Buy_Enchancement then
        local args = {
            [1] = "ColorsDealer",
            [2] = "2"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end 
end
end)

local MaiStatsTab = Tabs.Player:AddLeftTabbox()

local MainStatsSection = MaiStatsTab:AddTab('Main Stats')

MainStatsSection:AddToggle('Auto_Melee', {
Text = 'Auto Melee',
Default = false,
Tooltip = 'Click to Start Auto Melee',
})

Toggles.Auto_Melee:OnChanged(function()
_G.Auto_Melee = Toggles.Auto_Melee.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Melee then
        pcall(function()
            local args = {
                [1] = "AddPoint",
                [2] = "Melee",
                [3] = _G.Point
                }
                    
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
    end
end
end)

MainStatsSection:AddToggle('Auto_Defense', {
Text = 'Auto Defense',
Default = false,
Tooltip = 'Click to Start Auto Melee',
})

Toggles.Auto_Defense:OnChanged(function()
_G.Auto_Defense = Toggles.Auto_Defense.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Defense then
        pcall(function()
            local args = {
                [1] = "AddPoint",
                [2] = "Defense",
                [3] = _G.Point
                }
                    
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
    end
end
end)

MainStatsSection:AddToggle('Auto_Sword', {
Text = 'Auto Sword',
Default = false,
Tooltip = 'Click to Start Auto Melee',
})

Toggles.Auto_Sword:OnChanged(function()
_G.Auto_Sword = Toggles.Auto_Sword.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Sword then
        pcall(function()
            local args = {
                [1] = "AddPoint",
                [2] = "Sword",
                [3] = _G.Point
                }
                    
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
    end
end
end)

MainStatsSection:AddToggle('Auto_Gun', {
Text = 'Auto Gun',
Default = false,
Tooltip = 'Click to Start Auto Melee',
})

Toggles.Auto_Gun:OnChanged(function()
_G.Auto_Gun = Toggles.Auto_Gun.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Gun then
        pcall(function()
            local args = {
                [1] = "AddPoint",
                [2] = "Gun",
                [3] = _G.Point
                }
                    
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
    end
end
end)

MainStatsSection:AddToggle('Auto_Devil_Fruit', {
Text = 'Auto Devil Fruit',
Default = false,
Tooltip = 'Click to Start Auto Melee',
})

Toggles.Auto_Devil_Fruit:OnChanged(function()
_G.Auto_Devil_Fruit = Toggles.Auto_Devil_Fruit.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Devil_Fruit then
        pcall(function()
            local args = {
                [1] = "AddPoint",
                [2] = "Demon Fruit",
                [3] = _G.Point
                }
                    
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
    end
end
end)


MainStatsSection:AddSlider('Point', {
Text = 'Point',
Default = 1,
Min = 1,
Max = 10,
Rounding = 0,
Compact = false,
})

Options.Point:OnChanged(function()
_G.Point =  Options.Point.Value
print(Options.Point.Value)
end)

local MainKillPlayerTab = Tabs.Player:AddLeftTabbox()

local MainKillPlayerSection = MainKillPlayerTab:AddTab('Rage Kill Player')

player = {}
for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
table.insert(player ,v.Name)
end

local SelectPlayers = MainKillPlayerSection:AddDropdown('Select_Players', {
Values = player,
Default = 0,
Multi = false,
Text = 'Select Players',
Tooltip = 'Select Players',
})

Options.Select_Players:OnChanged(function()
_G.Select_Players = Options.Select_Players.Value
print(Options.Select_Players.Value)
end)

MainKillPlayerSection:AddButton('Refresh Players', function()
table.clear(player)
for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
    table.insert(player ,v.Name)
end
SelectPlayers:SetValues(player)
end)

MainKillPlayerSection:AddToggle('Auto_Farm_Bounty', {
Text = 'Auto Farm Bounty',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Auto_Farm_Bounty:OnChanged(function()
_G.Auto_Farm_Bounty = Toggles.Auto_Farm_Bounty.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Farm_Bounty then
        pcall(function()
            for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                if v.Name == _G.NamePlayers then
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(120,120,120)
                end
            end
        end)
    end
end
end)

spawn(function()
while wait() do
    if _G.Auto_Farm_Bounty then
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                HealthMin = game.Players.LocalPlayer.Character.Humanoid.MaxHealth * 95/100
                if game.Players.LocalPlayer.Character.Humanoid.Health <= HealthMin then
                    repeat wait()
                        _G.NamePlayers = v.Name
                        EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,5,0))
                        PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                        UseSkillMasteryDevilFruit = true
                        DevilFruitMastery = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
                            if _G.Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                wait(.1)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                            end
                            if _G.Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                wait(.1)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                            end   
                            elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
                                if _G.Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) then
                                else
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                    wait(.1)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                end
                                if _G.Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                    wait(.1)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                end
                                if _G.Skill_C and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                    wait(.1)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                end  
                            elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
                                if _G.Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                    wait(.1)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                end
                                if _G.Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                    wait(.1)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                end
                                if _G.Skill_C and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                    wait(.1)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                end
                                if _G.Skill_V and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                    wait(.1)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                end
                            end
                    until v.Humanoid.Health <= 0 or _G.Auto_Farm_Bounty == false
                else
                    UseSkillMasteryDevilFruit = false
                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-1))
                end
            end
        end)
    end
end
end)

MainKillPlayerSection:AddToggle('Auto_Kill_Player_Melee', {
Text = 'Auto Kill Player [Melee]',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Auto_Kill_Player_Melee:OnChanged(function()
_G.Auto_Kill_Player_Melee = Toggles.Auto_Kill_Player_Melee.Value
end)

spawn(function()
while task.wait() do
    if _G.Auto_Kill_Player_Melee then
        pcall(function()
            if game.Players:FindFirstChild(_G.Select_Players) and (game.Players:FindFirstChild(_G.Select_Players).Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 300 then
                getgenv().ToTarget(game.Players:FindFirstChild(_G.Select_Players).Character.HumanoidRootPart.CFrame)
            elseif game.Players:FindFirstChild(_G.Select_Players) and (game.Players:FindFirstChild(_G.Select_Players).Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                    if v.Name == _G.Select_Players then
                        _G.Fast_Attack_Extra = true
                        AutoHaki()
                        EquipWeapon(_G.fuck)
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        v.HumanoidRootPart.Transparency = 1
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                        game:GetService("VirtualUser"):CaptureController()
                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                    end
                end
            end
        end)
    end
end
end)

MainKillPlayerSection:AddToggle('Auto_Kill_Player_Gun', {
Text = 'Auto Kill Player [Gun]',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Auto_Kill_Player_Gun:OnChanged(function()
_G.Auto_Kill_Player_Gun = Toggles.Auto_Kill_Player_Gun.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Kill_Player_Gun then
        pcall(function()
            if game.Players:FindFirstChild(_G.Select_Players) and (game.Players:FindFirstChild(_G.Select_Players).Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 300 then
                getgenv().ToTarget(game.Players:FindFirstChild(_G.Select_Players).Character.HumanoidRootPart.CFrame)
            elseif game.Players:FindFirstChild(_G.Select_Players) and (game.Players:FindFirstChild(_G.Select_Players).Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                    if v.Name == _G.Select_Players then
                        AutoHaki()
                        EquipWeapon(SelectToolWeaponGun)
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        v.HumanoidRootPart.Transparency = 0.8
                        getgenv().SilentAimMob = true
                        MobSilent = v
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                        game:GetService("VirtualUser"):CaptureController()
                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                    end
                end
            end
        end)
    end
end
end)

local EspTab = Tabs.Player:AddRightTabbox()

local ESPSection = EspTab:AddTab('ESP Misc')

ESPSection:AddToggle('Esp_Players', {
Text = 'Esp Players',
Default = false,
Tooltip = 'Click to Start Auto Melee',
})

Toggles.Esp_Players:OnChanged(function()
_G.Esp_Players = Toggles.Esp_Players.Value
ESPPlayers()
end)

ESPSection:AddToggle('Esp_Devil_Fruit', {
Text = 'Esp Devil Fruit',
Default = false,
Tooltip = 'Click to Start Auto Melee',
})

Toggles.Esp_Devil_Fruit:OnChanged(function()
_G.Esp_Devil_Fruit = Toggles.Esp_Devil_Fruit.Value
ESPDEVILFRUIT()
end)

ESPSection:AddToggle('Esp_Chest', {
Text = 'Esp Chest',
Default = false,
Tooltip = 'Click to Start Auto Melee',
})

Toggles.Esp_Chest:OnChanged(function()
_G.Esp_Chest = Toggles.Esp_Chest.Value
ESPCHEST()
end)

ESPSection:AddToggle('Esp_Flowers', {
Text = 'Esp Flowers',
Default = false,
Tooltip = 'Click to Start Auto Melee',
})

Toggles.Esp_Flowers:OnChanged(function()
_G.Esp_Flowers = Toggles.Esp_Flowers.Value
ESPFLOWER()
end)

ESPSection:AddToggle('Esp_Fruit', {
Text = 'Esp Fruit',
Default = false,
Tooltip = 'Click to Start Auto Melee',
})

Toggles.Esp_Fruit:OnChanged(function()
_G.Esp_Fruit = Toggles.Esp_Fruit.Value
ESPFRUIT()
end)

local PlayerTab = Tabs.Player:AddRightTabbox()

local PlayerSection = PlayerTab:AddTab('Player Misc')

PlayerSection:AddToggle('Noclip', {
Text = 'Noclip',
Default = false,
Tooltip = 'Click to Start Auto Melee',
})

Toggles.Noclip:OnChanged(function()
_G.Noclip = Toggles.Noclip.Value
end)

spawn(function()
pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
        if _G.Noclip then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false    
                end
            end
        end
    end)
end)
end)

PlayerSection:AddToggle('Infinit_Energy', {
Text = 'Infinit Energy',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Infinit_Energy:OnChanged(function()
_G.Infinit_Energy = Toggles.Infinit_Energy.Value
InfinitEnergy()
end)

PlayerSection:AddToggle('Dodge_No_CoolDown', {
Text = 'Dodge No CoolDown',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Dodge_No_CoolDown:OnChanged(function()
_G.Dodge_No_CoolDown = Toggles.Dodge_No_CoolDown.Value
DodgeNoCoolDown()
end)

spawn(function()
while wait() do
    if _G.Infinit_Ability then
        InfAbility()
    end
end
end)

PlayerSection:AddToggle('Infinit_Ability', {
Text = 'Infinit Ability',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Infinit_Ability:OnChanged(function()
_G.Infinit_Ability = Toggles.Infinit_Ability.Value
end)

PlayerSection:AddToggle('Infinit_SkyJump', {
Text = 'Infinit SkyJump',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Infinit_SkyJump:OnChanged(function()
_G.Infinit_SkyJump = Toggles.Infinit_SkyJump.Value
SkyJumpNoCoolDown()
end)

PlayerSection:AddToggle('Infinit_Soru', {
Text = 'Infinit Soru',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Infinit_Soru:OnChanged(function()
_G.Infinit_Soru = Toggles.Infinit_Soru.Value
SoruNoCoolDown()
end)

PlayerSection:AddToggle('Infinit_Range_Observation_Haki', {
Text = 'Infinit Range Observation Haki',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Infinit_Range_Observation_Haki:OnChanged(function()
_G.Infinit_Range_Observation_Haki = Toggles.Infinit_Range_Observation_Haki.Value
end)

spawn(function()
while wait() do
    if _G.Infinit_Range_Observation_Haki then
        game.Players.LocalPlayer.VisionRadius.Value = math.huge
    end
end
end)

local TeleportWorldTab = Tabs.Teleport:AddLeftTabbox()

local TeleportWorldSection = TeleportWorldTab:AddTab('Teleport World')

TeleportWorldSection:AddButton('First World', function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end)

TeleportWorldSection:AddButton('Second World', function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end)

TeleportWorldSection:AddButton('Third World', function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end)

local TeleportIslandTab = Tabs.Teleport:AddLeftTabbox()

local TeleportIslandSection = TeleportIslandTab:AddTab('Teleport Island')

if World1 then
Island = {
    "WindMill",
    "Marine",
    "Middle Town",
    "Jungle",
    "Pirate Village",
    "Desert",
    "Snow Island",
    "MarineFord",
    "Colosseum",
    "Sky Island 1",
    "Sky Island 2",
    "Sky Island 3",
    "Prison",
    "Magma Village",
    "Under Water Island",
    "Fountain City",
    "Shank Room",
    "Mob Island"
    }
elseif World2 then  
Island = {
    "The Cafe",
    "Frist Spot",
    "Dark Area",
    "Flamingo Mansion",
    "Flamingo Room",
    "Green Zone",
    "Factory",
    "Colossuim",
    "Zombie Island",
    "Two Snow Mountain",
    "Punk Hazard",
    "Cursed Ship",
    "Ice Castle",
    "Forgotten Island",
    "Ussop Island",
    "Mini Sky Island"
    }
else
Island = {
    "Mansion",
    "Port Town",
    "Great Tree",
    "Castle On The Sea",
    "MiniSky", 
    "Hydra Island",
    "Floating Turtle",
    "Haunted Castle",
    "Ice Cream Island",
    "Peanut Island",
    "Cake Island"
    }	
end

TeleportIslandSection:AddDropdown('Select_Island', {
Values = Island,
Default = 0,
Multi = false,

Text = 'Select Island',
Tooltip = 'Select Island',
})

Options.Select_Island:OnChanged(function()
_G.SelectIsland = Options.Select_Island.Value
end)

TeleportIslandSection:AddToggle('Start_Tween_Island', {
Text = 'Start Tween Island',
Default = false,
Tooltip = 'Click to Start Auto Melee',
})

Toggles.Start_Tween_Island:OnChanged(function()
_G.Start_Tween_Island = Toggles.Start_Tween_Island.Value
if _G.Start_Tween_Island == true then
    repeat wait()
        if _G.SelectIsland == "WindMill" then
            getgenv().ToTarget(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
        elseif _G.SelectIsland == "Marine" then
            getgenv().ToTarget(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
        elseif _G.SelectIsland == "Middle Town" then
            getgenv().ToTarget(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
        elseif _G.SelectIsland == "Jungle" then
            getgenv().ToTarget(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
        elseif _G.SelectIsland == "Pirate Village" then
            getgenv().ToTarget(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
        elseif _G.SelectIsland == "Desert" then
            getgenv().ToTarget(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
        elseif _G.SelectIsland == "Snow Island" then
            getgenv().ToTarget(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
        elseif _G.SelectIsland == "MarineFord" then
            getgenv().ToTarget(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
        elseif _G.SelectIsland == "Colosseum" then
            getgenv().ToTarget( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
        elseif _G.SelectIsland == "Sky Island 1" then
            getgenv().ToTarget(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
        elseif _G.SelectIsland == "Sky Island 2" then  
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
        elseif _G.SelectIsland == "Sky Island 3" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
        elseif _G.SelectIsland == "Prison" then
            getgenv().ToTarget( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
        elseif _G.SelectIsland == "Magma Village" then
            getgenv().ToTarget(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
        elseif _G.SelectIsland == "Under Water Island" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        elseif _G.SelectIsland == "Fountain City" then
            getgenv().ToTarget(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
        elseif _G.SelectIsland == "Shank Room" then
            getgenv().ToTarget(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
        elseif _G.SelectIsland == "Mob Island" then
            getgenv().ToTarget(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
        elseif _G.SelectIsland == "The Cafe" then
            getgenv().ToTarget(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
        elseif _G.SelectIsland == "Frist Spot" then
            getgenv().ToTarget(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
        elseif _G.SelectIsland == "Dark Area" then
            getgenv().ToTarget(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
        elseif _G.SelectIsland == "Flamingo Mansion" then
            getgenv().ToTarget(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
        elseif _G.SelectIsland == "Flamingo Room" then
            getgenv().ToTarget(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
        elseif _G.SelectIsland == "Green Zone" then
            getgenv().ToTarget( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
        elseif _G.SelectIsland == "Factory" then
            getgenv().ToTarget(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
        elseif _G.SelectIsland == "Colossuim" then
            getgenv().ToTarget( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
        elseif _G.SelectIsland == "Zombie Island" then
            getgenv().ToTarget(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
        elseif _G.SelectIsland == "Two Snow Mountain" then
            getgenv().ToTarget(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
        elseif _G.SelectIsland == "Punk Hazard" then
            getgenv().ToTarget(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
        elseif _G.SelectIsland == "Cursed Ship" then
            getgenv().ToTarget(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
        elseif _G.SelectIsland == "Ice Castle" then
            getgenv().ToTarget(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
        elseif _G.SelectIsland == "Forgotten Island" then
            getgenv().ToTarget(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
        elseif _G.SelectIsland == "Ussop Island" then
            getgenv().ToTarget(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
        elseif _G.SelectIsland == "Mini Sky Island" then
            getgenv().ToTarget(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
        elseif _G.SelectIsland == "Great Tree" then
            getgenv().ToTarget(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
        elseif _G.SelectIsland == "Castle On The Sea" then
            getgenv().ToTarget(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
        elseif _G.SelectIsland == "MiniSky" then
            getgenv().ToTarget(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
        elseif _G.SelectIsland == "Port Town" then
            getgenv().ToTarget(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
        elseif _G.SelectIsland == "Hydra Island" then
            getgenv().ToTarget(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
        elseif _G.SelectIsland == "Floating Turtle" then
            getgenv().ToTarget(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
        elseif _G.SelectIsland == "Mansion" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
        elseif _G.SelectIsland == "Haunted Castle" then
            getgenv().ToTarget(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
        elseif _G.SelectIsland == "Ice Cream Island" then
            getgenv().ToTarget(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
        elseif _G.SelectIsland == "Peanut Island" then
            getgenv().ToTarget(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
        elseif _G.SelectIsland == "Cake Island" then
            getgenv().ToTarget(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
        end
    until not _G.Start_Tween_Island
end
StopTween(_G.Start_Tween_Island)
end)

local MainDungeonTab = Tabs.Dungeon:AddLeftTabbox()

local MainDungeonSection = MainDungeonTab:AddTab('Main Dungeon')

MainDungeonSection:AddDropdown('Select_Dungeon', {
Values = {"Flame", "Ice", "Quake", "Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix"},
Default = 0,
Multi = false,
Text = 'Select Dungeon',
Tooltip = 'Select Dungeon',
})

Options.Select_Dungeon:OnChanged(function()
_G.Select_Dungeon = Options.Select_Dungeon.Value
end)

MainDungeonSection:AddToggle('Auto_Buy_Chips_Dungeon', {
Text = 'Auto Buy Chips Dungeon',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Auto_Buy_Chips_Dungeon:OnChanged(function()
_G.Auto_Buy_Chips_Dungeon = Toggles.Auto_Buy_Chips_Dungeon.Value
end)

spawn(function()
while wait(.1) do
    if _G.Auto_Buy_Chips_Dungeon then
        pcall(function()
            local args = {
                [1] = "RaidsNpc",
                [2] = "Select",
                [3] = _G.Select_Dungeon
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
    end
end
end)

MainDungeonSection:AddToggle('Auto_Start_Dungeon', {
Text = 'Auto Start Dungeon',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Auto_Start_Dungeon:OnChanged(function()
_G.Auto_Start_Dungeon = Toggles.Auto_Start_Dungeon.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Start_Dungeon then
        if World2 then
            if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
            ----not
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
            ---not
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
            ---not
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
            ---not
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
            ---not
            elseif  game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then
                fireclickdetector(game.Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
            end
        end
        if World3 then
            if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
            ----not
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
            ---not
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
            ---not
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
            ---not
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
            ---not
            elseif  game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then
                fireclickdetector(game.Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
            end
        end
    end
end
end)

MainDungeonSection:AddToggle('Auto_Next_Island', {
Text = 'Auto Next Island',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Auto_Next_Island:OnChanged(function()
_G.Auto_Next_Island = Toggles.Auto_Next_Island.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Next_Island then
        if not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
            if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                getgenv().ToTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                getgenv().ToTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                getgenv().ToTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                getgenv().ToTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                getgenv().ToTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0,70,100))
            end
        end
    end
end
end)

MainDungeonSection:AddToggle('Kill_Aura', {
Text = 'Kill Aura',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Kill_Aura:OnChanged(function()
_G.Kill_Aura = Toggles.Kill_Aura.Value
end)

spawn(function()
while wait() do
    if _G.Kill_Aura then
        if not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
            for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    pcall(function()
                        repeat wait(.1)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        until not _G.Kill_Aura  or not v.Parent or v.Humanoid.Health <= 0
                    end)
                end
            end
        end
    end
end
end)

MainDungeonSection:AddToggle('Auto_Awake', {
Text = 'Auto Awake',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Auto_Awake:OnChanged(function()
_G.Auto_Awake = Toggles.Auto_Awake.Value
end)

spawn(function()
while wait(.1) do
    if _G.Auto_Awake then
        local args = {
            [1] = "Awakener",
            [2] = "Check"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        local args = {
            [1] = "Awakener",
            [2] = "Awaken"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
end
end)

local LawDungeonTab = Tabs.Dungeon:AddRightTabbox()

local LawDungeonSection = LawDungeonTab:AddTab('Law Dungeon')

LawDungeonSection:AddToggle('Auto_Buy_Law_Chip', {
Text = 'Auto Buy Law Chip',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Auto_Buy_Law_Chip:OnChanged(function()
_G.Auto_Buy_Law_Chip = Toggles.Auto_Buy_Law_Chip.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Buy_Law_Chip then
        pcall(function()
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
            
            else
                local args = {
                    [1] = "BlackbeardReward",
                    [2] = "Microchip",
                    [3] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end)
    end
end
end)

LawDungeonSection:AddToggle('Auto_Start_Law_Raid', {
Text = 'Auto Start Law Raid',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Auto_Start_Law_Raid:OnChanged(function()
_G.Auto_Start_Law_Raid = Toggles.Auto_Start_Law_Raid.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Start_Law_Raid then
        pcall(function()
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
                fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
            end
        end)
    end
end
end)

LawDungeonSection:AddToggle('Auto_Kill_Law', {
Text = 'Auto Kill Law',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Auto_Kill_Law:OnChanged(function()
_G.Auto_Kill_Law = Toggles.Auto_Kill_Law.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Kill_Law then
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if _G.Auto_Kill_Law and v.Name == "Order [Lv. 1250] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            AutoHaki()
                            EquipWeapon(_G.Select_Weapon_Law)
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Distance,0))
                            Attack()
                        until not _G.Auto_Kill_Law or v.Humanoid.Health <= 0 or not v.Parent
                    end
                end
            end 
        end)
    end
end
end)

WeaponLawList = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
if v:IsA("Tool") then
    table.insert(WeaponLawList ,v.Name)
end
end

local SelectWeaponLaw = LawDungeonSection:AddDropdown('Select_Weapon_Law', {
Values = WeaponLawList,
Default = 0,
Multi = false,
Text = 'Select Weapon Law',
Tooltip = 'Select Weapon Law',
})

Options.Select_Weapon_Law:OnChanged(function()
_G.Select_Weapon_Law = Options.Select_Weapon_Law.Value
print(Options.Select_Weapon_Law.Value)
end)

LawDungeonSection:AddButton('Refresh Weapon', function()
table.clear(WeaponLawList)
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(WeaponLawList ,v.Name)
    end
end
SelectWeaponLaw:SetValues(WeaponLawList)
end)

local BuyItemTab = Tabs.Buy_Item:AddLeftTabbox()

local FightingStyleSection = BuyItemTab:AddTab('Fighting Style')

FightingStyleSection:AddButton("Buy Black Leg",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end)

FightingStyleSection:AddButton("Buy Electro",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end)

FightingStyleSection:AddButton("Buy Fishman Karate",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end)

FightingStyleSection:AddButton("Buy Dragon Claw",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end)

FightingStyleSection:AddButton("Buy Superhuman",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end)

FightingStyleSection:AddButton("Buy Death Step",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
end)

FightingStyleSection:AddButton("Buy Sharkman Karate",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
end)

FightingStyleSection:AddButton("Buy Electric Claw",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
end)

FightingStyleSection:AddButton("Buy Dragon Talon",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end)

local AbilitiesSection = BuyItemTab:AddTab('Abilities')

AbilitiesSection:AddButton("Buy Geppo",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
end)

AbilitiesSection:AddButton("Buy Buso Haki",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
end)

AbilitiesSection:AddButton("Buy Soru",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
end)

AbilitiesSection:AddButton("Buy Observation(Ken) Haki",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
end)

local BuyItemTab2 = Tabs.Buy_Item:AddRightTabbox()

local AccessorySection = BuyItemTab2:AddTab('Accessory')

AccessorySection:AddButton("Tomoe Ring",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
end)

AccessorySection:AddButton("Black Cape",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
end)

AccessorySection:AddButton("Swordsman Hat",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
end)

local SwordSection = BuyItemTab2:AddTab('Sword')

SwordSection:AddButton("Cutlass",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
end)

SwordSection:AddButton("Katana",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
end)

SwordSection:AddButton("Iron Mace",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
end)

SwordSection:AddButton("Duel Katana",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
end)

SwordSection:AddButton("Triple Katana", function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
end)

SwordSection:AddButton("Pipe",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
end)

SwordSection:AddButton("Dual Headed Blade",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
end)

SwordSection:AddButton("Bisento",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
end)

SwordSection:AddButton("Soul Cane",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
end)

local GunSection = BuyItemTab2:AddTab('Gun')

GunSection:AddButton("Slingshot",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
end)

GunSection:AddButton("Musket",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
end)

GunSection:AddButton("Flintlock",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
end)

GunSection:AddButton("Refined Flintlock",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
end)

GunSection:AddButton("Cannon",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
end)

GunSection:AddButton("Kabucha",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
end)

local BuyItemTab3 = Tabs.Buy_Item:AddRightTabbox()

local FragmentSection = BuyItemTab3:AddTab('Fragment')

FragmentSection:AddButton("Race Ghoul",function()
local args = {
    [1] = "Ectoplasm",
    [2] = "BuyCheck",
    [3] = 4
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "Ectoplasm",
    [2] = "Change",
    [3] = 4
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

FragmentSection:AddButton("Race Cyborg",function()
local args = {
    [1] = "CyborgTrainer",
    [2] = "Buy"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

FragmentSection:AddButton("Random Race",function()
local args = {
    [1] = "BlackbeardReward",
    [2] = "Reroll",
    [3] = "2"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

FragmentSection:AddButton("Reset Stats",function()
local args = {
    [1] = "BlackbeardReward",
    [2] = "Refund",
    [3] = "2"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

local RandomTab = Tabs.Misc:AddLeftTabbox()

local RandomSection = RandomTab:AddTab('Random')

RandomSection:AddToggle('Auto_Random_Fruit', {
Text = 'Auto Random Fruit',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Auto_Random_Fruit:OnChanged(function()
_G.Auto_Random_Fruit = Toggles.Auto_Random_Fruit.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Random_Fruit then	
        local args = {
            [1] = "Cousin",
            [2] = "Buy"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
end
end)

RandomSection:AddToggle('Auto_Random_Bone', {
Text = 'Auto Random Bone',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Auto_Random_Bone:OnChanged(function()
_G.Auto_Random_Bone = Toggles.Auto_Random_Bone.Value
end)

spawn(function()
while wait(.1) do
    if _G.Auto_Random_Bone then
        local args = {
            [1] = "Bones",
            [2] = "Buy",
            [3] = 1,
            [4] = 1
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
end
end)

RandomSection:AddButton('Random Fruit', function()
local args = {
    [1] = "Cousin",
    [2] = "Buy"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

RandomSection:AddButton('Random Bone', function()
local args = {
    [1] = "Bones",
    [2] = "Buy",
    [3] = 1,
    [4] = 1
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)


local DevilFruitTab = Tabs.Misc:AddLeftTabbox()

local DevilFruitSection = DevilFruitTab:AddTab('DevilFruit Misc')

local Remote_GetFruits = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");

Table_DevilFruitSniper = {"nil"}
ShopDevilSell = {}
for i,v in next,Remote_GetFruits do
table.insert(Table_DevilFruitSniper,v.Name)
if v.OnSale then 
    table.insert(ShopDevilSell,v.Name)
end
end

local SelectDevilFruitSniper = DevilFruitSection:AddDropdown('Select_Devil_Fruit_Sniper', {
Values = Table_DevilFruitSniper,
Default = 0,
Multi = false,
Text = 'Select Devil Fruit Sniper',
Tooltip = 'Select Devil Fruit Sniper',
})

Options.Select_Devil_Fruit_Sniper:OnChanged(function()
_G.Select_Devil_Fruit_Sniper = Options.Select_Devil_Fruit_Sniper.Value
print(Options.Select_Devil_Fruit_Sniper.Value)
end)

DevilFruitSection:AddToggle('Auto_Buy_Devil_Fruit_Sniper', {
Text = 'Auto Buy Devil Fruit Sniper',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Auto_Buy_Devil_Fruit_Sniper:OnChanged(function()
_G.Auto_Buy_Devil_Fruit_Sniper = Toggles.Auto_Buy_Devil_Fruit_Sniper.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Buy_Devil_Fruit_Sniper then
        pcall(function()
            local string_1 = "PurchaseRawFruit";
            local string_2 = _G.Select_Devil_Fruit_Sniper;
            local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
            Target:InvokeServer(string_1, string_2);
        end)
    end                              
end
end)

DevilFruitSection:AddToggle('Auto_Bring_Fruit', {
Text = 'Auto Bring Fruit',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Auto_Bring_Fruit:OnChanged(function()
_G.Auto_Bring_Fruit = Toggles.Auto_Bring_Fruit.Value
end)

spawn(function()
while wait() do
    if _G.Auto_Bring_Fruit then
        pcall(function()
            for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v:IsA("Tool") and string.find(v.Name,"Fruit") then 
                    wait(2)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
                end
            end
        end)
    end
end
end)

DevilFruitSection:AddToggle('Auto_Store_Fruit', {
Text = 'Auto Store Fruit',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Auto_Store_Fruit:OnChanged(function()
_G.Auto_Store_Fruit = Toggles.Auto_Store_Fruit.Value
end)

spawn(function()
while wait(.1) do
    if _G.Auto_Store_Fruit then
        pcall(function()
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kilo-Kilo")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Revive-Dark")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Door-Door")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","String-String")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Paw-Paw")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control")
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon")
            end
        end)
    end
end
end)

local MainMiscTab = Tabs.Misc:AddRightTabbox()

local MainMiscSection = MainMiscTab:AddTab('Main Misc')

if game.workspace:FindFirstChild("WaterWalk") then
game.workspace:FindFirstChild("WaterWalk"):Destroy()
end
platform = Instance.new("Part")
platform.Name = "WaterWalk"
platform.Size = Vector3.new(math.huge, 1, math.huge)
platform.Transparency = 1
platform.Anchored = true
platform.Parent = game.workspace

MainMiscSection:AddToggle('Walk_On_Water', {
Text = 'Walk On Water',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.Walk_On_Water:OnChanged(function()
_G.Walk_On_Water = Toggles.Walk_On_Water.Value
end)

spawn(function()
while wait() do
    if WaterWalk then
        platform.CanCollide = true
        platform.Position = Vector3.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.X,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y * 0 -5, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z)
    else
        platform.CanCollide = false
        platform.Position = Vector3.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.X,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y * 0 -6, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z)
    end
end
end)

MainMiscSection:AddToggle('White_Screen', {
Text = 'White Screen',
Default = false,
Tooltip = 'Click to Start',
})

Toggles.White_Screen:OnChanged(function()
_G.White_Screen = Toggles.White_Screen.Value
if _G.White_Screen then
    game:GetService("RunService"):Set3dRenderingEnabled(false)
else
    game:GetService("RunService"):Set3dRenderingEnabled(true)
end
end)

MainMiscSection:AddButton("Remove Lava", function()
for i,v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "Lava" then   
        v:Destroy()
    end
end
for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
    if v.Name == "Lava" then   
        v:Destroy()
    end
end
end)

MainMiscSection:AddButton("Fps Boots", function()
local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
end)

local JoinMiscTab = Tabs.Misc:AddRightTabbox()

local JoinSection = JoinMiscTab:AddTab('Join Misc')

JoinSection:AddButton("Join Pirates Team", function()
local args = {
    [1] = "SetTeam",
    [2] = "Pirates"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
local args = {
    [1] = "BartiloQuestProgress"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

JoinSection:AddButton("Join Marines Team",function()
local args = {
    [1] = "SetTeam",
    [2] = "Marines"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "BartiloQuestProgress"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)


JoinSection:AddButton("Rejoin",function()
local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(game.PlaceId, p)
end)

JoinSection:AddButton("Sever Hop",function()
Hop()
end)

local OpenMiscTab = Tabs.Misc:AddRightTabbox()

local OpenSection = OpenMiscTab:AddTab('Open Misc')

OpenSection:AddButton("Inventory", function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
game.Players.localPlayer.PlayerGui.Main.Inventory.Visible = true
end)

OpenSection:AddButton("Open Devil Fruit Shop", function()
local args = {
    [1] = "GetFruits"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
end)

OpenSection:AddButton("Open Devil Fruit Inventory", function()
local args = {
    [1] = "getInventoryFruits"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
end)

OpenSection:AddButton("Open Title Name", function()
local args = {
    [1] = "getTitles"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)

OpenSection:AddButton("Open Color Haki", function()
game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)
