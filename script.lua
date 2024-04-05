-- Lua
local http = require('socket.http')

local url = "https://github.com/mikolaj-t/zip/archive/refs/heads/main.zip"
local path = "./file.zip"

-- Download file
local response_body, status_code, headers, status_text = http.request(url)

if status_code ~= 200 then
    print("Failed to download file: " .. status_text)
    os.exit(1)
end

-- Save file
local file = io.open(path, 'w')
file:write(response_body)
file:close()

-- Unpack zip
os.execute("7za x " .. path .. " -o ~/sus")