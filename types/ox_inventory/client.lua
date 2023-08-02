---@meta

---@param type? 'player'|'shop'|'stash'|'crafting'|'container'|'drop'|'glovebox'|'trunk'|'dumpster'
---@param data? number|string|{type?: string, id?:number, owner:string|number}
function exports.ox_inventory:openInventory(type, data) end