local use_static = settings.startup['F077SSF-use-static'].value
local val_static = settings.startup['F077SSF-val-static'].value

local use_multiplier = settings.startup['F077SSF-use-multiplier'].value
local val_multiplier = settings.startup['F077SSF-val-multiplier'].value

for __, item in pairs(data.raw.item) do
	--
	if item.stack_size and item.stack_size > 1 then
		--
		if use_static then item.stack_size = val_static end
		--
		if use_multiplier then item.stack_size = item.stack_size * val_multiplier end
	end
end
