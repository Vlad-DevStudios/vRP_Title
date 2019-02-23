------------------------CREDITS------------------------
-------- Script made by Vlad, DevStudios Owner --------
--      Script made for StreamForce Romania RP       --
--          Site: https://devstudios.store           --
--        Forum: http://forum.devstudios.store       --
--   Copyright 2019 ©DevStudios. All rights served   --
-------------------------------------------------------
function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5000)
		players = {}
		for i = 0, 31 do
			if NetworkIsPlayerActive( i ) then
				table.insert( players, i )
			end
		end
	end
end)

Citizen.CreateThread(function()
    while true do
        TriggerServerEvent("vRP:Title")
		Citizen.Wait(1)
	end
end)

RegisterNetEvent('vRP:Title_Display')
AddEventHandler('vRP:Title_Display', function(user_id, faction, name)
    AddTextEntry('FE_THDR_GTAO', "~g~| ~w~DevStudios ~g~| ~w~ID:~g~"..user_id.." ~g~| ~w~Job:~g~"..faction.." ~g~| ~w~Name:~g~"..name.. " ~g~| ~g~".. #players .. "~w~/~w~32 ~g~|")
end)