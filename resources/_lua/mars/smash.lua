local lvgl = require("lvgl")
local dataman = require("dataman")
local DEBUG_ENABLE = false
local STATE_POSITION_UP = 1
local STATE_POSITION_MID = 2
local STATE_POSITION_BOTTOM = 3
local img_index = 0
local function createWatchface(parent)
    local t = {}
    t.Mars = lvgl.Image(n,{x = 0, y = 0,src=SCRIPT_PATH .. "Mars_0.rle"})
    return t
end
local function uiCreate()
    local watchface = createWatchface(root)
    local function screenONCb()
        if orderedTimer then
            orderedTimer:resume()
            img_index = 0
        else
            orderedTimer = lvgl.Timer {
                period = 33,
                cb = function(t)
                    watchface.Mars:set({ src = SCRIPT_PATH .. "Mars_" .. img_index .. ".rle" })
                    img_index = img_index + 1
                    if img_index > 46 then
                    orderedTimer:pause()
                  end
                end
            }
        end
    end
    local function screenOFFCb() 
    end
     screenONCb()
    return screenONCb, screenOFFCb
end
local on, off = uiCreate()
function ScreenStateChangedCB(pre, now, reason)
    if pre ~="ON" and now == "ON" then
        on()
    elseif pre == "ON" and now ~= "ON" then
        off()
    end
end
