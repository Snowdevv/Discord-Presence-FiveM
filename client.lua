Citizen.CreateThread(function()
	while true do
		local player = GetPlayerPed(-1)
		SetDiscordAppId() -- Application Id of discord (https://discord.com/developers/applications)
		SetDiscordRichPresenceAsset('')     
        SetDiscordRichPresenceAssetText('')    
        SetDiscordRichPresenceAssetSmall('')
        SetDiscordRichPresenceAssetSmallText('')
		SetDiscordRichPresenceAction(0, "Se connecter", "") -- cfx link
        SetDiscordRichPresenceAction(1, "Discord", "") -- Discord server link
		

		while true do
			Citizen.Wait(1500) -- time of refresh
			players = {}
			for i = 0, 128 do
				if NetworkIsPlayerActive( i ) then
					table.insert( players, i )
				end
			end
			SetRichPresence(GetPlayerName(PlayerId()) .. " [" .. GetPlayerServerId(PlayerId()) .. "] | " .. #players + 0 .. " joueur" .. (#players == 1 and "" or "s") .. "")
	
		end

		Citizen.Wait(60000)
	end
end)
