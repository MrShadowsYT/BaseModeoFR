ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(5000)
	end
end)

RMenu.Add('joblisting', 'main', RageUI.CreateMenu("Pôle-Emploi", "Bienvenue au ~b~Pôle~w~-~b~Emploi"))
RMenu.Add('joblisting', 'public', RageUI.CreateSubMenu(RMenu:Get('joblisting', 'main'), "Métiers Publics", "Métiers sans Candidature "))
RMenu.Add('joblisting', 'wl', RageUI.CreateSubMenu(RMenu:Get('joblisting', 'main'), "Métiers WL", "Métiers avec Candidature"))
RMenu.Add('joblisting', 'leave', RageUI.CreateSubMenu(RMenu:Get('joblisting', 'main'), "Démissionner", "Démissionner son emploi"))


Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('joblisting', 'main'), true, true, true, function()

            RageUI.Button("Métiers Publics", "Métiers sans Candidature", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('joblisting', 'public'))

            RageUI.Button("Métiers WL", "Métiers avec Candidature", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('joblisting', 'wl'))
            
            RageUI.Button("~r~Démissionner", "Démissionner son emploi", {RightLabel = ""},true, function()
            end, RMenu:Get('joblisting', 'leave'))
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('joblisting', 'public'), true, true, true, function()

            RageUI.Button("Abatteur", "Récolte , Traite & Vend du poulet", {RightLabel = "→ ~b~Choisir"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('polemploi:abatteur')
                    PlaySoundFrontend(-1, "Hit_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET", true)
                    Citizen.Wait(1000)
                    ESX.ShowNotification('Vous êtes maintenant ~b~Abatteur.')
                end
            end)

            RageUI.Button("Mineur", "Récolte, traite et vend des minerais", {RightLabel = "→ ~b~Choisir"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('polemploi:mineur')
                    PlaySoundFrontend(-1, "Hit_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET", true)
                    Citizen.Wait(1000)
                    ESX.ShowNotification('Vous êtes maintenant ~b~Mineur.')
                end
            end)

            RageUI.Button("Pêcheur", "Pêche des poissons puis les revend", {RightLabel = "→ ~b~Choisir"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('polemploi:pecheur')
                    PlaySoundFrontend(-1, "Hit_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET", true)
                    Citizen.Wait(1000)
                    ESX.ShowNotification('Vous êtes maintenant ~b~Pêcheur.')
                end
            end)

            RageUI.Button("Bûcheron", "Coupe des arbres, traite le bois et le revends", {RightLabel = "→ ~b~Choisir"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('polemploi:bucheron')
                    PlaySoundFrontend(-1, "Hit_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET", true)
                    Citizen.Wait(1000)
                    ESX.ShowNotification('Vous êtes maintenant ~b~Bûcheron.')
                end
            end)
            
            RageUI.Button("Couturier", "Récolte de la laine, la transforme en tissu et revend les vêtements", {RightLabel = "→ ~b~Choisir"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('polemploi:couturier')
                    PlaySoundFrontend(-1, "Hit_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET", true)
                    Citizen.Wait(1000)
                    ESX.ShowNotification('Vous êtes maintenant ~b~Couturier.')
                end
            end)
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('joblisting', 'wl'), true, true, true, function()

            RageUI.Button("Police Nationale", "Devenir ~b~Policier ?", {RightLabel = "→ ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    ESX.ShowAdvancedNotification("Comment ça marche ?", "Pôle-Emploi", "Pour vous faire recruter, veuillez postuler sur l'application de Panama.", "CHAR_HUMANDEFAULT", 1)
                end
            end)
            RageUI.Button("Mécano", "Devenir ~b~Mécano ?", {RightLabel = "→ ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment ça marche ?", "Pôle-Emploi", "Pour vous faire recruter, veuillez postuler sur l'application de Panama.", "CHAR_HUMANDEFAULT", 1)
               end
            end)
            RageUI.Button("Concessionnaire", "Devenir ~b~Concessionnaire ?", {RightLabel = "→ ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment ça marche ?", "Pôle-Emploi", "Pour vous faire recruter, veuillez postuler sur l'application de Panama.", "CHAR_HUMANDEFAULT", 1)
               end
            end)
            RageUI.Button("Pompier / SAMU", "Devenir ~b~pompier ou SAMU ?", {RightLabel = "→ ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment ça marche ?", "Pôle-Emploi", "Pour vous faire recruter, veuillez postuler sur l'application de Panama.", "CHAR_HUMANDEFAULT", 1)
               end
            end)
           --[[ RageUI.Button("Gendarmer", "Devenir ~b~Sheriff ?", {RightLabel = "→ ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment ça marche ?", "Pôle-Emploi", "Pour vous faire recruter, veuillez postuler sur l'application de Panama.", "CHAR_HUMANDEFAULT", 1)
               end
            end)
            RageUI.Button("Agent Immobilier", "Devenir ~b~Agent Immobilier ?", {RightLabel = "→ ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment ça marche ?", "Pôle-Emploi", "Pour vous faire recruter, veuillez postuler sur l'application de Panama.", "CHAR_HUMANDEFAULT", 1)
               end
            end)]]
            RageUI.Button("Taxi", "Devenir ~b~Taxi ?", {RightLabel = "→ ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment ça marche ?", "Pôle-Emploi", "Pour vous faire recruter, veuillez postuler sur l'application de Panama.", "CHAR_HUMANDEFAULT", 1)
               end
            end)
            RageUI.Button("Vignobles", "Devenir ~b~Vigneron ?", {RightLabel = "→ ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment ça marche ?", "Pôle-Emploi", "Pour vous faire recruter, veuillez postuler sur l'application de Panama.", "CHAR_HUMANDEFAULT", 1)
               end
            end)
            RageUI.Button("Unicorn", "Devenir ~b~Unicorn ?", {RightLabel = "→ ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment ça marche ?", "Pôle-Emploi", "Pour vous faire recruter, veuillez postuler sur l'application de Panama.", "CHAR_HUMANDEFAULT", 1)
               end
            end)
            RageUI.Button("Bahama", "Devenir ~b~Bahama ?", {RightLabel = "→ ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment ça marche ?", "Pôle-Emploi", "Pour vous faire recruter, veuillez postuler sur l'application de Panama.", "CHAR_HUMANDEFAULT", 1)
               end
            end)
            RageUI.Button("Journaliste", "Devenir ~b~Journaliste ?", {RightLabel = "→ ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment ça marche ?", "Pôle-Emploi", "Pour vous faire recruter, veuillez postuler sur l'application de Panama.", "CHAR_HUMANDEFAULT", 1)
               end
            end)

    
        
        end, function()
        end)

            RageUI.IsVisible(RMenu:Get('joblisting', 'leave'), true, true, true, function()
                RageUI.Button("Chomeur | Premier Job", "", {RightLabel = "→ ~b~Choisir"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                TriggerServerEvent('polemploi:chomeur1')
                PlaySoundFrontend(-1, "Hit_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET", true)
                Citizen.Wait(1000)
                ESX.ShowNotification('Vous êtes maintenant au ~b~Chômage.')
                end
            end)
            RageUI.Button("Chomeur | Second Job", "", {RightLabel = "→ ~b~Choisir"}, true, function(Hovered, Active, Selected)
                if (Selected) then
            TriggerServerEvent('polemploi:chomeur2')
            PlaySoundFrontend(-1, "Hit_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET", true)
            Citizen.Wait(1000)
            ESX.ShowNotification('Vous êtes maintenant au ~b~Chômage.')
            end
        end)
        



                  
            end, function()
            end, 1)
    
            Citizen.Wait(0)
        end
    end)


    local position = {
        {x =  -268.478, y = -957.99, z = 31.22, }
    }    
    

    local blips = {
        {title="Pôle-Emploi", colour=4, id=205, x = -268.478, y = -957.99, z = 31.22}
    }
    
    Citizen.CreateThread(function()
        for _, info in pairs(blips) do
            info.blip = AddBlipForCoord(info.x, info.y, info.z)
            SetBlipSprite(info.blip, info.id)
            SetBlipDisplay(info.blip, 4)
            SetBlipScale(info.blip, 0.7)
            SetBlipColour(info.blip, info.colour)
            SetBlipAsShortRange(info.blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(info.title)
            EndTextCommandSetBlipName(info.blip)
        end
    end)
    

    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then

                   RageUI.Text({
                        message = "Appuyez sur [~b~E~w~] pour acceder au ~b~Au Pôle-Emploi",
                        time_display = 1
                    })
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('joblisting', 'main'), not RageUI.Visible(RMenu:Get('joblisting', 'main')))
                    end
                end
            end
        end
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("ig_drfriedlander")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(5000)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "ig_drfriedlander", -268.864, -957.203, 30.223, 208.827, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)