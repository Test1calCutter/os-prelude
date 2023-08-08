local loaded = false
local htmlDisplayed = false


local function displayHTML()
    if not htmlDisplayed then
        htmlDisplayed = true
        
        SendNUIMessage({
            type = 'display_html',
            url = 'url_to_your_html_file'
        })
    end
end

Citizen.CreateThread(function()
    while not loaded do
        Citizen.Wait(0)
    end
    displayHTML()
end)

RegisterNetEvent('loadingFinished')
AddEventHandler('loadingFinished', function()
    loaded = true
end)