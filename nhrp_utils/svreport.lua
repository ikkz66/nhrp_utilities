function send_discord(webhookUrl, avatar, title, message, color)
	local connect = {
		{
		  	["color"] = color,
		  	["title"] = "**".. title .."**\n",
			["description"] = message,
			["footer"] = {
				["text"] = ". . . . . . . . . . . . . . . . . . .\n",
			},
		  }
	  }
	PerformHttpRequest(webhookUrl, function(err, text, headers) end, 'POST', json.encode({username = "NHDOJRP", embeds = connect, avatar_url = avatar}), { ['Content-Type'] = 'application/json' })
end

function extract_identifiers(plr_id)
    local identifiers = {
        steam = "",
        ip = "",
        discord = "",
        license = "",
        xbl = "",
        live = ""
    }

    --Loop over all identifiers
    for i = 0, GetNumPlayerIdentifiers(plr_id) - 1 do
        local id = GetPlayerIdentifier(plr_id, i)

        --Convert it to a nice table.
        if string.find(id, "steam") then
            identifiers.steam = id
        elseif string.find(id, "ip") then
            identifiers.ip = id
        elseif string.find(id, "discord") then
            identifiers.discord = id
        elseif string.find(id, "license") then
            identifiers.license = id
        elseif string.find(id, "xbl") then
            identifiers.xbl = id
        elseif string.find(id, "live") then
            identifiers.live = id
        end
    end

    return identifiers
end

RegisterNetEvent('nhrp:report')
AddEventHandler('nhrp:report', function(message, report_user_id)
   

  local me_identifiers = extract_identifiers(source)
  local sender_msg = "**report sent by: " .. GetPlayerName(source) .. " (ID: " .. me_identifiers.steam .. ")**"

  send_discord("webook", "https://media.discordapp.net/attachments/1031622906708512818/1033386450198200340/lomgq15y98z71.jpg?width=506&height=612", "New Report", "**__NEW REPORT__**\nReport Message: **" .. message .. "**\n\n**" ..  sender_msg .. "**", 15418782)
end)
