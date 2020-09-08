local _M = {}
local lrucache = require("resty.lrucache")
-- cache time in seconds
local cachettl = 2
-- we need to initialize the cache on the lua module level so that
-- it can be shared by all the requests served by each worker process:
-- allow up to 20 items in the cache
local c, err = lrucache.new(20)  
if not c then
    return error("failed to create the cache: " .. (err or "unknown"))
end

function _M.go()
  local osclock = c:get("osclock")
  if osclock == nil then
    osclock = tostring(os.clock())
    c:set("osclock", osclock, cachettl)
  end
  return osclock
end

return _M