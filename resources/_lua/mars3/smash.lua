local l = require("lvgl")
local i = 0
C = l.Image(nil, {
        x = 0, 
        y = 0,
        src=SCRIPT_PATH .. "Mars_46.rle"
    })
M = l.Timer({
    period = 33,
    cb = function(t)
        C:set({ src = SCRIPT_PATH .. "Mars_" .. i .. ".rle" })
        i = i + 1
        if i > 46 then
            i = 0
            M:pause()
        end
    end
})
function ScreenStateChangedCB(pre, now, reason)
        if pre ~= "ON" and now == "ON" then
            i = 0
            M:resume() 
        end
        if now == "IDLE" then
            M:pause()
            C:set { src = SCRIPT_PATH .. "Mars_0.rle" }
        end
end 