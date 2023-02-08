function Pet(name, status)
    name = name or "Kikki"
    status = status or "Hungry"
    local self = {
        name = name,
        status = status,
    }
    return self
end
