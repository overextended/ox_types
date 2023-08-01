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

---@alias inventory OxInventory | table | string | number

---@class TemporaryStashProperties
---@field label string
---@field slots number
---@field maxWeight number
---@field owner? string|number|boolean
---@field groups? table<string, number>
---@field coords? vector3
---@field items? { [number]: string, [number]: number, [number]: table | string }[]

---@param archetype string
---@param data OxShopProperties
function exports.ox_inventory:RegisterShop(archetype, data) end

---@param inv inventory
---@param owner? string | number
---@return OxInventory?
function exports.ox_inventory:GetInventory(inv, owner) end
