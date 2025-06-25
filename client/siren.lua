local pState = LocalPlayer.state
local sirens = require 'config.client'

---@param vehicle number
---@return table?
local function isAllowedVehicle(vehicle)
    if not vehicle then return end
    
    local class = GetVehicleClass(vehicle)
    local model = GetEntityModel(vehicle)
    
---@diagnostic disable-next-line: return-type-mismatch
    return class == 18 and sirens.vehicles[model]
end

---@return boolean
local function isInEmergencyVehicle()
    if not cache.vehicle or cache.seat ~= -1 or not pState.in_emv then
        return false
    end
    
    return not IsEntityDead(cache.vehicle)
end

---@param state boolean
local function toggleHorns(state)
    if not isInEmergencyVehicle() then return end
    
    local vehState = Entity(cache.vehicle).state
    if not vehState.sirensData then return end
    
    local sirenData = state and vehState.sirensData[1]
    vehState:set('sirenHorn', sirenData, true)
end

local function toggleSiren()
    if not isInEmergencyVehicle() then return end
    
    local vehState = Entity(cache.vehicle).state
    local isOn = not vehState.sirenOn
    
    vehState:set('sirenOn', isOn, true)
    vehState:set('soundId', isOn and 1 or 0, true)
    
    if not isOn then
        vehState:set('sirenMode', 'HOLD', true)
        vehState:set('sirenSound', false, true)
    end
    
    PlaySoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
end

local function toggleMode()
    if not isInEmergencyVehicle() then return end
    
    local vehState = Entity(cache.vehicle).state
    if not vehState.sirenOn then return end
    
    local newMode = vehState.sirenMode == 'HOLD' and 'TAP' or 'HOLD'
    vehState:set('sirenMode', newMode, true)
    
    PlaySoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
    
    if newMode == 'HOLD' then
        vehState:set('sirenSound', false, true)
        return
    end
    
    vehState:set('soundId', 2, true)
    local sirenData = vehState.sirensData[2]
    vehState:set('sirenSound', sirenData, true)
end

local sirenSound = {
    onPressed = function()
        if not isInEmergencyVehicle() then return end
        
        local vehState = Entity(cache.vehicle).state
        
        if vehState.sirenMode == 'TAP' then
            if not vehState.sirenOn then return end
            
            local soundId = vehState.soundId
            local soundData = vehState.sirensData
            
            soundId = (soundId + 1) > #soundData and 2 or soundId + 1
            
            soundData[soundId].new = true
            vehState:set('soundId', soundId, true)
            vehState:set('sirenSound', soundData[soundId], true)
        elseif vehState.sirenMode == 'HOLD' then
            local sirenData = vehState.sirensData[2]
            vehState:set('sirenSound', sirenData, true)
        end
    end,
    
    onReleased = function()
        if not isInEmergencyVehicle() then return end
        
        local vehState = Entity(cache.vehicle).state
        if vehState.sirenMode == 'HOLD' then
            vehState:set('sirenSound', false, true)
        end
    end
}

---@param id number
local function changeSoundId(id)
    if not isInEmergencyVehicle() then return end
    
    local vehState = Entity(cache.vehicle).state
    
    if vehState.sirenMode ~= 'TAP' or not vehState.sirenOn then
        return
    end
    
    local soundData = vehState.sirensData
    if not soundData[id] then return end
    
    soundData[id].new = true
    vehState:set('soundId', id, true)
    vehState:set('sirenSound', soundData[id], true)
end

---@param vehicle number
local function checkVehicle(vehicle)
    if cache.seat ~= -1 then return end
    
    local sirensData = isAllowedVehicle(vehicle)
    
    if not sirensData then
        if pState.in_emv then
            pState:set('in_emv', false, true)
        end
        return
    end
    
    pState:set('in_emv', true, true)
    
    local vehState = Entity(vehicle).state
    vehState:set('sirenMode', 'HOLD', true)
    vehState:set('sirensData', sirensData, true)
    
    local emv = cache.vehicle
    CreateThread(function()
        local disabledControls = { 80, 81, 82, 83, 84, 85, 86, 172 }
        
        while cache.vehicle == emv and cache.seat == -1 do
            for i = 1, #disabledControls do
                DisableControlAction(0, disabledControls[i], true)
            end
            Wait(0)
        end
    end)
end

lib.onCache('vehicle', function(vehicle)
    SetTimeout(100, function()
        checkVehicle(vehicle)
    end)
end)

-- Keybinds
lib.addKeybind({
    name = 'toggle_sirens',
    description = 'Toggle Siren',
    defaultKey = 'Q',
    onPressed = toggleSiren
})

lib.addKeybind({
    name = 'sirens_horn',
    description = 'Siren Horn',
    defaultKey = 'E',
    onPressed = function()
        toggleHorns(true)
    end,
    onReleased = function()
        toggleHorns(false)
    end
})

lib.addKeybind({
    name = 'sirens_mode',
    description = 'Change Siren Mode',
    defaultKey = 'LMENU',
    onPressed = toggleMode
})

lib.addKeybind({
    name = 'sirens_sound',
    description = 'Play Siren (HOLD)',
    defaultKey = 'R',
    onPressed = sirenSound.onPressed,
    onReleased = sirenSound.onReleased
})

-- Siren sound selection keybinds
local sirenSounds = {
    { key = '1', id = 2, desc = 'Siren Sound 1' },
    { key = '2', id = 3, desc = 'Siren Sound 2' },
    { key = '3', id = 4, desc = 'Siren Sound 3' },
    { key = '4', id = 5, desc = 'Siren Sound 4' },
    { key = '5', id = 6, desc = 'Siren Sound 5' },
    { key = '6', id = 7, desc = 'Siren Sound 6' }
}

for i = 1, #sirenSounds do
    local sound = sirenSounds[i]
    lib.addKeybind({
        name = ('siren_sound_%d'):format(i),
        description = sound.desc,
        defaultKey = sound.key,
        onPressed = function()
            changeSoundId(sound.id)
        end
    })
end