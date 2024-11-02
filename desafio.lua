--[[

Nome da criatura
Descrição
Som que faz
Atributos
    Ataque
    Defesa
    Vitalidade
    Velocidade
    Inteligencia
Habilidades
    Furtividade
    Explosao

==================================================
/
/  CREEPER
/  Um monstro muito sagaz que explode na sua cara
/
/  Som: Tssssssssss
/
/  Atributos:
/    Ataque: ########00
/    Defesa: ###0000000
/    ...
/
===================================================

]]

-- Habilitar UTF-8 no terminal
-- os.execute("chcp 850")

-- Criatura
local monsterName = "CREEPER"
local description = "Um monstro furtivo com um temperamento explosivo."
local emoji = "✨"
local sound = "Tssssss"
local favouriteTime = "Noturno"
local item = "Pólvora"

-- Atributos
local attackAttribute = 10
local defenseAttribute = 1
local lifeAttribute = 10
local speedAttribute = 7
local inteligenceAttribute = 2

-- Habilidades
local abilityA = "FURIVIDADE"
local abilityB = "EXPLOSÃO"
local function run(monsterName, lifeAttribute)
    if monsterName == "CREEPER" and (lifeAttribute < 4) then
        return monsterName .. " is running!"
    else
        return monsterName .. " keep fighting!"
    end
end

-- Função que recebe um atributo e nos retorna uma barra de progresso em string
local function getProgressBar(attribute)
    local fullChar = "⬜"
    local emptyChar = "⬛"
    local result = ""

    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end

    return result
end

-- Ações
local function castAbility(monsterName, ability)
    local action = monsterName .. " is casting " .. ability
    return action
end

local function attack(monsterName)
    return monsterName .. " is Attacking!"
end

-- Cartão
print("==================================================")
print("| ")
print("| " .. monsterName)
print("| " .. description)
print("| ")
print("| Item: " .. item)
print("| Som: " .. sound)
print("| Emoji Favorito: " .. emoji)
print("| Horário Favorito: " .. favouriteTime)
print("| ")
print("| Atributos")
print("|     Ataque:       " .. getProgressBar(attackAttribute))
print("|     Defesa:       " .. getProgressBar(defenseAttribute))
print("|     Vitalidade:   " .. getProgressBar(lifeAttribute))
print("|     Velocidade:   " .. getProgressBar(speedAttribute))
print("|     Inteligência: " .. getProgressBar(inteligenceAttribute))
print("| ")
print("| Habilidades")
print("|      Furtividade")
print("|      Explosão")
print("|      Fugir(Run)")
print("| ")
print("==================================================")

-- Ações
print("| " .. castAbility(monsterName, abilityA))
print("| " .. castAbility(monsterName, abilityB))
print("| " .. attack(monsterName))
print("| " .. run(monsterName, lifeAttribute))

lifeAttribute = 1

print("| " .. run(monsterName, lifeAttribute))