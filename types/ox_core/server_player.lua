---@meta

---@class CreateVehicleData
---@field model string
---@field owner? number
---@field group? string
---@field stored? string
---@field properties? VehicleProperties

---@class OxPlayerServer : OxPlayer
---@field public identifier string
---@field public ped number
---@field public source number
---@field public username string
player = {}

---**`server`**
---@param licenseName string
---@return boolean success
function player.addLicense(licenseName) end

---**`server`**
---@param statusName string
---@param value number
---@return boolean success
function player.addStatus(statusName, value) end

---**`server`**
---@param data { firstName: string, lastName: string, gender: string, date: number }
---@return number characterIndex
function player.createCharacter(data) end

---**`server`**
---@param charId number
---@return boolean success
function player.deleteCharacter(charId) end

---**`server`**
---@param eventName string
---@param ... any
function player.emit(eventName, ...) end

---**`server`**
---@param key string
---@return any
function player.get(key) end

---**`server`**
---@return OxAccount
function player.getAccount() end

---**`server`**
---@return vector3
function player.getCoords() end

---**`server`**
---@param filter string | string[] | table<string, number>
---@return number|string groupOrName
---@return number? grade
function player.getGroup(filter) end

---**`server`**
---@param type string
---@return string? groupName
---@return number? grade
function player.getGroupByType(type) end

---**`server`**
---@return table<string, number>
function player.getGroups() end

---**`server`**
---@param licenseName string
---@return table
function player.getLicense(licenseName) end

---**`server`**
---@return table<string, table>
function player.getLicenses() end

---**`server`**
---@param statusName string
---@return number
function player.getStatus(statusName) end

---**`server`**
---@return table<string, number>
function player.getStatuses() end

---**`server`**
---@return StateBag
function player.getState() end

---**`server`**
---@param permission string
---@return boolean
function player.hasPermission(permission) end

---**`server`**
---@param save boolean?   # defaults to true
---@param dropped boolean?
function player.logout(save, dropped) end

---**`server`**
---@param invoiceId number
---@return table
function player.payInvoice(invoiceId) end

---**`server`**
---@param licenseName string
---@return boolean success
function player.removeLicense(licenseName) end

---**`server`**
---@param statusName string
---@param value number
---@return boolean success
function player.removeStatus(statusName, value) end

---**`server`**
function player.save() end

---**`server`**
---@param key string
---@param value any
---@param replicated boolean?
function player.set(key, value, replicated) end

---**`server`**
---@param data number | { firstName: string, lastName: string, gender: string, date: number }
---@return table
function player.setActiveCharacter(data) end

---**`server`**
---@param groupName string?
---@param temporary boolean?
---@return boolean success
function player.setActiveGroup(groupName, temporary) end

---**`server`**
---@param groupName string
---@param grade number?
---@return boolean success
function player.setGroup(groupName, grade) end

---**`server`**
---@param statusName string
---@param value number
---@return boolean success
function player.setStatus(statusName, value) end

---**`server`**
---@param licenseName string
---@param key string
---@param val any
---@return boolean success
function player.updateLicense(licenseName, key, val) end
