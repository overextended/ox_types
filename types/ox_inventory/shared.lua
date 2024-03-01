---@meta

---@class ox_inventory
exports.ox_inventory = {}

---@alias metadata string | table<string, any>

---@class OxShopProperties
---@field name string
---@field label? string
---@field blip? { id: number, colour: number, scale: number }
---@field inventory? OxShopItem[]
---@field locations? vector3[]
---@field targets? { loc: vector3, length: number, width: number, heading: number, minZ: number, maxZ: number, distance: number, debug?: boolean, drawSprite?: boolean }[]
---@field groups? string | string[] | table<string, number>
---@field model? number[]

---@class OxShop : OxShopProperties
---@field id string
---@field coords vector3
---@field items OxShopItem[]?
---@field slots number
---@field [string] any

---@class OxShopItem
---@field name string
---@field price number
---@field metadata? table<string, any>
---@field license? string
---@field currency? string
---@field grade? number | number[]
---@field count? number

---@class OxStash
---@field name string
---@field label string
---@field owner? boolean | string | number
---@field slots number
---@field weight number
---@field groups? string | string[] | table<string, number>
---@field blip? { id: number, colour: number, scale: number }
---@field coords? vector3
---@field target? { loc: vector3, length: number, width: number, heading: number, minZ: number, maxZ: number, distance: number, debug?: boolean, drawSprite?: boolean }

---@class OxItem
---@field name string
---@field label string
---@field weight number Weight of the item in grams.
---@field description? string Text to display in the item tooltip.
---@field consume? number Number of items to remove on use.<br>Using a value under 1 will remove durability, if the item cannot be stacked.
---@field degrade? number Amount of time for the item durability to degrade to 0, in minutes.
---@field decay? boolean Remove the item at 0 durability. Not triggered immediately.
---@field stack? boolean Set to false to prevent the item from stacking.
---@field close? boolean Set to false to keep the inventory open on item use.
---@field allowArmed? boolean Set to true to allow an item to be used while a weapon is equipped.
---@field buttons? { label: string, group: string, action: fun(slot: number) }[] Add interactions when right-clicking an item.
---@field [string] any

---@class SlotWithItem
---@field name string
---@field label string
---@field weight number
---@field slot number
---@field count number
---@field metadata { [string]: any }
---@field description? string
---@field stack? boolean
---@field close? boolean
---@field [string] any

---@class OxClientProps
---@field status? table<string, number>
---@field anim? string | { dict?: string, clip: string, flag?: number, blendIn?: number, blendOut?: number, duration?: number, playbackRate?: number, lockX?: boolean, lockY?: boolean, lockZ?: boolean, scenario?: string, playEnter?: boolean }
---@field prop? string | ProgressPropProps
---@field usetime? number
---@field label? string
---@field useWhileDead? boolean
---@field canCancel? boolean
---@field disable? { move?: boolean, car?: boolean, combat?: boolean, mouse?: boolean }
---@field export? string
---@field component? number[]
---@field [string] any

---@class OxClientItem : OxItem
---@field count number
---@field client? OxClientProps

---@class OxServerItem : OxItem
---@field server? { export: string, [string]: any }

---@class OxWeapon : OxItem
---@field hash number
---@field durability number
---@field weapon? true
---@field ammo? true
---@field component? true
---@field throwable? boolean
---@field model? string
