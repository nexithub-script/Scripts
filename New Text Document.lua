-- [[ AUTO KICK SYSTEM: MINIMALIST ]]
local Players = game:GetService("Players")
local lp = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait()

local StaffList = {
    [3441625467] = "Developer",
    [857249396] = "Developer",
    [7592364667] = "Developer",
    [5076589580] = "Developer",
    [4995418133] = "Developer",
    [5085976766] = "Developer",
    [2210363838] = "Developer",
    [166836030] = "Co-Owner",
    [1324414468] = "Co-Owner",
    [300706958] = "Owner",
    [9047416369] = "Owner",
}

local function ExecKick(role)
    -- ข้อความสั้นๆ ตามที่คุณต้องการ
    lp:Kick("Nexit Hub | Staff found: " .. role)
    
    -- กันพลาด: ถ้าไม่หลุดให้ค้างลูป
    task.wait(0.2)
    while true do 
        pcall(function() lp:Destroy() end)
        task.wait() 
    end
end

-- ตรวจสอบคนในห้องปัจจุบัน
for _, p in ipairs(Players:GetPlayers()) do
    if StaffList[p.UserId] then
        ExecKick(StaffList[p.UserId])
    end
end

-- ตรวจสอบคนจอยใหม่
Players.PlayerAdded:Connect(function(newPlayer)
    if StaffList[newPlayer.UserId] then
        ExecKick(StaffList[newPlayer.UserId])
    end
end)