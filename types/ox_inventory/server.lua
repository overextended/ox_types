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
---@field player? { source: number, ped: number, groups: table, name?: string, sex?: string, dateofbirth?: string }
---@field netid? number
---@field distance? number
---@field openedBy { [number]: true }
---@field currentShop? string

---@alias inventory OxInventory | { id: string | number, owner?: boolean | string | number } | string | number

---@class TemporaryStashProperties
---@field label string
---@field slots number
---@field maxWeight number
---@field owner? string|number|boolean
---@field groups? table<string, number>
---@field coords? vector3
---@field items? { [number]: string, [number]: number, [number]: table | string }[]

---@param player { source: number, name?: string, groups?: table, dateofbirth?: string, sex?: string }
---@param minimalInventory { name: string, slot: number, count: number, metadata?: table }[]?
function exports.ox_inventory:setPlayerInventory(player, minimalInventory) end

---@param playerId number
---@param invType string
---@param data string | number | table
function exports.ox_inventory:forceOpenInventory(playerId, invType, data) end

---@param playerId number
---@param items table
---@return table<number, SlotWithItem>, number
function exports.ox_inventory:ConvertItems(playerId, items) end

---@param event string
---@param cb function
---@param options? table
---@return number
function exports.ox_inventory:registerHook(event, cb, options) end

---@param id? number
function exports.ox_inventory:removeHooks(id) end

---@param inv inventory
---@param owner? string | number
---@return OxInventory?
function exports.ox_inventory:GetInventory(inv, owner) end

---@param inv inventory
---@param owner? string | number
---@return table<number, SlotWithItem>?
function exports.ox_inventory:GetInventoryItems(inv, owner) end

---@param inv inventory
---@param slotId number
---@return OxInventory?
function exports.ox_inventory:GetContainerFromSlot(inv, slotId) end

---@param inv inventory
---@param item string
---@param metadata? string | table<string, any>
---@param returnsCount? boolean
---@return OxServerItem | number
function exports.ox_inventory:GetItem(inv, item, metadata, returnsCount) end

---@param inv inventory
---@param item string
---@param count number
---@param metadata? string | table<string, any>
---@return boolean, nil | string | SlotWithItem | SlotWithItem[]
function exports.ox_inventory:SetItem(inv, item, count, metadata) end

---@param inv inventory
---@return SlotWithItem?
function exports.ox_inventory:GetCurrentWeapon(inv) end

---@param inv inventory
---@param slotId number
---@return SlotWithItem?
function exports.ox_inventory:GetSlot(inv, slotId) end

---@param inv inventory
---@param slotId number
---@param durability? number
function exports.ox_inventory:SetDurability(inv, slotId, durability) end

---@param inv inventory
---@param slotId number
---@param metadata table<string, any>
function exports.ox_inventory:SetMetadata(inv, slotId, metadata) end

---@param inv inventory
---@param slots number
function exports.ox_inventory:SetSlotCount(inv, slots) end

---@param inv inventory
---@param maxWeight number
function exports.ox_inventory:SetMaxWeight(inv, maxWeight) end

---@param inv inventory
---@param item string
---@param count number
---@param metadata? string | table<string, any>
---@param slot? number
---@param cb? fun(success: boolean, response?: string) deprecated
---@return boolean, nil | string | SlotWithItem | SlotWithItem[]
function exports.ox_inventory:AddItem(inv, item, count, metadata, slot, cb) end

---@param inv inventory
---@param search 'slots' | 'count'
---@param item string | string[]
---@param metadata? string | table<string, any>
function exports.ox_inventory:Search(inv, search, item, metadata) end

---@param inv inventory
---@param item string
---@param metadata? table
function exports.ox_inventory:GetItemSlots(inv, item, metadata) end

---@param inv inventory
---@param item string
---@param count number
---@param metadata? string | table<string, any>
---@param slot? number
---@param ignoreTotal? boolean
---@return boolean?, string?
function exports.ox_inventory:RemoveItem(inv, item, count, metadata, slot, ignoreTotal) end

---@param inv inventory
---@param item string
---@param count number
---@param metadata? string | table<string, any>
---@return boolean?
function exports.ox_inventory:CanCarryItem(inv, item, count, metadata) end

---@param inv inventory
---@param item string
---@return number?
function exports.ox_inventory:CanCarryAmount(inv, item) end

---@param inv inventory
---@param weight number
---@return boolean?, number?
function exports.ox_inventory:CanCarryWeight(inv, weight) end

---@param inv inventory
---@param firstItem string
---@param firstItemCount number
---@param testItem string
---@param testItemCount number
---@return boolean?
function exports.ox_inventory:CanSwapItem(inv, firstItem, firstItemCount, testItem, testItemCount) end

---@param prefix string
---@param items { [1]: string, [2]: number, [3]: string | table<string, any> }[]
---@param coords vector3
---@param slots number
---@param maxWeight number
---@param instance number | string
---@param model? string | number
---@return string
function exports.ox_inventory:CustomDrop(prefix, items, coords, slots, maxWeight, instance, model) end

---@param playerId number
---@return string
function exports.ox_inventory:CreateDropFromPlayer(playerId) end

---@param playerId number
function exports.ox_inventory:ConfiscateInventory(playerId) end

---@param playerId number
function exports.ox_inventory:ReturnInventory(playerId) end

---@param playerId number
---@param keep string | string[]
function exports.ox_inventory:ClearInventory(playerId, keep) end

---@param inv inventory
---@return number?
function exports.ox_inventory:GetEmptySlot(inv) end

---@param inv inventory
---@param itemName string
---@param metadata? string | table<string, any>
---@return number?
function exports.ox_inventory:GetSlotForItem(inv, itemName, metadata) end

---@param inv inventory
---@param itemName string
---@param metadata? string | table<string, any>
---@param strict? boolean
---@return SlotWithItem?
function exports.ox_inventory:GetSlotWithItem(inv, itemName, metadata, strict) end

---@param inv inventory
---@param itemName string
---@param metadata? string | table<string, any>
---@param strict? boolean
---@return number?
function exports.ox_inventory:GetSlotIdWithItem(inv, itemName, metadata, strict) end

---@param inv inventory
---@param itemName string
---@param metadata? string | table<string, any>
---@param strict? boolean
---@return SlotWithItem[]?
function exports.ox_inventory:GetSlotsWithItem(inv, itemName, metadata, strict) end

---@param inv inventory
---@param itemName string
---@param metadata? string | table<string, any>
---@param strict? boolean
---@return number[]?
function exports.ox_inventory:GetSlotIdsWithItem(inv, itemName, metadata, strict) end

---@param inv inventory
---@param itemName string
---@param metadata? string | table<string, any>
---@param strict? boolean
---@return number
function exports.ox_inventory:GetItemCount(inv, itemName, metadata, strict) end

---@param name string
---@param label string
---@param slots number
---@param maxWeight number
---@param owner? string | number | boolean
---@param groups? table<string, number>
---@param coords? vector3 | table<vector3>
function exports.ox_inventory:RegisterStash(name, label, slots, maxWeight, owner, groups, coords) end

---@param properties TemporaryStashProperties
function exports.ox_inventory:CreateTemporaryStash(properties) end

---@return table<string, OxServerItem>
function exports.ox_inventory:Items() end

---@return OxServerItem?
function exports.ox_inventory:Items(itemName) end

---@param archetype string
---@param data OxShopProperties
function exports.ox_inventory:RegisterShop(archetype, data) end
