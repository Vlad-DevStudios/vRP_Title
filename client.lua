------------------------CREDITS------------------------
-------- Script made by Vlad, DevStudios Owner --------
--      Script made for StreamForce Romania RP       --
--          Site: https://devstudios.store           --
--        Forum: http://forum.devstudios.store       --
--   Copyright 2019 ©DevStudios. All rights served   --
-------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        TriggerServerEvent("vRP:Title")
		Citizen.Wait(100000000000)
	end
end)

RegisterNetEvent('vRP:Title_Display')
AddEventHandler('vRP:Title_Display', function(user_id, faction, name)
    AddTextEntry('FE_THDR_GTAO', "~g~| ~w~DevStudios ~g~| ~w~ID:~g~"..user_id.." ~g~| ~w~Job:~g~"..faction.." ~g~| ~w~Name:~g~"..name.. " ~g~| ~g~".. #players .. "~w~/~w~32 ~g~|")
end)
