local mainuri="https://raw.githubusercontent.com/Kitzukii/aeslua/refs/heads/main/data"
local files={
    {"./","/aeslua.lua"},
    {"./aeslua","/aeslua/aes.lua"},
    {"./aeslua","/aeslua/buffer.lua"},
    {"./aeslua","/aeslua/ciphermode.lua"},
    {"./aeslua","/aeslua/gf.lua"},
    {"./aeslua","/aeslua/util.lua"},
}

local index=1
for _,file in ipairs(files) do
    local parentdir=file[1]
    local filename=file[2]
    print(tostring(index)..": "..filename)
    local content=http.get(mainuri..filename)
    local ff=fs.open(parentdir..filename,"w")
    ff.write(content);ff.close()
    index=index+1
end
print("Finished installing.")