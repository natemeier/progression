function onInit()
    onValueChanged();
end

function onValueChanged()
    local current_level = getValue();
    local next_level = current_level + 1;

    -- Don't allow levels above 20
    if next_level > 20 then
        next_level = 20;
    end

    -- Don't allow levels below 1
    if next_level < 1 then
        next_level = 1;
    end

    -- Set expneeded for next level based on current level
    window.expneeded.setValue(experience.level_map[next_level]);
end
