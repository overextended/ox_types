---@meta

---@class ox_property
exports.ox_property = {}

---@class OxPropertyComponent
---@field componentId integer
---@field name string
---@field type 'stash' | 'management' | 'wardrobe' | 'parking'
---@field vehicles? table<'automobile' | 'bicycle' | 'bike' | 'blimp' | 'boat' | 'heli' | 'plane' | 'submarine' | 'quadbike' | 'trailer' | 'train', true>
---@field disableGenerators? true
---@field point? vector3
---@field sphere? vector3
---@field box? vector3
---@field rotation? number
---@field size? vector3
---@field points? vector3[]
---@field thickness? number
---@field spawns? vector4[]
---@field [any] any

---@class OxPropertyVariables
---@field name string
---@field permissions table[]
---@field owner? integer
---@field ownerName? string
---@field group? string
---@field groupName? string
---@field colour? integer

---@class OxPropertyObject : OxPropertyVariables
---@field label string
---@field sprite integer
---@field blip vector2
---@field components OxPropertyComponent[]
