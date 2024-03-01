---@meta

---@class OxInventory
---@field id any trust me it's less annoying this way
---@field dbId string|number
---@field label string
---@field type string
---@field slots number
---@field weight number
---@field maxWeight number
---@field open? number|false
---@field items table<number, SlotWithItem?>
---@field set function
---@field get function
---@field minimal function
---@field time number
---@field owner? string|number|boolean
---@field groups? table<string, number>
---@field coords? vector3
---@field datastore? boolean
---@field changed? boolean
---@field weapon? number
---@field containerSlot? number
---@field player? { source: number, ped: number, groups: table, name?: string, sex?: string, dateofbirth?: string, [string]: any }
---@field netid? number
---@field entityId? number
---@field distance? number
---@field openedBy { [number]: true }
---@field currentShop? string
---@field usingItem? SlotWithItem

---@alias inventory OxInventory | { id: string | number, owner?: boolean | string | number } | string | number

---@class TemporaryStashProperties
---@field name? string
---@field label string
---@field slots number
---@field maxWeight number
---@field owner? string|number|boolean
---@field groups? table<string, number>
---@field coords? vector3
---@field items? { [number]: string, [number]: number, [number]: table | string }[]

---**`server`**
---@param player { source: number, identifier: string | number, name: string, groups?: table, dateofbirth?: string, sex?: string }
---@param minimalInventory? { name: string, slot: number, count: number, metadata?: table }[]
function exports.ox_inventory:setPlayerInventory(player, minimalInventory) end

---**`server`**
---@param playerId number
---@param invType string
---@param data? string | number | table
function exports.ox_inventory:forceOpenInventory(playerId, invType, data) end

---**`server`**
---@param playerId number
---@param items table
---@return table<number, SlotWithItem> items updated item data
---@return number totalWeight
function exports.ox_inventory:ConvertItems(playerId, items) end

---**`server`**
---@param event string
---@param cb function
---@param options? table
---@return number
function exports.ox_inventory:registerHook(event, cb, options) end

---**`server`**
---@param id? number
function exports.ox_inventory:removeHooks(id) end

---**`server`**
---@param inv inventory
---@param owner? string | number
---@return OxInventory?
function exports.ox_inventory:GetInventory(inv, owner) end

---**`server`**
---@param inv inventory
---@param owner? string | number
---@return table<number, SlotWithItem>?
function exports.ox_inventory:GetInventoryItems(inv, owner) end

---**`server`**
---@param inv inventory
---@param slotId number
---@return OxInventory?
function exports.ox_inventory:GetContainerFromSlot(inv, slotId) end

---**`server`**
---@param inv inventory
---@param item string
---@param metadata? metadata
---@param returnsCount? boolean
---@return OxServerItem | number
function exports.ox_inventory:GetItem(inv, item, metadata, returnsCount) end

---**`server`**
---@param inv inventory
---@param item string
---@param count number
---@param metadata? metadata
---@return boolean success
---@return nil | string | SlotWithItem | SlotWithItem[] response
function exports.ox_inventory:SetItem(inv, item, count, metadata) end

---**`server`**
---@param inv inventory
---@return SlotWithItem?
function exports.ox_inventory:GetCurrentWeapon(inv) end

---**`server`**
---@param inv inventory
---@param slotId number
---@return SlotWithItem?
function exports.ox_inventory:GetSlot(inv, slotId) end

---**`server`**
---@param inv inventory
---@param slotId number
---@param durability? number
function exports.ox_inventory:SetDurability(inv, slotId, durability) end

---**`server`**
---@param inv inventory
---@param slotId number
---@param metadata metadata
function exports.ox_inventory:SetMetadata(inv, slotId, metadata) end

---**`server`**
---@param inv inventory
---@param slots number
function exports.ox_inventory:SetSlotCount(inv, slots) end

---**`server`**
---@param inv inventory
---@param maxWeight number
function exports.ox_inventory:SetMaxWeight(inv, maxWeight) end

---**`server`**
---@param inv inventory
---@param item string
---@param count number
---@param metadata? metadata
---@param slot? number
---@param cb? fun(success: boolean, response?: string) deprecated
---@return boolean success
---@return nil | string | SlotWithItem | SlotWithItem[] response
function exports.ox_inventory:AddItem(inv, item, count, metadata, slot, cb) end

---**`server`**
---@param inv inventory
---@param search 'slots'
---@param item string | string[]
---@param metadata? metadata
---@return SlotWithItem | SlotWithItem[] items
function exports.ox_inventory:Search(inv, search, item, metadata) end

---**`server`**
---@param inv inventory
---@param search 'count'
---@param item string | string[]
---@param metadata? metadata
---@return number | table<string, number> count
function exports.ox_inventory:Search(inv, search, item, metadata) end

