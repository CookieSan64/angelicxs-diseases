Config = {}

Config.UseESX = true						-- Utiliser le Framework ESX
Config.UseQBCore = false					-- Utiliser le Framework QBCore (Ignoré si Config.UseESX = true)

Config.UseCustomNotify = false				-- Utiliser un script de notification personnalisé, doit compléter l'événement ci-dessous.

-- Complétez uniquement cet événement si Config.UseCustomNotify est vrai ; mythic_notification est fourni comme exemple
RegisterNetEvent('angelicxs-MedicalDiseases:CustomNotify')
AddEventHandler('angelicxs-MedicalDiseases:CustomNotify', function(message, type)
    --exports.mythic_notify:SendAlert(type, message, 4000)
end)


Config.RegisterCommand = false               -- Permet d'utiliser une commande /command pour guérir toutes les maladies au lieu des objets
Config.CommandName = 'CureDisease'          -- Si Config.RegisterCommand, nom de la /command
Config.CommandDistance = 5		            -- Si Config.RegisterCommand, distance maximale à laquelle le joueur peut utiliser la commande.
Config.CommandJob = {                       -- Si Config.RegisterCommand, quels métiers peuvent utiliser la /command pour guérir toutes les maladies
    'ambulance'
}

Config.IllnessCheck = 10                    -- En minutes, à quelle fréquence vérifier les maladies
Config.IllnessChance = 5		    -- % Chance de tomber malade

Config.CoughDrug = 'coughmedicine'          -- Nom de l'objet utilisé pour guérir la toux
Config.VomitDrug = 'nauseamedicine'          -- Nom de l'objet utilisé pour guérir les vomissements
Config.DizzyDrug = 'gingermedicine'         -- Nom de l'objet utilisé pour guérir les étourdissements

Config.LangType = {
	['error'] = 'error',
	['success'] = 'success',
	['info'] = 'primary'
}

Config.Lang = {
	['wrong_job'] = 'Vous n\'avez pas le bon métier pour faire ça !',
	['no_id'] = 'Entrez l\'ID du joueur que vous essayez de guérir !',
	['wrong_medicine'] = 'Vous avez pris le mauvais médicament pour votre maladie !',
	['cured'] = 'Vous avez pris le médicament et vous sentez beaucoup mieux !',
	['feel_sick'] = 'Vous vous sentez malade...',
	['not_sick'] = 'Vous avez pris des médicaments mais vous n\'êtes pas malade !',
	['too_far'] = 'Ils sont trop loin pour recevoir un traitement !',
}