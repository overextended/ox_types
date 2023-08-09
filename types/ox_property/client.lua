---@meta

---@param componentType string
---@param action fun(component: { property: string, componentId: integer, name: string, type: string }): data: table?, actionType: 'event' | 'serverEvent' | 'listMenu' | 'contextMenu' | nil
---@param actionPermissions string[]
function exports.ox_property:registerComponentAction(componentType, action, actionPermissions) end

---@param menu string | string[]
---@param menuType string
function exports.ox_property:registerMenu(menu, menuType) end

---@return { property: string, componentId: integer, name: string, type: string }? component
function exports.ox_property:getCurrentComponent() end

---@param property? string
---@param componentId? integer
---@return false | OxPropertyObject | OxPropertyComponent data
function exports.ox_property:getPropertyData(property, componentId) end

---@param property? string
---@param componentId? integer
---@return false | integer response
function exports.ox_property:isPermitted(property, componentId) end

---@param data { property: string, componentId: integer }
---@return boolean response
function exports.ox_property:checkCurrentZone(data) end
