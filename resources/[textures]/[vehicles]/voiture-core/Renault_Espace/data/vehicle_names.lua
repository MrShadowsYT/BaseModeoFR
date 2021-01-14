  
function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
	AddTextEntry('pacev', 'Renault Espace') -- example = nom de spawn du véhicule ; example2 = nom à afficher
end)