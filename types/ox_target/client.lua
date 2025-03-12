---@meta

---@class ox_target
exports.ox_target = {}

---@class OxTargetOption
---@field label string
---@field name? string
---@field icon? string
---@field iconColor? string
---@field distance? number
---@field groups? string | string[] | table<string, number>
---@field items? string | string[] | table<string, number>
---@field anyItem? boolean
---@field canInteract? fun(entity?: number, distance: number, coords: vector3, name?: string, bone?: number): boolean?
---@field onSelect? fun(data: self | number)
---@field export? string
---@field event? string
---@field serverEvent? string
---@field command? string
---@field openMenu? string
---@field menuName? string
---@field [string] any

---@class OxTargetEntity : OxTargetOption
---@field bones? string | string[]
---@field offset? vector3
---@field offsetAbsolute? vector3
---@field offsetSize? number

---@class OxTargetSphereZone
---@field coords vector3
---@field radius? number
---@field debug? boolean
---@field drawSprite? boolean
---@field options OxTargetOption[]

---@class OxTargetBoxZone
---@field coords vector3
---@field size? vector3
---@field rotation? number
---@field debug? boolean
---@field drawSprite? boolean
---@field options OxTargetOption[]

---@class OxTargetPolyZone
---@field points vector3[]
---@field thickness? number
---@field debug? boolean
---@field drawSprite? boolean
---@field options OxTargetOption[]

---@param data OxTargetSphereZone
---@return number
function exports.ox_target:addSphereZone(data) end

---@param data OxTargetBoxZone
---@return number
function exports.ox_target:addBoxZone(data) end

---@param data OxTargetPolyZone
---@return number
function exports.ox_target:addPolyZone(data) end

---@param zone number | string
---@param suppressWarning? boolean
function exports.ox_target:removeZone(zone, suppressWarning) end

---@param options OxTargetEntity | OxTargetEntity[]
function exports.ox_target:addGlobalPed(options) end

---@param options OxTargetEntity | OxTargetEntity[]
function exports.ox_target:addGlobalVehicle(options) end

---@param options OxTargetEntity | OxTargetEntity[]
function exports.ox_target:addGlobalObject(options) end

---@param options OxTargetEntity | OxTargetEntity[]
function exports.ox_target:addGlobalPlayer(options) end

---@param options string | string[]
function exports.ox_target:removeGlobalPed(options) end

---@param options string | string[]
function exports.ox_target:removeGlobalVehicle(options) end

---@param options string | string[]
function exports.ox_target:removeGlobalObject(options) end

---@param options string | string[]
function exports.ox_target:removeGlobalPlayer(options) end

---@param options OxTargetOption | OxTargetOption[]
function exports.ox_target:addGlobalOption(options) end

---@param options string | string[]
function exports.ox_target:removeGlobalOption(options) end

---@param models (number | string) | (number | string)[]
---@param options OxTargetEntity | OxTargetEntity[]
function exports.ox_target:addModel(models, options) end

---@param models (number | string) | (number | string)[]
---@param options? string | string[]
function exports.ox_target:removeModel(models, options) end

---@param netIds number | number[]
---@param options OxTargetEntity | OxTargetEntity[]
function exports.ox_target:addEntity(netIds, options) end

---@param netIds number | number[]
---@param options? string | string[]
function exports.ox_target:removeEntity(netIds, options) end

---@param entityIds number | number[]
---@param options OxTargetEntity | OxTargetEntity[]
function exports.ox_target:addLocalEntity(entityIds, options) end

---@param entityIds number | number[]
---@param options? string | string[]
function exports.ox_target:removeLocalEntity(entityIds, options) end

---@param state boolean
function exports.ox_target:disableTargeting(state) end
