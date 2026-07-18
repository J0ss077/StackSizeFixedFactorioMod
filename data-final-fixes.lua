--// settings

local use_static = settings.startup['F077SSF-use-static'].value --- @as boolean

local val_static = settings.startup['F077SSF-val-static'].value --- @as integer

local use_multiplier = settings.startup['F077SSF-use-multiplier'].value --- @as boolean

local val_multiplier = settings.startup['F077SSF-val-multiplier'].value --- @as integer

local force_stacking = settings.startup['F077SSF-force-stacking'].value --- @as boolean

--// utils

--- @param array table
---
--- @param value any
---
--- @return int?
---
local function array_find(array, value)
    ---
    for index, element in ipairs(array) do if element == value then return index end end
    ---
end

--// core-logic

for __, item in pairs(data.raw.item) do
    --
    if item.stack_size and item.stack_size > 0 then
        --
        if item.flags then

            local index = array_find(item.flags, "not-stackable")

            if index then
                --
                if force_stacking then table.remove(item.flags, index)
                --
                else goto pass end
            end
        end

        if use_static then item.stack_size = val_static end -- set static value first

        if use_multiplier then item.stack_size = item.stack_size * val_multiplier end

        ::pass::
    end
end
