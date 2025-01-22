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

--- Increases the value of a status.
---@param player OxPlayerClient
---@param statusName string
---@param value number
---@return boolean success
function player.addStatus(player, statusName, value) end

--- Returns a value from the player's metadata.
---@param player OxPlayerClient
---@param key string
---@return any
function player.get(player, key) end

--- Returns the player's current coordinates.
---@param player OxPlayerClient
---@return vector3
function player.getCoords(player) end

--- Returns the player's grade of a given group name, or the first matched name/grade in a filter.
---@param player OxPlayerClient
---@param filter string|string[]|{ [string]: number }
---@return any
function player.getGroup(player, filter) end

--- Returns the player's name and grade of a group with a matching type.
---@param player OxPlayerClient
---@param groupType string
---@return string groupName
---@return number grade
function player.getGroupByType(player, groupType) end

--- Returns an object of all groups the player is currently in, keyed by group name.
---@param player OxPlayerClient
---@return table<string, number> groups
function player.getGroups(player) end

--- Returns the value of the specified status.
---@param player OxPlayerClient
---@param statusName string
---@return number
function player.getStatus(player, statusName) end

--- Returns an object containing all statuses, keyed by status name.
---@param player OxPlayerClient
---@return table<string, number> statuses
function player.getStatuses(player) end

--- Checks if the user has a particular permission, based on their groups.
---@param player OxPlayerClient
---@param permission string
---@return boolean
function player.hasPermission(player, permission) end

--- Reduces the value of a status.
---@param player OxPlayerClient
---@param statusName string
---@param value number
---@return boolean success
function player.removeStatus(player, statusName, value) end

--- Listens for changes to the player's metadata for a specified key.
---@param player OxPlayerClient
---@param key string
---@param cb fun(data: any) # callback receiving new value of `key`
---@return any data         # new value of `key`
function player.on(player, key, cb) end

return player
