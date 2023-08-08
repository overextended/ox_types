---@meta

---@return SlotWithItem?
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
---@param cb fun(data: SlotWithItem)
function exports.ox_inventory:useItem(data, cb) end

---@param slotId number
function exports.ox_inventory:useSlot(slotId) end

function exports.ox_inventory:openNearbyInventory() end

function exports.ox_inventory:closeInventory() end

---@param serverId number
---@param slotId number
---@param count? number
function exports.ox_inventory:giveItemToTarget(serverId, slotId, count) end

---@param search 'slots' | 'count'
---@param item string | string[]
---@param metadata string | table<string, any>
function exports.ox_inventory:Search(search, item, metadata) end

---@return table<number, SlotWithItem>
function exports.ox_inventory:GetPlayerItems() end

---@return number
function exports.ox_inventory:GetPlayerWeight() end

---@return number
function exports.ox_inventory:GetPlayerMaxWeight() end

---@param itemName string
---@param metadata? string | table<string, any>
---@param strict? boolean
---@return SlotWithItem?
function exports.ox_inventory:GetSlotWithItem(itemName, metadata, strict) end

---@param itemName string
---@param metadata? string | table<string, any>
---@param strict? boolean
---@return number?
function exports.ox_inventory:GetSlotIdWithItem(itemName, metadata, strict) end

---@param itemName string
---@param metadata? string | table<string, any>
---@param strict? boolean
---@return SlotWithItem[]?
function exports.ox_inventory:GetSlotsWithItem(itemName, metadata, strict) end

---@param itemName string
---@param metadata? string | table<string, any>
---@param strict? boolean
---@return number[]?
function exports.ox_inventory:GetSlotIdsWithItem(itemName, metadata, strict) end

---@param itemName string
---@param metadata? string | table<string, any>
---@param strict? boolean
---@return number
function exports.ox_inventory:GetItemCount(itemName, metadata, strict) end

---@param metadata table<string, string> | table<string, string>[]
function exports.ox_inventory:displayMetadata(metadata) end

---@param metadata string
---@param value string
function exports.ox_inventory:displayMetadata(metadata, value) end

---@return table<string, OxClientItem>
function exports.ox_inventory:Items() end

---@return OxClientItem?
function exports.ox_inventory:Items(itemName) end

---@param state boolean?
function exports.ox_inventory:weaponWheel(state) end