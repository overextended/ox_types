---@meta

---@class OxClient : OxShared
---@field CallPlayerMethod fun(method: string, ...): any
---@field GetPlayerData fun(): table?
---@field PlayerExports fun(): table

---@class OxPlayerClient : OxPlayerProperties
---@field get fun(key: string): any
---@field getStatus fun(name: string): number
---@field setStatus fun(name: string, value: number): boolean?
---@field addStatus fun(name: string, value: number): boolean?
---@field removeStatus fun(name: string, value: number): boolean?
---@field groups table<string, number>
player = {}
