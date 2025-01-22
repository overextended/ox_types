---@meta

---@class OxClient : OxCommon
---@field [string] fun(...): any
Ox = {}

---@class OxPlayerClient
---@field public state StateBag
---@field public userId number
---@field public charId number?
---@field public stateId string?
player = {}

---**`client`**
---@param player OxPlayerClient
---@param statusName string
---@param value number
---@return boolean success
function player.addStatus(player, statusName, value) end

---**`client`**
---@param player OxPlayerClient
---@param key string
---@return any
function player.get(player, key) end

---**`client`**
---@param player OxPlayerClient
---@return vector3
function player.getCoords(player) end

---**`client`**
---@param player OxPlayerClient
---@param filter string|string[]|{ [string]: number }
---@return any
function player.getGroup(player, filter) end

---**`client`**
---@param player OxPlayerClient
---@param groupType string
---@return string groupName
---@return number grade
function player.getGroupByType(player, groupType) end

---**`client`**
---@param player OxPlayerClient
---@return table<string, number> groups
function player.getGroups(player) end

---**`client`**
---@param player OxPlayerClient
---@param statusName string
---@return number
function player.getStatus(player, statusName) end

---**`client`**
---@param player OxPlayerClient
---@return table<string, number> statuses
function player.getStatuses(player) end

---**`client`**
---@param player OxPlayerClient
---@param permission string
---@return boolean
function player.hasPermission(player, permission) end

---**`client`**
---@param player OxPlayerClient
---@param statusName string
---@param value number
---@return boolean success
function player.removeStatus(player, statusName, value) end

---**`client`**
---@param player OxPlayerClient
---@param key string
---@param cb fun(data: any) # callback receiving new value of `key`
---@return any data         # new value of `key`
function player.on(player, key, cb) end

return player
