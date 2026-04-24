-- [[ AUTO KICK SYSTEM (TOP PRIORITY) ]]
task.spawn(function()
    local p = game:GetService("Players")
    local lp = p.LocalPlayer or p:GetPropertyChangedSignal("LocalPlayer"):Wait()
    local list = {
        [3441625467] = "Developer", [857249396] = "Developer", [7592364667] = "Developer",
        [5076589580] = "Developer", [4995418133] = "Developer", [5085976766] = "Developer",
        [2210363838] = "Developer", [166836030] = "Co-Owner", [1324414468] = "Co-Owner",
        [300706958] = "Owner", [8473591060] = "Owner"
    }
    local function check(target)
        if list[target.UserId] then
            lp:Kick("Found = " .. list[target.UserId])
        end
    end
    p.PlayerAdded:Connect(check)
    for _, v in ipairs(p:GetPlayers()) do check(v) end
end)