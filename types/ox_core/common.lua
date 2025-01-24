---@meta

---@alias OxGroupPermissions table<string, table<string, boolean>>

---@class OxCommon
Ox = {}

---**`common`**
---@param groupName string
---@return OxGroupPermissions
function Ox.GetGroupPermissions(groupName) end

---**`common`**
---@param category? string
---@return VehicleStats | table<string, VehicleStats>
function Ox.GetTopVehicleStats(category) end

---**`common`**
---@param filter? string | string[]
---@return table<string, VehicleData> | VehicleData
function Ox.GetVehicleData(filter) end

---**`common`**
---@param modelName string
---@return string
function Ox.GetVehicleNetworkType(modelName) end

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

---@alias OxAccountRole  'viewer' | 'contributor' | 'manager' | 'owner'

---@class OxAccount
---@field id number
---@field balance number
---@field isDefault boolean
---@field label? string
---@field owner? number
---@field group? string
---@field type 'personal' | 'shared' | 'group'

---@class OxGroup
---@field name string
---@field label string
---@field grades {label: string, accountRole: OxAccountRole}[]
---@field type string?
---@field colour number?
---@field hasAccount boolean

---@class OxPlayer
---@field public userId number
---@field public charId number?
---@field public stateId string?

---@class OxLicense
---@field name string?
---@field label string?
