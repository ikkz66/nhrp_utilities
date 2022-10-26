function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end

	local t={} ; i=1

	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end

	return t
end

local function starts_with(str, start)
   return str:sub(1, #start) == start
end

Citizen.CreateThread(function()
	local settingsFile = LoadResourceFile(GetCurrentResourceName(), "visualsettings.dat")

	local lines = stringsplit(settingsFile, "\n")

	for k,v in ipairs(lines) do
		if not starts_with(v, '#') and not starts_with(v, '//') and (v ~= "" or v ~= " ") and #v > 1 then
			v = v:gsub("%s+", " ")

			local setting = stringsplit(v, " ")

			if setting[1] ~= nil and setting[2] ~= nil and tonumber(setting[2]) ~= nil then
				if setting[1] ~= 'weather.CycleDuration' then	
					Citizen.InvokeNative(GetHashKey('SET_VISUAL_SETTING_FLOAT') & 0xFFFFFFFF, setting[1], tonumber(setting[2])+.0)
				end
			end
		end
	end
end)

RegisterCommand('car', function(source, args, rawCommand)
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.5))
    local veh = args[1]
    if veh == nil then veh = "adder" end
    vehiclehash = GetHashKey(veh)
    RequestModel(vehiclehash)
    
    Citizen.CreateThread(function() 
        local waiting = 0
        while not HasModelLoaded(vehiclehash) do
            waiting = waiting + 100
            Citizen.Wait(100)
            if waiting > 5000 then
               
                break
            end
        end
        CreateVehicle(vehiclehash, x, y, z, GetEntityHeading(PlayerPedId())+90, 1, 0)
    end)
end)




Citizen.CreateThread(function()
    SetDiscordAppId("1033373542110208038")   
    while true do
       

        local plr_count = GetNumberOfPlayers()
        SetRichPresence(".gg/nhdojrp (ID: " .. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. ")")
        SetDiscordRichPresenceAssetText("Active Players: " .. plr_count)
        SetDiscordRichPresenceAssetSmallText(".gg/nhdojrp")
        Citizen.Wait(10000)
    end
end)

Citizen.CreateThread(function()
    SetGarbageTrucks(0)
    SetRandomBoats(0)
    while true 
    	do
    		-- These natives has to be called every frame.
    		SetVehicleDensityMultiplierThisFrame(0.0)
		SetPedDensityMultiplierThisFrame(0.0)
		SetRandomVehicleDensityMultiplierThisFrame(0.0)
		SetParkedVehicleDensityMultiplierThisFrame(0.0)
		SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
		
		local playerPed = GetPlayerPed(-1)
		local pos = GetEntityCoords(playerPed) 
		RemoveVehiclesFromGeneratorsInArea(pos['x'] - 500.0, pos['y'] - 500.0, pos['z'] - 500.0, pos['x'] + 500.0, pos['y'] + 500.0, pos['z'] + 500.0);
		
		
	
    	
		Citizen.Wait(1)
	end

end)

RegisterCommand("report", function(source, args, rawCommand)
    
    a = {
        icons = true, -- show or hide icons default true
        insert = 'before', -- Accepted values: after or before.
        pool = 0, -- Default: 0 Limits the number of concurrent notification elements that can be rendered within the notifications container at any given time. A value of 0 means that there is no limit.
        sticky = false, -- Default: false A boolean designating whether the notification elements should be removed automatically when they expire or whether they should stay in the DOM until they are removed manually.
        pauseOnHover = true, -- Default: true A boolean designating whether the notifications expiration control should pause when hovering over the wrapper element. Can only be set on class instantiation.
        life = 4000, -- Default: 3000 Expiration time for non-sticky notification elements in milliseconds.
        progressbar = true, -- A boolean designating whether the life time progress bar will be displayed for each notification element
        effect = 'slide', -- The animation effect when adding or removing notification elements. Accepted values: fade or slide.
        easing = 'ease-in-out', -- linear, ease, ease-in, ease-out, ease-in-out or a custom cubic-bezier value.
    }

    if args[1] == nil then
        send_notify('error','Report failed', 'Invalid Arguments. ex: /report <message>', a)
        return
    end

    local report_msg = rawCommand:sub(8)
   
    TriggerServerEvent("nhrp:report", report_msg, "xd")
    send_notify('success','Report Success', 'Your report was sent.', a)

end, false --[[this command is not restricted, everyone can use this.]])

local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
	-- Postes de polices
	{title="Senora Hideout", colour=29, id=403, x=-35.240936279297, y=2879.04296875, z=59.577411651611},
  }

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.9)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)




