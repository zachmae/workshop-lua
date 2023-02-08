function Pet(name, status)
    name = name or "Kikki"
    status = status or "Hungry"
    local self = {
        name = name,
        status = status,
        feed = function()
            if self.status == "Hungry" then
                self.status = "Not Hungry"
            else
                print("Mais batard j'ai pas faim !")
            end
        end,
        check = function()
            print(self.name .. " is " .. self.status)
        end

    }
    return self
end