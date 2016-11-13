local ok, newtab = pcall(require, "table.new");
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


local function contents(directory)

    local i, t, popen = 0, {}, io.popen
    local pfile = popen('ls -ApX "'..directory..'"')
    for filename in pfile:lines() do
        i = i + 1
        t[i] = filename
    end
    pfile:close()
    return t
end


local function fake()
  local t
  t = {"foo.txt", "bar.txt", "baz.txt"}
  return t
  -- body
end


local function posts(directory)


    local i, t, popen = 0, {}, io.popen
    local pfile = popen('ls -a "'..directory..'"')

    for filename in pfile:lines() do
        if string.find(filename, "%.txt$") then
          i = i + 1
          t[i] = filename
        end
    end
    pfile:close()
    return t
end


fs.scandir = scandir;
fs.posts = posts
fs.contents = contents

return fs
