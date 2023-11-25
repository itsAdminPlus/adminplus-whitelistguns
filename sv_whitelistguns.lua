ESX = exports["es_extended"]:getSharedObject()

local discordWebhook = 'WEBHOOK' -- Replace with your actual Discord webhook URL
local discordName = 'SERVER_NAME' -- Replace with your bot's name
local discordImage = '' -- Replace with your bot's image URL

function sendToDiscordKick(name, message, color)
    local connect = {
        {
            ["color"] = color,
            ["title"] = "**".. name .."**",
            ["description"] = message,
            ["footer"] = {
                ["text"] = os.date("%a %b %d, %I:%M%p"),
                ["icon_url"] = discordImage
            },
        }
    }
    PerformHttpRequest(discordWebhook, function(err, text, headers) end, 'POST', json.encode({username = discordName, embeds = connect, avatar_url = discordImage}), { ['Content-Type'] = 'application/json' })
end

RegisterServerEvent('whyyou:gotagun')
AddEventHandler('whyyou:gotagun', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local steamhex = GetPlayerName(src)

    if xPlayer then
        local playerName = xPlayer.getName()
        local job = xPlayer.getJob().name
        sendToDiscordKick("Player Kicked", "[👤] **Character:** " .. playerName .. " | " .. steamhex .. " - has been kicked for having a restricted weapon while not on the correct job.  \nJob: " .. job, 16711680)
        DropPlayer(src, "You have been kicked for having a restricted weapon.")
    end
end)
