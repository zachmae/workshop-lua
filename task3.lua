function Calculator(...)
    local args = {...}
    local sum = 0
    for i = 1, #args do
        -- Convert string to number
        args[i] = tonumber(args[i])
        sum = sum + args[i]
    end
    return sum
end

-- Call the function
print(Calculator("1", "2", "3", "4", "5"))