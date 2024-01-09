---@meta

---@return SlotWithItem? currentWeapon
function exports.ox_inventory:getCurrentWeapon() end

---@param id string
---@param owner? boolean | string | number
function exports.ox_inventory:setStashTarget(id, owner) end

---@param type 'player'
---@param data? number
function exports.ox_inventory:openInventory(type, data) end

---@param type 'policeevidence'
---@param data? number | string
function exports.ox_inventory:openInventory(type, data) end

---@param type 'shop'
---@param data { id: number, type: string }
function exports.ox_inventory:openInventory(type, data) end

---@param type 'stash'
---@param data string | { id: number, type?: string, owner?: boolean | string | number }
function exports.ox_inventory:openInventory(type, data) end

---@param type 'dumpster'
---@param data string
function exports.ox_inventory:openInventory(type, data) end

---@param type 'drop'
---@param data number
function exports.ox_inventory:openInventory(type, data) end

---@param type 'glovebox' | 'trunk'
---@param data { id: string, netid: number }
function exports.ox_inventory:openInventory(type, data) end

---@param type 'crafting'
---@param data { id: number, index: number }
function exports.ox_inventory:openInventory(type, data) end

---@param type 'container'
---@param data number
function exports.ox_inventory:openInventory(type, data) end

---@param data SlotWithItem
---@param cb? fun(data: SlotWithItem | false)
function exports.ox_inventory:useItem(data, cb) end

---@param slotId number
---@return boolean? success
function exports.ox_inventory:useSlot(slotId) end

function exports.ox_inventory:openNearbyInventory() end

function exports.ox_inventory:closeInventory() end

---@param serverId number
---@param slotId number
---@param count? number
function exports.ox_inventory:giveItemToTarget(serverId, slotId, count) end

---@param search 'count'
---@param item string | string[]
---@param metadata? metadata
---@return number | table<string, number> count
function exports.ox_inventory:Search(search, item, metadata) end

---@param search 'slots'
---@param item string | string[]
---@param metadata? metadata
---@return SlotWithItem | SlotWithItem[] items
function exports.ox_inventory:Search(search, item, metadata) end

---@return table<number, SlotWithItem?> items
function exports.ox_inventory:GetPlayerItems() end

---@return number totalWeight
function exports.ox_inventory:GetPlayerWeight() end

---@return number maxWeight
function exports.ox_inventory:GetPlayerMaxWeight() end

---@param itemName string
---@param metadata? metadata
---@param strict? boolean strictly match metadata properties, otherwise use partial matching
---@return SlotWithItem? item
function exports.ox_inventory:GetSlotWithItem(itemName, metadata, strict) end

---@param itemName string
---@param metadata? metadata
---@param strict? boolean strictly match metadata properties, otherwise use partial matching
---@return number? slotId
function exports.ox_inventory:GetSlotIdWithItem(itemName, metadata, strict) end

---@param itemName string
---@param metadata? metadata
---@param strict? boolean strictly match metadata properties, otherwise use partial matching
---@return SlotWithItem[]? items
function exports.ox_inventory:GetSlotsWithItem(itemName, metadata, strict) end

---@param itemName string
---@param metadata? metadata
---@param strict? boolean strictly match metadata properties, otherwise use partial matching
---@return number[]? slotIds
function exports.ox_inventory:GetSlotIdsWithItem(itemName, metadata, strict) end

---@param itemName string
---@param metadata? metadata
---@param strict? boolean strictly match metadata properties, otherwise use partial matching
---@return number count
function exports.ox_inventory:GetItemCount(itemName, metadata, strict) end

---@param metadata table<string, string> | table<string, string>[]
function exports.ox_inventory:displayMetadata(metadata) end

---@param metadata string
---@param value string
function exports.ox_inventory:displayMetadata(metadata, value) end

---@return table<string, OxClientItem> items
function exports.ox_inventory:Items() end

---@param itemName string
---@return OxClientItem? item
function exports.ox_inventory:Items(itemName) end

---@param state? boolean
function exports.ox_inventory:weaponWheel(state) end
