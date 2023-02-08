metatable = {}
function metatable.__add(t1, t2)
    local t3 = {}
    t3.x = t1.x + t2.x
    t3.y = t1.y + t2.y
    return t3
end
function metatable.__sub(t1, t2)
    local t3 = {}
    t3.x = t1.x - t2.x
    t3.y = t1.y - t2.y
    return t3
end


local t1 = {x = 1, y = 2}
local t2 = {x = 3, y = 4}
setmetatable(t1, metatable)
setmetatable(t2, metatable)
local t3 = t1 + t2
print(t3.x, t3.y)
