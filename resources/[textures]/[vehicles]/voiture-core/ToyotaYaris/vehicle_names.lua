  
function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
	AddTextEntry('yaris08', 'Toyota Yaris') -- example = nom de spawn du véhicule ; example2 = nom à afficher
end)