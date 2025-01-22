---@class OxVehicleServer
---@field public entity number
---@field public make string
---@field public model string
---@field public netId number
---@field public plate string
---@field public group? string
---@field public id? number
---@field public owner? number
---@field public vin? string
vehicle = {}

---**server**
function vehicle.delete() end

---**server**
---@param save boolean?
function vehicle.despawn(save) end

---**server**
---@param key string
---@return any
function vehicle.get(key) end

---**server**
---@return vector3
function vehicle.getCoords() end

---**server**
---@return VehicleProperties
function vehicle.getProperties() end

---**server**
---@return StateBag
function vehicle.getState() end

---**server**
---@return string?
function vehicle.getStored() end

---**server**
---@param coords? vector3
---@param rotation? vector3
function vehicle.respawn(coords, rotation) end

---**server**
---@return number
function vehicle.save() end

---**server**
---@param key string
---@param value any
function vehicle.set(key, value) end

---**server**
---@param groupName? string
function vehicle.setGroup(groupName) end

---**server**
---@param charId? number
function vehicle.setOwner(charId) end

---**server**
---@param plate string
function vehicle.setPlate(plate) end

---**server**
---@param properties VehicleProperties
---@param apply boolean?
function vehicle.setProperties(properties, apply) end

---**server**
---@param value? string
---@param despawn? boolean
function vehicle.setStored(value, despawn) end