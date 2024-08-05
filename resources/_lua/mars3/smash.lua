local lvgl = require("lvgl")
local img_index = 0
scr = lvgl.Image(nil, {
        x = 0, 
        y = 0,
        src=SCRIPT_PATH .. "Mars_46.rle"
    })
    orderedTimer = lvgl.Timer({
        period = 33,
        cb = function(t)
            scr:set({ src = SCRIPT_PATH .. "Mars_" .. img_index .. ".rle" })
            img_index = img_index + 1
            if img_index > 46 then
                img_index = 0
                orderedTimer:pause()
            end
        end,
    })
    function ScreenStateChangedCB(pre, now, reason)
        if pre ~= "ON" and now == "ON" then
            img_index = 0
            orderedTimer:resume()
            
        end
    end
    return
