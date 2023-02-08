# Workshop-Lua

## Install Lua:
```
------- On Debian, Ubuntu & Mint ------------------- 
$ sudo apt install lua5.3

------- On RHEL, CentOS, Rocky & AlmaLinux --------- 
# yum install epel-release
# yum install lua

------- On Fedora Linux ---------------------------- 
# dnf install lua

------ Other ---------------------------------------
(https://www.lua.org/download.html)
```

## PRESENCES:

Fork the repository (set yourself as the owner) and commit with your name to be marked present.
example:
[PRESENCE] : Bill ON


## Launch lua:
```
lua file.lua
```

# Exercice 1 : Syntax

Print every number between 1 and 100 as follows:

- For every multiple of 3 print "Three".
- For every multiple of 5 print "Five".
- And for every multiple of both 3 and 5 print "ThreeFive"

The output should be identical to the contents of [this file](./1.txt):


# Exercice 2 : List

Write a "Countword" function whose objective is to count the number of times a word appears in a sentence.
You will first need to separate the sentence into smaller words you can compare the target to.
This function takes 2 parameters :

    - "sentence" -> the sentence you will search through
    - "target" -> the word you look for in the sentence

You might find help here:
(https://www.lua.org/pil/2.5.html)

Example:

```lua
Countword('ton tonton tond ton thon', "ton") -> ton appears 2 times
```


# Exercice 3 : Fluctuating number of arguments

Write a function that takes n parameters as Strings and add them together.

Examples:

```lua
Calculator("4", '5') -> 9
Calculator('3', '4', '3', '5', '7', '8', '1') -> 31
```


# Exercice 4 : Error handling

Modify your Calculator function to now handle invalid parameters.

Example:

```lua
CalculatorV2("4", '5', 'a') -> "Invalid Parameter: a"
```


# Exercice 5 : File Manipulation

Retrieve the contents of the file [5.txt](./5.txt) and parse through it to only display lines with an even number of characters.

The output should be as follows:

```
10
11
My name is Yoshikage Kira.
I work as an employee for the Kame Yu department stores, and I get home every day by 8 PM at the latest.
I don't smoke, but I occasionally drink.
I'm in bed by 11 PM, and make sure I get eight hours of sleep, no matter what.
I was told there were no issues at my last check-up.
I take care not to trouble myself with any enemies, like winning and losing, that would cause me to lose sleep at night.
```


# Exercice 6 : OOP basics

Create a Pet function returning a map with the properties "name" and "status".

If no parameter is provided, the default values for __"name"__ and __"status"__ will be __"Kikki"__ and __"Hungry"__ respectively.


# Exercice 7 : Methods

Add 2 methods to your Pet map:
    - check: display the pet's name and status
    - feed: set the pet's status to "Fed" 

Example:

```lua
local animal = Pet("Minou", "on fire")

animal.check(animal) -> "Minou is on fire"
animal.feed(animal) -> "Minou has been fed"
```


# Exercice 8 : Inheritance

Create a Dog map derived from your Pet map which takes 3 parameters : name, status and breed.

Add 2 new properties :

    - breed (_"Australian Shepherd"_ by default)
    - loyalty (set to 0)

Over-ride the default name to now be __"Meimei"__.
Over-ride the FEED method to now increase the LOYALTY by 5

Add 2 new methods:

    - isLoyal -> display "is loyal" if loyalty is supertior to 10
    - bark -> display "Woof Woof"

Example:

```lua
    local dog = Dog()
    dog.isLoyal(dog) -> "Meimei is NOT loyal"
    dog.feed(dog) -> "Meimei has been fed"
    dog.feed(dog) -> "Meimei has been fed"
    dog.isLoyal(dog) -> "Meimei is loyal"
    dog.check(dog) -> "Meimei is a Fed Australian Shepherd"
```


# Exercice 9 : metatables

Create a metatable to execute additions and substractions between 2 maps.

_This example is lackluster by choice_

Example:

```lua
local t1 = {x = 5, y = 10}
local t2 = {x = 15, y = 15}

local t3 = t1 + t2

-- t3.x should be equal to 20 and t3.y should be equal to 25
```


# BONUS :

Write Unit Tests for ex 1, 4, 8, 9
