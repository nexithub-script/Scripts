local Players = game:GetService("Players")
local lp = Players.LocalPlayer

local StaffList = {
    [3441625467] = "Developer", [857249396] = "Developer", [7592364667] = "Developer",
    [5076589580] = "Developer", [4995418133] = "Developer", [5085976766] = "Developer",
    [2210363838] = "Developer", [166836030] = "Co-Owner", [1324414468] = "Co-Owner",
    [300706958] = "Owner", [9047416369] = "Owner"
}

local function Check(p)
    if _G.AutoKickEnabled and StaffList[p.UserId] then
        -- ใช้ Kick พร้อมข้อความ เพื่อให้ขึ้นหน้าจอเตะสีเทา
        lp:Kick("\n[Nexit Hub]\nStaff Detected: " .. StaffList[p.UserId])
    end
end

_G.ForceCheckStaff = function()
    for _, v in ipairs(Players:GetPlayers()) do
        Check(v)
    end
end

Players.PlayerAdded:Connect(Check)