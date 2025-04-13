-- Script para BLUE Lock - Concede 100 giros da sorte
-- OpenSource - Certifique-se de seguir as políticas da Roblox ao usar este script

-- Inicialização de variáveis
local player = game.Players.LocalPlayer
local spinsAwarded = 100 -- Número de giros a serem concedidos

-- Função para conceder os giros
local function grantSpins(player, spins)
    -- Verifica se o jogador tem um armazenamento de giros
    if not player:FindFirstChild("Spins") then
        -- Cria um armazenamento de giros para o jogador, caso não exista
        local spinsFolder = Instance.new("IntValue")
        spinsFolder.Name = "Spins"
        spinsFolder.Value = 0
        spinsFolder.Parent = player
    end

    -- Incrementa o número de giros
    player.Spins.Value = player.Spins.Value + spins
    print(player.Name .. " recebeu " .. spins .. " giros da sorte!")
end

-- Evento ao jogador entrar no jogo
game.Players.PlayerAdded:Connect(function(newPlayer)
    -- Concede os giros ao jogador que acabou de entrar
    grantSpins(newPlayer, spinsAwarded)
end)

-- Concede giros ao jogador atual (se necessário para testes locais)
grantSpins(player, spinsAwarded)
