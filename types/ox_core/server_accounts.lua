---@meta

---@alias CommonMessage
---| "amount_not_number"
---| "no_balance"
---| "no_charId"
---| "insufficient_funds"
---| "no_access"
---| "something_went_wrong"
---| "update_account_error"
---| "no_permission"
---| "no_target_account"

---@class CommonResult
---@field success boolean
---@field message CommonMessage

---@class OxAccountServer
---@field public accountId number
account = {}

---**`server`**
---@param key string | string[]
---@return any
function account.get(key) end

---**`server`**
---@param data { amount: number, message?: string }
---@return CommonResult
function account.addBalance(data) end

---**`server`**
---@param data { amount: number, message?: string, overdraw?: boolean }
---@return CommonResult
function account.removeBalance(data) end

---**`server`**
---@param data {
---   toId: number,
---   amount: number,
---   message?: string,
---   overdraw?: boolean,
---   note?: string,
---   actorId?: number}
---@return CommonResult
function account.transferBalance(data) end

---**`server`**
---@param playerId number
---@param amount number
---@param message? string
---@param note? string
---@return CommonResult
function account.depositMoney(playerId, amount, message, note) end

---**`server`**
---@param playerId number
---@param amount number
---@param message? string
---@param note? string
---@return CommonResult
function account.withdrawMoney(playerId, amount, message, note) end

---**`server`**
---@return CommonResult
function account.deleteAccount() end

---**`server`**
---@param id number | string
---@return string
function account.getCharacterRole(id) end

---**`server`**
---@param id number | string
---@param role? string
---@return CommonResult
function account.setCharacterRole(id, role) end

---**`server`**
---@param playerId number
---@param permission string
---@return boolean
function account.playerHasPermission(playerId, permission) end

---**`server`**
---@return CommonResult
function account.setShared() end

---**`server`**
---@param invoice {
---   actorId?: number,
---   toAccount: number,
---   amount: number,
---   message: string,
---   dueDate: string }
---@return CommonResult
function account.createInvoice(invoice) end
