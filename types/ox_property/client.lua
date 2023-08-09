---@meta

---@param componentType string
---@param action function
---@param actionPermissions string[]
function exports.ox_property:registerComponentAction(componentType, action, actionPermissions) end

---@param menu string | string[]
---@param menuType string
function exports.ox_property:registerMenu(menu, menuType) end

---@return { property: string, componentId: integer, name: string, type: string }
function exports.ox_property:getCurrentComponent() end

---@param property? string
---@param componentId? integer
---@return boolean | OxPropertyObject | OxPropertyComponent | nil
function exports.ox_property:getPropertyData(property, componentId) end

---@param property? string
---@param componentId? integer
---@return false | integer
function exports.ox_property:isPermitted(property, componentId) end

---@param data { property: string, componentId: integer }
---@return boolean
function exports.ox_property:checkCurrentZone(data) end
