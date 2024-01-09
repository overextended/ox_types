---@meta

---**`client`**
---@return SlotWithItem? currentWeapon
function exports.ox_inventory:getCurrentWeapon() end

---**`client`**
---@param id string
---@param owner? boolean | string | number
function exports.ox_inventory:setStashTarget(id, owner) end

---**`client`**
---@param type 'player'
---@param data? number
function exports.ox_inventory:openInventory(type, data) end

---**`client`**
---@param type 'policeevidence'
---@param data? number | string
function exports.ox_inventory:openInventory(type, data) end

---**`client`**
---@param type 'shop'
---@param data { id: number, type: string }
function exports.ox_inventory:openInventory(type, data) end

---**`client`**
---@param type 'stash'
---@param data string | { id: number, type?: string, owner?: boolean | string | number }
function exports.ox_inventory:openInventory(type, data) end

---**`client`**
---@param type 'dumpster'
---@param data string
function exports.ox_inventory:openInventory(type, data) end

---**`client`**
---@param type 'drop'
---@param data number
function exports.ox_inventory:openInventory(type, data) end

---**`client`**
---@param type 'glovebox' | 'trunk'
---@param data { id: string, netid: number }
function exports.ox_inventory:openInventory(type, data) end

---**`client`**
---@param type 'crafting'
---@param data { id: number, index: number }
function exports.ox_inventory:openInventory(type, data) end

---**`client`**
---@param type 'container'
---@param data number
function exports.ox_inventory:openInventory(type, data) end

---**`client`**
---@param data SlotWithItem
---@param cb? fun(data: SlotWithItem | false)
function exports.ox_inventory:useItem(data, cb) end

---**`client`**
---@param slotId number
---@return boolean? success
function exports.ox_inventory:useSlot(slotId) end

---**`client`**
function exports.ox_inventory:openNearbyInventory() end

---**`client`**
function exports.ox_inventory:closeInventory() end

---**`client`**
---@param serverId number
---@param slotId number
---@param count? number
function exports.ox_inventory:giveItemToTarget(serverId, slotId, count) end

---**`client`**
---@param search 'count'
---@param item string | string[]
---@param metadata? metadata
---@return number | table<string, number> count
function exports.ox_inventory:Search(search, item, metadata) end

---**`client`**
---@param search 'slots'
---@param item string | string[]
---@param metadata? metadata
---@return SlotWithItem | SlotWithItem[] items
function exports.ox_inventory:Search(search, item, metadata) end

---**`client`**
---@return table<number, SlotWithItem?> items
function exports.ox_inventory:GetPlayerItems() end

---**`client`**
---@return number totalWeight
function exports.ox_inventory:GetPlayerWeight() end

---**`client`**
---@return number maxWeight
function exports.ox_inventory:GetPlayerMaxWeight() end

---**`client`**
---@param itemName string
---@param metadata? metadata
---@param strict? boolean strictly match metadata properties, otherwise use partial matching
---@return SlotWithItem? item
function exports.ox_inventory:GetSlotWithItem(itemName, metadata, strict) end

---**`client`**
---@param itemName string
---@param metadata? metadata
---@param strict? boolean strictly match metadata properties, otherwise use partial matching
---@return number? slotId
function exports.ox_inventory:GetSlotIdWithItem(itemName, metadata, strict) end

---**`client`**
---@param itemName string
---@param metadata? metadata
---@param strict? boolean strictly match metadata properties, otherwise use partial matching
---@return SlotWithItem[]? items
function exports.ox_inventory:GetSlotsWithItem(itemName, metadata, strict) end

---**`client`**
---@param itemName string
---@param metadata? metadata
---@param strict? boolean strictly match metadata properties, otherwise use partial matching
---@return number[]? slotIds
function exports.ox_inventory:GetSlotIdsWithItem(itemName, metadata, strict) end

---**`client`**
---@param itemName string
---@param metadata? metadata
---@param strict? boolean strictly match metadata properties, otherwise use partial matching
---@return number count
function exports.ox_inventory:GetItemCount(itemName, metadata, strict) end

---**`client`**
---@param metadata table<string, string> | table<string, string>[]
function exports.ox_inventory:displayMetadata(metadata) end

---**`client`**
---@param metadata string
---@param value string
function exports.ox_inventory:displayMetadata(metadata, value) end

---**`client`**
---@return table<string, OxClientItem> items
function exports.ox_inventory:Items() end

---**`client`**
---@param itemName string
---@return OxClientItem? item
function exports.ox_inventory:Items(itemName) end

---**`client`**
---@param state? boolean
function exports.ox_inventory:weaponWheel(state) end
