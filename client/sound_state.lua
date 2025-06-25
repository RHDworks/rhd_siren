local soundId = {
    horn = {},
    siren = {}
}

local function releaseSound(soundType, entity)
    if not soundId[soundType]?[entity] then
        return
    end
    StopSound(soundId[soundType][entity])
    ReleaseSoundId(soundId[soundType][entity])
    soundId[soundType][entity] = nil
end

local function getSound(soundType, entity)
    if not soundId[soundType]?[entity] then
        soundId[soundType][entity] = GetSoundId()
    end
    return soundId[soundType][entity]
end

---Gets and returns an entity handle and network id from a state bag name
---([source](https://github.com/overextended/ox_core/blob/main/client/utils.lua)).
---@async
---@param bagName string
---@return integer entity, integer netId
local function getEntityAndNetIdFromBagName(bagName)
    local netId = tonumber(bagName:gsub('entity:', ''), 10)

    local entity = lib.waitFor(function()
        if NetworkDoesEntityExistWithNetworkId(netId) then
            return NetworkGetEntityFromNetworkId(netId)
        end
    end, ('statebag timed out while awaiting entity creation! (%s)'):format(bagName), 10000)

    if not entity then
        lib.print.error(('statebag received invalid entity! (%s)'):format(bagName))
        return 0, 0
    end

    return entity, netId
end

---Returns a state bag handler made for entities
---([source](https://github.com/overextended/ox_core/blob/main/client/utils.lua)).
---@param keyFilter string
---@param cb fun(entity: number, netId: number, value: any, bagName: string)
---@return number
local function entityStateHandler(keyFilter, cb)
    return AddStateBagChangeHandler(keyFilter, '', function(bagName, _, value)
        local entity, netId = getEntityAndNetIdFromBagName(bagName)
        if entity then
            cb(entity, netId, value, bagName)
        end
    end)
end

entityStateHandler('sirenOn', function (entity, netId, value, bagName)
    SetVehicleHasMutedSirens(entity, true)
    SetVehicleSiren(entity, value)
end)

entityStateHandler('sirenHorn', function (entity, netId, value, bagName)
    if not value then releaseSound('horn', entity) return end

    local sound_id = getSound('horn', entity)
    PlaySoundFromEntity(sound_id, value.name, entity, value.ref, false, 0)
end)

entityStateHandler('sirenSound', function (entity, netId, value, bagName)
    if not value then releaseSound('siren', entity) return end
    if value.new then releaseSound('siren', entity) end

    local sound_id = getSound('siren', entity)
    PlaySoundFromEntity(sound_id, value.name, entity, value.ref, false, 0)
end)