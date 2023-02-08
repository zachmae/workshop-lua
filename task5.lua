arguments = {...}
buffer = io.open(arguments[1], "r")
if not buffer then
    print("File not found")
    return
end
-- Read the file line by line
for line in buffer:lines() do
    len = string.len(line)
    if len % 2 == 0 then
        print(line)
    end
end