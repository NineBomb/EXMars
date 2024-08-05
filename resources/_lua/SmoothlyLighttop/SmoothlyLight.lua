local l = require("lvgl")
local i = 255
s = l.Object(nil, {
        w = 192,
        h = 490,
        bg_color = 0,
        bg_opa = 0,
        border_width = 0,
        pad_all = 0
    })
M = l.Timer({
    period = 17,
    cb = function(t)
        s:set({ bg_opa = i })
        i = i - 10
        if i < 6 then
            M:pause()
            s:add_flag(l.FLAG.HIDDEN)
        end
    end,
})
function ScreenStateChangedCB(pre, now, reason)
    if pre == "OFF" and now == "ON" then
        i = 255
        s:clear_flag(l.FLAG.HIDDEN)
        M:resume()
    else 
        M:pause()
        s:add_flag(l.FLAG.HIDDEN)
    end
end