---**`server`**
---@param inv inventory
---@param item string
---@param metadata? metadata
---@return table<number, number> slots `[slotId]: count`
---@return number totalCount
---@return number emptySlots amount of remaining empty slots
function exports.ox_inventory:GetItemSlots(inv, item, metadata) end

---**`server`**
---@param inv inventory
---@param item string
---@param count number
---@param metadata? metadata
---@param slot? number
---@param ignoreTotal? boolean
---@return boolean success
---@return string? response
function exports.ox_inventory:RemoveItem(inv, item, count, metadata, slot, ignoreTotal) end

---**`server`**
---@param inv inventory
---@param item string
---@param count number
---@param metadata? metadata
---@return boolean? canCarry
function exports.ox_inventory:CanCarryItem(inv, item, count, metadata) end

---**`server`**
---@param inv inventory
---@param item string
---@return number? amount
function exports.ox_inventory:CanCarryAmount(inv, item) end

---**`server`**
---@param inv inventory
---@param weight number
---@return boolean? canHold
---@return number? availableWeight
function exports.ox_inventory:CanCarryWeight(inv, weight) end

---**`server`**
---@param inv inventory
---@param firstItem string
---@param firstItemCount number
---@param testItem string
---@param testItemCount number
---@return boolean? canSwap
function exports.ox_inventory:CanSwapItem(inv, firstItem, firstItemCount, testItem, testItemCount) end

---**`server`**
---@param prefix string
---@param items { [1]: string, [2]: number, [3]: metadata? }[] `{ name, count, metadata }`
---@param coords vector3
---@param slots? number
---@param maxWeight? number
---@param instance? string | number
---@param model? string | number
---@return string dropId
function exports.ox_inventory:CustomDrop(prefix, items, coords, slots, maxWeight, instance, model) end

---**`server`**
---@param playerId number
---@return string dropId
function exports.ox_inventory:CreateDropFromPlayer(playerId) end

---**`server`**
---@param playerId number
function exports.ox_inventory:ConfiscateInventory(playerId) end

---**`server`**
---@param playerId number
function exports.ox_inventory:ReturnInventory(playerId) end

---**`server`**
---@param inv inventory
---@param keep? string | string[] item or list of items to ignore while clearing items
function exports.ox_inventory:ClearInventory(inv, keep) end

---**`server`**
---@param inv inventory
---@return number? slotId
function exports.ox_inventory:GetEmptySlot(inv) end

---**`server`**
---@param inv inventory
---@param itemName string
---@param metadata? metadata
---@return number? slotId
function exports.ox_inventory:GetSlotForItem(inv, itemName, metadata) end

---**`server`**
---@param inv inventory
---@param itemName string
---@param metadata? metadata
---@param strict? boolean strictly match metadata properties, otherwise use partial matching
---@return SlotWithItem? item
function exports.ox_inventory:GetSlotWithItem(inv, itemName, metadata, strict) end

---**`server`**
---@param inv inventory
---@param itemName string
---@param metadata? metadata
---@param strict? boolean strictly match metadata properties, otherwise use partial matching
---@return number? slotId
function exports.ox_inventory:GetSlotIdWithItem(inv, itemName, metadata, strict) end

---**`server`**
---@param inv inventory
---@param itemName string
---@param metadata? metadata
---@param strict? boolean strictly match metadata properties, otherwise use partial matching
---@return SlotWithItem[]? items
function exports.ox_inventory:GetSlotsWithItem(inv, itemName, metadata, strict) end

---**`server`**
---@param inv inventory
---@param itemName string
---@param metadata? metadata
---@param strict? boolean strictly match metadata properties, otherwise use partial matching
---@return number[]? slotIds
function exports.ox_inventory:GetSlotIdsWithItem(inv, itemName, metadata, strict) end

---**`server`**
---@param inv inventory
---@param itemName string
---@param metadata? metadata
---@param strict? boolean strictly match metadata properties, otherwise use partial matching
---@return number count
function exports.ox_inventory:GetItemCount(inv, itemName, metadata, strict) end

---**`server`**
---@param name string
---@param label string
---@param slots number
---@param maxWeight number
---@param owner? boolean | string | number
---@param groups? table<string, number>
---@param coords? vector3 | vector3[]
function exports.ox_inventory:RegisterStash(name, label, slots, maxWeight, owner, groups, coords) end

---**`server`**
---@param properties TemporaryStashProperties
---@return string stashId
function exports.ox_inventory:CreateTemporaryStash(properties) end

---**`server`**
---@return table<string, OxServerItem> items
function exports.ox_inventory:Items() end

---**`server`**
---@param itemName string
---@return OxServerItem? item
function exports.ox_inventory:Items(itemName) end

---**`server`**
---@param archetype string
---@param data OxShopProperties
function exports.ox_inventory:RegisterShop(archetype, data) end

---Unloads an inventory. Triggers a save for persistent inventories and deletes temporary ones.
---@param inv inventory
function exports.ox_inventory:RemoveInventory(inv) end
