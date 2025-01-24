---@meta

---@class OxPlayerClient : OxPlayer
---@field public state StateBag
player = {}

---**`client`**
---@param statusName string
---@param value number
---@return boolean success
function player.addStatus(statusName, value) end

---**`client`**
---@param key string
---@return any
function player.get(key) end

---**`client`**
---@return vector3
function player.getCoords() end

---**`client`**
---@param filter string|string[]|{ [string]: number }
---@return any
function player.getGroup(filter) end

---**`client`**
---@param groupType string
---@return string groupName
---@return number grade
function player.getGroupByType(groupType) end

---**`client`**
---@return table<string, number> groups
function player.getGroups() end

---**`client`**
---@param statusName string
---@return number
function player.getStatus(statusName) end

---**`client`**
---@return table<string, number> statuses
function player.getStatuses() end

---**`client`**
---@param permission string
---@return boolean
function player.hasPermission(permission) end

---**`client`**
---@param statusName string
---@param value number
---@return boolean success
function player.removeStatus(statusName, value) end

---**`client`**
---@param key string
---@param cb fun(data: any) # callback receiving new value of `key`
---@return any data # new value of `key`
function player.on(key, cb) end
