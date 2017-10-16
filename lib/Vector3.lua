local Class = require("lib.Class")

local V = Class:derive("Vector3")

function V:new(x,y, z)
    self.x = x or 0
    self.y = y or 0
    self.z = z or 0
end

--Takes 2 vector3 objects and returns their cross product
--
function V.cross(a, b)
    return V(a.y*b.z - a.z*b.y, a.z*b.x - a.x*b.z, a.x*b.y - a.y*b.x)
end

return V