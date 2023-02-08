function Pet(name, status)
    name = name or "Kikki"
    status = status or "Hungry"
    local self = {
        name = name,
        status = status,
        feed = function(self)
            if self.status == "Hungry" then
                self.status = "Not Hungry"
                print(self.name .. " has been fed")
            else
                print("Mais batard j'ai pas faim !")
            end
        end,
        check = function(self)
            print(self.name .. " is " .. self.status)
        end

    }
    return self
end

function Dog(name, status, breed)
    name = name or "Meimei"
    local self = Pet(name, status)
    self.breed = breed or "Australian Shepherd"
    self.loyalty = 0
    self.isLoyal = function(self)
        if self.loyalty >= 10 then
            print("is loyal ")
        else
            print("is not loyal ")
        end
    end
    self.feed = function(self)
        self.loyalty = self.loyalty + 5
        print(self.name .. " has been fed")
    end
    self.bark = function(self)
        print("Woof Woof")
    end
    self.check = function(self)
        print(self.name .. " is " .. self.status)
        print(self.name .. " is a " .. self.breed)
        self.isLoyal(self)
    end
    return self
end

local dog = Dog()
dog.isLoyal(dog)
dog.feed(dog)
dog.feed(dog)
dog.isLoyal(dog)
dog.check(dog)
dog.bark(dog)