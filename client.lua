Citizen.CreateThread(function()
	while true do
		SetDiscordAppId(1061083044968157214)

		SetDiscordRichPresenceAsset('omixrp1')
        
        SetDiscordRichPresenceAssetText('Omix RP')
       
        SetDiscordRichPresenceAssetSmall('omixrp2')

        SetDiscordRichPresenceAssetSmallText('Omix RP')

        SetDiscordRichPresenceAction(0, "Discord", "https://discord.gg/nRZuBAkJsy")

		Citizen.Wait(60000)
	end
end)