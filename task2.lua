function Countword(sentence, needle)
    local count = 0
    for word in string.gmatch(sentence, "%a+") do
        if word == needle then
            count = count + 1
        end
    end
    return count
end

count = Countword('ton tonton tond ton thon', "ton")
print(count)