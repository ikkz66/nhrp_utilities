Citizen.CreateThread(function ()
	Wait(1000)
    SendNUIMessage({option = config})
end)

function send_notify(type,title,msg,options)
local refresh = false
    local conf = config
    if options ~= nil then
        for k,v in pairs(options) do
            if k ~= nil and v ~= conf[k] then
                conf[k] = v
            end
        end
    end
    SendNUIMessage({notify = true, type = type, title = title, message = msg, options = conf})
  
end

RegisterNetEvent('salim224:Notify') -- this is all of it so simple :D
AddEventHandler('salim224:Notify', function(type,title,msg,options)
    local refresh = false
    local conf = config
    if options ~= nil then
        for k,v in pairs(options) do
            if k ~= nil and v ~= conf[k] then
                conf[k] = v
            end
        end
    end
    SendNUIMessage({notify = true, type = type, title = title, message = msg, options = conf})
end)



local g_freak = false

-- Wait until client is loaded into the map
AddEventHandler("playerSpawned", function ()
	if not g_freak then	
		ShutdownLoadingScreenNui()
xddx = {
        icons = true, -- show or hide icons default true
        insert = 'before', -- Accepted values: after or before.
        pool = 0, -- Default: 0 Limits the number of concurrent notification elements that can be rendered within the notifications container at any given time. A value of 0 means that there is no limit.
        sticky = false, -- Default: false A boolean designating whether the notification elements should be removed automatically when they expire or whether they should stay in the DOM until they are removed manually.
        pauseOnHover = true, -- Default: true A boolean designating whether the notifications expiration control should pause when hovering over the wrapper element. Can only be set on class instantiation.
        life = 7000, -- Default: 3000 Expiration time for non-sticky notification elements in milliseconds.
        progressbar = true, -- A boolean designating whether the life time progress bar will be displayed for each notification element
        effect = 'slide', -- The animation effect when adding or removing notification elements. Accepted values: fade or slide.
        easing = 'ease-in-out', -- linear, ease, ease-in, ease-out, ease-in-out or a custom cubic-bezier value.
    }
		send_notify('info','.gg/nhdojrp', 'Welcome to NHRP! Make sure to join our discord!', xddx)
		Ran = true
	end
end)