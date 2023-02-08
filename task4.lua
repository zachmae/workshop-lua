function CalculatorV2(...)
    local args = {...}
    local sum = 0
    for i = 1, #args do
        -- Convert string to number
        if not tonumber(args[i]) then
            return "Invalid Parameter: " .. args[i] .. " is not a number"
        end
        sum = sum + tonumber(args[i])
    end
    return sum
end

-- Call the function
print(CalculatorV2("1", "2", "3", '4', "5"))
print(CalculatorV2("1", "2", "3", "4", "a"))