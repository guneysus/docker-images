local ok, newtab = pcall(require, "table.new")
local fs = newtab(0, 13);


-- Lua implementation of PHP scandir function
local function scandir(directory)

    local i, t, popen = 0, {}, io.popen
    local pfile = popen('ls -a "'..directory..'"')
    for filename in pfile:lines() do
        i = i + 1
        t[i] = filename
    end
    pfile:close()
    return t
end

local function fake()
  local t
  t = {"foo", "bar", "baz"}
  return t
  -- body
end

fs.fake = fake
fs.scandir = scandir

return fs
