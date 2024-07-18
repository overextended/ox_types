---@meta

---@class OxCommon
---@field GetTopVehicleStats (fun(): TopVehicleStats) | (fun(category: VehicleCategories): VehicleStats)
---@field GetVehicleData (fun(): table<string, VehicleData>) | (fun(model: string): VehicleData) | (fun(models: string[]): table<string, VehicleData>)
Ox = {}

---@alias VehicleCategories 'air' | 'land' | 'sea';
---@alias TopVehicleStats table<VehicleCategories, VehicleStats>

---@class VehicleStats
---@field acceleration number
---@field braking number
---@field handling number
---@field speed number
---@field traction number

---@enum VehicleClasses
local VehicleClasses = {
    COMPACT = 0,
    SEDAN = 1,
    SUV = 2,
    COUPE = 3,
    MUSCLE = 4,
    SPORTS_CLASSIC = 5,
    SPORTS = 6,
    SUPER = 7,
    MOTORCYCLE = 8,
    OFFROAD = 9,
    INDUSTRIAL = 10,
    UTILITY = 11,
    VANS = 12,
    CYCLES = 13,
    BOATS = 14,
    HELICOPTERS = 15,
    PLANES = 16,
    SERVICE = 17,
    EMERGENCY = 18,
    MILITARY = 19,
    COMMERCIAL = 20,
    TRAINS = 21,
    OPEN_WHEEL = 22,
}

---@alias VehicleTypes
---| 'amphibious_automobile'
---| 'amphibious_quadbike'
---| 'automobile'
---| 'bicycle'
---| 'bike'
---| 'blimp'
---| 'boat'
---| 'heli'
---| 'plane'
---| 'quadbike'
---| 'submarine'
---| 'submarinecar'
---| 'trailer'
---| 'train';

---@class VehicleData : VehicleStats
---@field class VehicleClasses;
---@field doors number;
---@field make string;
---@field name string;
---@field price number;
---@field seats number;
---@field type VehicleTypes;
---@field weapons? true;

---@class OxStatus
---@field name string
---@field default number
---@field onTick number

---@class OxAccount
---@field id number
---@field balance number
---@field isDefault boolean
---@field label? string
---@field owner? number
---@field group? string
---@field type 'personal' | 'shared' | 'group'
---@field role 'contributor' | 'manager' | 'owner'

---@class OxGroup
---@field name string
---@field label string
---@field grades string[]
---@field principal string

---@class OxPlayer
---@field [string] any
---@field userId number
---@field charId? number
---@field stateId? string
---@field get fun(key: string): any
---@field getState fun(): StateBag
---@field getGroup (fun(filter: string): number) | (fun(filter: string[]): string, number) | (fun(filter: table<string, number>): table<string, number>)
---@field getGroups fun(): table<string, number>
---@field getCoords fun(): vector3
---@field getStatus fun(name: string): number
---@field setStatus fun(name: string, value: number): boolean
---@field addStatus fun(name: string, value: number): boolean
---@field removeStatus fun(name: string, value: number): boolean

---@class Character
---@field charId number
---@field stateId string
---@field firstName string
---@field lastName string
---@field x? number
---@field y? number
---@field z? number
---@field heading? number
---@field lastPlayed? string
---@field health? number
---@field armour? number
---@field isNew? boolean

---@class NewCharacter
---@field firstName string
---@field lastName string
---@field gender string
---@field date number
